package profile.Admin.Order;

import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Utils.Utils;

import javax.naming.spi.DirStateFactory;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/AdminHomeOrderServlet")
public class AdminHomeOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String sql = "select o.orders_id, u.user_fullName, o.orders_status, o.orders_createAt, o.orders_totalPrice from orders o inner join `user` u on u.user_id =o.orders_userId";
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            request.setAttribute("adminOrder", resultSet);

            request.getRequestDispatcher("admin/adminOrder.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
