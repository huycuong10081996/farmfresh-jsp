package profile;

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
import java.sql.Statement;


@WebServlet("/ListProductServlet")
public class ListProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        try {
            String sql = "select category_id, category_title from category";
            PreparedStatement statement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            request.setAttribute("resultSet", resultSet);

            sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title from product p inner join category c on c.category_id = p.product_categoryId where product_status = 1 ";
            PreparedStatement specialStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet specialResultSet = specialStatement.executeQuery();
            request.setAttribute("special", specialResultSet);

            if (category != null) {
                sql += "and p.product_categoryId = ?";
            }
            PreparedStatement statement1 = ConnectionDB.getPreparedStatement(sql);
            statement1.setString(1, category);
            response.getWriter().println(sql);
            ResultSet resultSetProduct = statement1.executeQuery();
            request.setAttribute("p", resultSetProduct);

            request.getRequestDispatcher("category.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}
