package profile.Admin.Product;

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


@WebServlet("/AdminHomeProductServlet")
public class AdminHomeProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, p.product_createBy, p.product_createAt, p.product_quantity, product_description, product_status, c.category_id from product p inner join category c on c.category_id = p.product_categoryId order by (product_id) asc";
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet productAdmin = preparedStatement.executeQuery();
            request.setAttribute("productAdmin", productAdmin);

            request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
