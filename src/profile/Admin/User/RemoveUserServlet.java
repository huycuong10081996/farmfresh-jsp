package profile.Admin.User;

import Controller.UserDAOImp;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/RemoveUserServlet")
public class RemoveUserServlet extends HttpServlet {
    private UserDAOImp userDAOImp = new UserDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userId = request.getParameter("userDeleteId");

        if (userId != null) {
            try {
                userDAOImp.removeUser(userId);
                response.sendRedirect("AdminHomeUserServlet?pages=1");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeUserServlet?pages=1")).forward(request, response);

            }
        }
    }
}
