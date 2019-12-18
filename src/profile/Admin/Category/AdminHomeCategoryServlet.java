package profile.Admin.Category;

import Model.Category;
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


@WebServlet("/AdminHomeCategoryServlet")
public class AdminHomeCategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sql = "select * from category";
        try {
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            request.setAttribute("adminCategory", resultSet);

            request.getRequestDispatcher("admin/admin-category.jsp").forward(request, response);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
