package Controller;

import Model.Category;
import Model.Product;
import profile.Review.UpdateReviewServlet;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAOImp implements ProductDAO {
    @Override
    public void addProduct(Product product) {
        String sql = "insert into product value(?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, product.getProductId());
            preparedStatement.setString(2, product.getProductName());
            preparedStatement.setString(3, product.getProductImageURL());
            preparedStatement.setDouble(4, product.getProductPrice());
            preparedStatement.setDouble(5, product.getProductSalePrice());
            preparedStatement.setString(6, product.getProductCategoryId());
            preparedStatement.setString(7, product.getProductCreateById());
            preparedStatement.setString(8, product.getProductCreateAt());
            preparedStatement.setInt(9, product.getProductQuantity());
            preparedStatement.setString(10, product.getProductDescription());
            preparedStatement.setInt(11, product.getProductStatus());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateProduct(Product product) {
        String sql = "update product set product_name = ?, product_image = ?, product_price = ?, product_salePrice = ?, product_categoryId = ?, product_createAt = ?, product_quantity = ?, product_description = ?, product_status =? where product_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, product.getProductName());
            preparedStatement.setString(2, product.getProductImageURL());
            preparedStatement.setDouble(3, product.getProductPrice());
            preparedStatement.setDouble(4, product.getProductSalePrice());
            preparedStatement.setString(5, product.getProductCategoryId());
            preparedStatement.setString(6, product.getProductCreateAt());
            preparedStatement.setInt(7, product.getProductQuantity());
            preparedStatement.setString(8, product.getProductDescription());
            preparedStatement.setInt(9, product.getProductStatus());
            preparedStatement.setString(10, product.getProductId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteProduct(String productId) {
        String sql = "delete from product where product_id = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, productId);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean checkProduct(String productId) {
        String sql = "select product_id from product";
        ArrayList<String> listId = new ArrayList<>();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                listId.add(resultSet.getString(1));
            }
            for (String ignored : listId) {
                if (productId.equals(ignored)) {
                    return true;
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public void deleteProductFromCategory(String categoryId) {
        String sql = "delete from product where product_categoryId = ?";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, categoryId);
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
