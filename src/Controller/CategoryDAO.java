package Controller;

import Model.Category;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

    public void addCategory(Category category) {
        String sql = "insert into category(category_id, category_title, category_createBy) value(?, ?, ?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, category.getCategoryId());
            preparedStatement.setString(2, category.getCategoryTitle());
            preparedStatement.setString(3, category.getCategoryCreateBy());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void updateCategory(Category category) {
        String sql = "update category set category_title = ? where category_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, category.getCategoryTitle());
            preparedStatement.setString(2, category.getCategoryId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void removeCategory(String categoryId) {
        String sql = "delete from category where category_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, categoryId);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public boolean checkCategory(String categoryId) {
        String sql = "select * from category where category_id = '" + categoryId + "' ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            int i = resultSet.getRow();
            if (i == 1) {
                resultSet.first();
                if(categoryId.equals(resultSet.getString(1))) {
                    return true;
                } else {
                    return false;
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }
}
