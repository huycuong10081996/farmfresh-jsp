package Controller;

import Model.Product;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

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
        String sql = "update product set product_name = ?, product_image = ?, product_price = ?, product_salePrice = ?, product_categoryId = ?, product_createAt =?, product_quantity = ?, product_description = ?, product_status =?";
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
}
