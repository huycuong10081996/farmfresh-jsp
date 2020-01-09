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
    private String productCreateById;
    private int productQuantity;
    private String productCreateAt;
    private String productCategoryTitle;
    private String productCategoryId;

    public Product() {
    }

    public Product(String productId, String productName, String productImageURL, double productPrice, double productSalePrice, String productCategoryId) {
        this.productId = productId;
        this.productName = productName;
        this.productImageURL = productImageURL;
        this.productPrice = productPrice;
        this.productSalePrice = productSalePrice;
        this.productCategoryId = productCategoryId;
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

    // Constructor thêm product trong phần admin
    public Product(String productId, String productName, String productImageURL, double productPrice, double productSalePrice, String productCategoryId, String productCreateById, String productCreateAt, int productQuantity, String productDescription,  int productStatus) {
        this.productId = productId;
        this.productName = productName;
        this.productImageURL = productImageURL;
        this.productPrice = productPrice;
        this.productSalePrice = productSalePrice;
        this.productCategoryId = productCategoryId;
        this.productCreateById = productCreateById;
        this.productCreateAt = productCreateAt;
        this.productQuantity = productQuantity;
        this.productDescription = productDescription;
        this.productStatus = productStatus;
    }

    // Constructor thêm product trong phần admin
    public Product(String productId, String productName, String productImageURL, double productPrice, double productSalePrice, String productCategoryId, String productCreateAt, int productQuantity, String productDescription,  int productStatus) {
        this.productId = productId;
        this.productName = productName;
        this.productImageURL = productImageURL;
        this.productPrice = productPrice;
        this.productSalePrice = productSalePrice;
        this.productCategoryId = productCategoryId;
        this.productCreateAt = productCreateAt;
        this.productQuantity = productQuantity;
        this.productDescription = productDescription;
        this.productStatus = productStatus;
    }

    public static Product findById(String productId) {
        try {
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement("select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, p.product_quantity, p.product_createAt, p.product_description, c.category_title from product p inner join category c on p.product_categoryId = c.category_id where product_id = ? and product_status = 1");
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
                product.productDescription = resultSet.getString(8);
                product.productCategoryTitle = resultSet.getString(9);
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

    public String getProductCategoryTitle() {
        return productCategoryTitle;
    }

    public void setProductCategoryTitle(String productCategoryTitle) {
        this.productCategoryTitle = productCategoryTitle;
    }

    public String getProductCreateById() {
        return productCreateById;
    }

    public void setProductCreateById(String productCreateById) {
        this.productCreateById = productCreateById;
    }

    public String getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(String productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    @Override
    public int compareTo(Product o) {
        return this.productName.compareTo(o.getProductName());
    }
}
