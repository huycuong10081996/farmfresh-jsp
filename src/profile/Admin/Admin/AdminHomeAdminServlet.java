package profile.Admin.Admin;

import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/AdminHomeAdminServlet")
public class AdminHomeAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String pages = request.getParameter("pages");
            int page = Integer.parseInt(pages);
            String queries = request.getParameter("findAdmin");

            String query = "select count(admin_id) from admin";
            PreparedStatement preparedStatementCount = ConnectionDB.getPreparedStatement(query);
            ResultSet resultSetCount = preparedStatementCount.executeQuery();
            int count = 0;
            int size = 0;
            while (resultSetCount.next()) {
                size = resultSetCount.getInt(1);
                count++;
                if (count == 1) {
                    break;
                }
            }
            request.setAttribute("adminSize", size);
            String sql;
            if (queries != null) {
                sql = "select * from admin where admin_name like '%"+queries+"%' limit ?,?";
            } else {
                sql = "select * from admin limit ?,?";
            }
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            if (page == 1) {
                if (size <= 9) {
                    preparedStatement.setInt(1, 0);
                    preparedStatement.setInt(2, size);
                } else {
                    preparedStatement.setInt(1, 0);
                    preparedStatement.setInt(2, 9);
                }
            } else {
                preparedStatement.setInt(1, Math.max(page * 9 - 9,9));
                preparedStatement.setInt(2, Math.min(size - (page * 9 - 9) ,9));
            }

            ResultSet resultSet = preparedStatement.executeQuery();
            request.setAttribute("adminList", resultSet);

            request.getRequestDispatcher("admin/admin-admin.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
