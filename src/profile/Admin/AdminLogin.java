package profile.Admin;

import Model.Admin;
import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("utf8");
            response.setCharacterEncoding("utf8");

            String adminEmailLogin = request.getParameter("adminEmailLogin").trim();
            String adminPasswordLogin = request.getParameter("adminPasswordLogin").trim();

            String sql = "select * from admin where admin_email = ?";
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, adminEmailLogin);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
                int i = resultSet.getRow();
            if (resultSet != null && i == 1) {
                resultSet.first();
                if (adminEmailLogin.equals(resultSet.getString(5)) && !adminPasswordLogin.equals(resultSet.getString(3))) {
                    request.setAttribute("errAdminPassword", "Bạn nhập sai mật khẩu, xin vui lòng nhập lại");
                    request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
                }
                if (adminEmailLogin.equals(resultSet.getString(5)) && adminPasswordLogin.equals(resultSet.getString(3))) {
                    Admin admin = new Admin();
                    admin.setAdminId(resultSet.getString(1));
                    admin.setAdminName(resultSet.getString(2));
                    admin.setAdminPassword(resultSet.getString(3));
                    admin.setPermission(resultSet.getInt(4));
                    admin.setAdminEmail(resultSet.getString(5));
                    HttpSession session = request.getSession();
                    session.setAttribute("admin", admin);
                    response.sendRedirect(Utils.fullPath("AdminHomeProductServlet?pages=1"));
                }
            } else {
                request.setAttribute("errAdminEmail", "Chúng tôi không tìm thấy email của bạn trong hệ thống.");
                request.getRequestDispatcher("loginAdmin.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Lỗi kết nối tới CSDL");
            request.setAttribute("errAdmin", "Sai Email hoặc mật khẩu.");
            request.getRequestDispatcher(Utils.fullPath("AdminHomeProductServlet?pages=1")).forward(request, response);
        }
    }
}
