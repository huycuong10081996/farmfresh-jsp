package profile.Admin.Admin;

import Controller.AdminDAO;
import Controller.AdminDAOImp;
import Model.Admin;
import Model.User;
import vn.edu.nlu.fit.Utils.Utils;

import javax.persistence.criteria.CriteriaBuilder;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/EditAdminServlet")
public class EditAdminServlet extends HttpServlet {
    private AdminDAOImp adminDAOImp = new AdminDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        int page = Integer.parseInt(request.getParameter("pageAdminEdit"));

        String adminIdEdit = request.getParameter("adminIdEdit");
        String adminNameEdit = request.getParameter("adminNameEdit").trim();
        String adminEmailEdit = request.getParameter("adminEmailEdit").trim();
        String adminPasswordEdit = request.getParameter("adminPasswordEdit").trim();
        int adminPermissionEdit = Integer.parseInt(request.getParameter("adminPermissionEdit"));

        try {
            adminDAOImp.editAdmin(new Admin(adminIdEdit, adminNameEdit, adminEmailEdit, adminPasswordEdit, adminPermissionEdit));
            response.sendRedirect("AdminHomeAdminServlet?pages=" + page);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher(Utils.fullPath("AdminHomeAdminServlet?pages=" + page)).forward(request, response);
        }
    }
}
