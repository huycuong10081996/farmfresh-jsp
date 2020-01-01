package profile.Admin.User;

import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.*;
import java.util.Calendar;


@WebServlet("/AdminHomeUserServlet")
public class AdminHomeUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String pages = request.getParameter("pages");
            int page = Integer.parseInt(pages);
            String queries = request.getParameter("findUser");

            String query = "select count(user_id) from `user`";
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
            request.setAttribute("userSize", size);
            String sql;
            if (queries != null) {
                sql = "select * from `user` where user_fullName like '%"+queries+"%' limit ?,?";
            } else {
                sql = "select * from `user` limit ?,?";
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
            request.setAttribute("userList", resultSet);

            request.getRequestDispatcher("admin/admin-user.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
