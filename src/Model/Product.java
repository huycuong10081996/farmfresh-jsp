package Model;

import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Product implements  Comparable<Product> {

    private String productId;
    private String productName;
    private String productImageURL;
    private int productStatus;
    private double productPrice;
    private double productSalePrice;
    private String productDescription;
    private Category productCategory;
    private Admin productCreateBy;
    private int productQuantity;
    private String productCreateAt;
    private String categoryId;

    public Product() {
    }

    public Product(String productId, String productName, String productImageURL, double productPrice, double productSalePrice, String productCategory) {
        this.productId = productId;
        this.productName = productName;
        this.productImageURL = productImageURL;
        this.productPrice = productPrice;
        this.productSalePrice = productSalePrice;
        this.categoryId = productCategory;
    }

    public Product(String productId, String productName, String productImageURL, int productStatus, double productPrice, double productSalePrice, String productDescription, Category productCategory, Admin productCreateBy) {
        this.productId = productId;
        this.productName = productName;
        this.productImageURL = productImageURL;
        this.productStatus = productStatus;
        this.productPrice = productPrice;
        this.productSalePrice = productSalePrice;
        this.productDescription = productDescription;
        this.productCategory = productCategory;
        this.productCreateBy = productCreateBy;
    }

    public Product(String productId, String productName, String productImageURL, int productStatus, double productPrice, double productSalePrice, int productQuantity) {
        this.productId = productId;
        this.productName = productName;
        this.productImageURL = productImageURL;
        this.productStatus = productStatus;
        this.productPrice = productPrice;
        this.productSalePrice = productSalePrice;
        this.productQuantity = productQuantity;
    }

    public static Product findById(String productId) {
        try {
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement("select product_id, product_name, product_image, product_price, product_salePrice, product_quantity, product_createAt, product_description from product where product_id = ? and product_status = 1");
            preparedStatement.setString(1, productId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                Product product = new Product();
                product.productId = resultSet.getString(1);
                product.productName = resultSet.getString(2);
                product.productImageURL = resultSet.getString(3);
                product.productPrice = resultSet.getDouble(4);
                product.productSalePrice = resultSet.getDouble(5);
                product.productQuantity = resultSet.getInt(6);
                product.productCreateAt = resultSet.getString(7);
                product.productDescription = resultSet.getString(7);
                return product;
            }
            return null;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImageURL() {
        return productImageURL;
    }

    public void setProductImageURL(String productImageURL) {
        this.productImageURL = productImageURL;
    }

    public int getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(int productStatus) {
        this.productStatus = productStatus;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public double getProductSalePrice() {
        return productSalePrice;
    }

    public void setProductSalePrice(double productSalePrice) {
        this.productSalePrice = productSalePrice;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public Category getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(Category productCategory) {
        this.productCategory = productCategory;
    }

    public Admin getProductCreateBy() {
        return productCreateBy;
    }

    public void setProductCreateBy(Admin productCreateBy) {
        this.productCreateBy = productCreateBy;
    }

    public int getProductQuantity() {
        return productQuantity;
    }

    public void setProductQuantity(int productQuantity) {
        this.productQuantity = productQuantity;
    }

    public String getProductCreateAt() {
        return productCreateAt;
    }

    public void setProductCreateAt(String productCreateAt) {
        this.productCreateAt = productCreateAt;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public int compareTo(Product o) {
        int value = this.productName.compareTo(o.getProductName());
        if (value != 0) {
            return value;
        }
        return 0;
    }
}
