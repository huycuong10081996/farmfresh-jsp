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
            String sql = "select * from `user`";
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            request.setAttribute("userList", resultSet);

            request.getRequestDispatcher("admin/admin-user.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
