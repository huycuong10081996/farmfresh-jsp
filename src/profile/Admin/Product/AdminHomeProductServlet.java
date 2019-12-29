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
            String pages = request.getParameter("pages");
            int page = Integer.parseInt(pages);
            String queries = request.getParameter("findProduct");

            String query = "select count(product_id) from product";
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
            request.setAttribute("size", size);
            String sql;
            if (queries != null) {
                sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, p.product_createBy, p.product_createAt, p.product_quantity, product_description, product_status, c.category_id from product p inner join category c on c.category_id = p.product_categoryId where p.product_name like '%"+queries+"%' order by (product_id) asc limit ? , ?";
            } else {
                sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, p.product_createBy, p.product_createAt, p.product_quantity, product_description, product_status, c.category_id from product p inner join category c on c.category_id = p.product_categoryId order by (product_id) asc limit ? , ?";
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

            ResultSet productAdmin = preparedStatement.executeQuery();
            request.setAttribute("productAdmin", productAdmin);

            request.getRequestDispatcher("admin/admin.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
