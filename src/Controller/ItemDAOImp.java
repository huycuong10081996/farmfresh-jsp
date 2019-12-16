package Controller;

import Model.Item;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

public class ItemDAOImp implements ItemDAO {
    @Override
    public void addItem(Item item) {
        String sql = "insert into orderitem value(?, ?, ?, ?)";
        PreparedStatement preparedStatement;
        try {
            item.setItemID(createItemId());
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, item.getItemID());
            preparedStatement.setString(2, item.getOrdersId());
            preparedStatement.setString(3, item.getProduct().getProductId());
            preparedStatement.setInt(4, item.getQuantity());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateItem(int itemQuantity, String itemId) {
        String sql = "update orderitem set orderItem_quantity = ? where orderItem_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setInt(1, itemQuantity);
            preparedStatement.setString(2, itemId);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteItem(Item item) {
        String sql = "delete from orderitem where orderItem_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, item.getItemID());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private String createItemId() {
        UUID uuid = UUID.randomUUID();
        return uuid.toString();
    }
}
