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
            String pages = request.getParameter("pages");
            int page = Integer.parseInt(pages);

            String query = "select count(orders_id) from orders";
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
            request.setAttribute("orderSize", size);

            String sql = "select o.orders_id, u.user_fullName, o.orders_status, o.orders_createAt, o.orders_totalPrice from orders o inner join `user` u on u.user_id =o.orders_userId limit ?,?";
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
            ResultSet resultSet = preparedStatement.executeQuery();
            request.setAttribute("adminOrder", resultSet);

            request.getRequestDispatcher("admin/adminOrder.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
