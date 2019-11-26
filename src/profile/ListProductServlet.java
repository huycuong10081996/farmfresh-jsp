package profile;

import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
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
            Statement statement = ConnectionDB.connect();
            String sql = "select category_id, category_title from category";
            ResultSet resultSet = statement.executeQuery(sql);
            request.setAttribute("resultSet", resultSet);

            Statement statement1 = ConnectionDB.connect();
            sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title from product p inner join category c on c.category_id = p.product_categoryId where product_status = 1 ";
            if (category != null) {
                sql += "and p.product_categoryId = '" + category + "'";
            }
            ResultSet resultSetProduct = statement1.executeQuery(sql);
            request.setAttribute("p", resultSetProduct);

            request.getRequestDispatcher("category.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}
