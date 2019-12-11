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


@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, rv.review_ratingStar from product p left outer join review rv on rv.review_productId = p.product_id where product_status = 1 group by (product_id)";
            PreparedStatement homeStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = homeStatement.executeQuery();
            request.setAttribute("homeResultSet", resultSet);

            String sql2 = "select blogs_id, blogs_title, blog_content, blogs_image, blogs_createAt from blogs";
            PreparedStatement blog = ConnectionDB.getPreparedStatement(sql2);
            ResultSet resultSet1 = blog.executeQuery();
            request.setAttribute("blogHome", resultSet1);

            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
