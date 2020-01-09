package profile.Admin.Admin;

import Controller.AdminDAOImp;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/DeleteAdminServlet")
public class DeleteAdminServlet extends HttpServlet {
    private AdminDAOImp adminDAOImp = new AdminDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminDeleteId = request.getParameter("adminDeleteId");

        if (adminDeleteId!= null) {
            try {
                adminDAOImp.removeAdmin(adminDeleteId);
                response.sendRedirect("AdminHomeAdminServlet?pages=1");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeAdminServlet?pages=1")).forward(request, response);

            }
        }
    }
}
