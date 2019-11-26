package Model;

public class Product {
    private String productId;
    private String productName;
    private int productStatus;
    private double productPrice;
    private double productSalePrice;
    private String productCategoryId;
    private String productCreateBy;
    private String productReview;

    public Product() {
    }

    public Product(String productId, String productName, int productStatus, double productPrice, double productSalePrice, String productCategoryId, String productCreateBy, String productReview) {
        this.productId = productId;
        this.productName = productName;
        this.productStatus = productStatus;
        this.productPrice = productPrice;
        this.productSalePrice = productSalePrice;
        this.productCategoryId = productCategoryId;
        this.productCreateBy = productCreateBy;
        this.productReview = productReview;
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

    public String getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(String productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    public String getProductCreateBy() {
        return productCreateBy;
    }

    public void setProductCreateBy(String productCreateBy) {
        this.productCreateBy = productCreateBy;
    }

    public String getProductReview() {
        return productReview;
    }

    public void setProductReview(String productReview) {
        this.productReview = productReview;
    }
}
