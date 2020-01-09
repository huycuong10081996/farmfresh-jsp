package Controller;

import Model.Orders;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;

public class OrdersDAOImp implements OrdersDAO{
    @Override
    public void addOrdersWithUser(Orders orders) {
        String sql = "insert into orders(orders_id, orders_userId, orders_status, orders_createAt) value(?, ?, ?, ?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            orders.setOrderId(createOrderId());
            orders.setOrdersCreateAt(createCreateAt());
            preparedStatement.setString(1, orders.getOrderId());
            preparedStatement.setString(2, orders.getCustomer().getUserId());
            preparedStatement.setInt(3, 0);
            //Orders status bằng 0 có nghĩa là order của người dùng chưa được đk địa chỉ và xác nhận thanh toán
            preparedStatement.setString(4, orders.getOrdersCreateAt());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateTotalOrder(Orders orders) {
        String sql = "update orders set orders_totalPrice = ? where orders_id = ? ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setDouble(1, orders.totalOrder());
            preparedStatement.setString(2, orders.getOrderId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }


    @Override
    public void addOrder(Orders orders) {
        String sql = "insert into orders(orders_id, orders_status, orders_createAt, orders_register) value(?, ?, ?, ?)";
        PreparedStatement preparedStatement;
        try {
            orders.setOrderId(createOrderId());
            orders.setOrdersCreateAt(createCreateAt());
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, orders.getOrderId());
            preparedStatement.setInt(2, 0);
            preparedStatement.setString(3, orders.getOrdersCreateAt());
            preparedStatement.setInt(4, 0);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateOrder(Orders orders) {
        String sql = "update orders set order_userId = ?, orders_register = ? where orders_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, orders.getCustomer().getUserId());
            preparedStatement.setInt(2, 1);
            preparedStatement.setString(3, orders.getOrderId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteOrders(String orderId) {
        String sql = "delete from orders where orders_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, orderId);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private String createOrderId() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }

    private String createCreateAt() {
        Calendar calendars = Calendar.getInstance();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return dateFormat.format(calendars.getTime());
    }

}
