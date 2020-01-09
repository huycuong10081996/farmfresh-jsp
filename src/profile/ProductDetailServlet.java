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


@WebServlet("/ProductDetailServlet")
public class ProductDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("productDetailId");
        try {
            String sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, rv.review_ratingStar from product p left join review rv on rv.review_productId = p.product_id where product_status = 1";
            PreparedStatement statement = ConnectionDB.getPreparedStatement(sql);
            response.getWriter().println("sai");

            ResultSet otherProduct = statement.executeQuery();
            request.setAttribute("other", otherProduct);

            if (id != null) {
                sql =  "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, p.product_quantity, p.product_createAt, p.product_description, c.category_title, rv.review_content, rv.review_createAt, us.user_fullName, rv.review_ratingStar, rv.review_id, c.category_id, rv.review_createBy from product p left join category c on p.product_categoryId = c.category_id left join review rv on rv.review_productId = p.product_id left join `user` us on rv.review_createBy = us.user_id where product_status = 1 and product_id = ?";
            }
            PreparedStatement statements = ConnectionDB.getPreparedStatement(sql);
            statements.setString(1, id);
            response.getWriter().println(sql);
            ResultSet resultSetProductDetail = statements.executeQuery();
            request.setAttribute("resultSetProductDetail", resultSetProductDetail);

            request.getRequestDispatcher("product-detail.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
