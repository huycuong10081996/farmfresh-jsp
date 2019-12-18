package profile.Admin.Order;

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


@WebServlet("/AdminHomeItemServlet")
public class AdminHomeItemServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sql = "select o.orderitem_id, o.orderItem_ordersId, p.product_name, p.product_image, c.category_title, p.product_price, p.product_salePrice, o.orderItem_quantity, o.orderitem_totalPrice from orderitem o inner join product p on o.orderItem_productId = p.product_id inner join category c on p.product_categoryId = c.category_id";
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            request.setAttribute("orderItems", resultSet);

            request.getRequestDispatcher("admin/admin-item.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
