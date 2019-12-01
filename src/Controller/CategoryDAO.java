package Controller;

import Model.Product;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryDAO {

    public int getCount(String categoryId) {
        int count = 0;
        String sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_id from product p inner join category c on c.category_id = p.product_categoryId where p.product_status = 1 and c.category_id = ?";
        try {
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, categoryId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                count ++;
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return count;
    }
}
