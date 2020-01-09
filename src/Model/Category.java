package Model;

import java.util.ArrayList;

public class Category {

    private String categoryId;
    private String categoryTitle;
    private String categoryCreateBy;
    private Admin admin;
    private ArrayList<Product> productArrayList;

    public Category() {}

    public Category(String categoryId, String categoryTitle, String categoryCreateBy) {
        this.categoryId = categoryId;
        this.categoryTitle = categoryTitle;
        this.categoryCreateBy = categoryCreateBy;
    }

    public Category(String categoryId, String categoryTitle, Admin admin, ArrayList<Product> productArrayList) {
        this.categoryId = categoryId;
        this.categoryTitle = categoryTitle;
        this.admin = admin;
        this.productArrayList = productArrayList;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryTitle() {
        return categoryTitle;
    }

    public void setCategoryTitle(String categoryTitle) {
        this.categoryTitle = categoryTitle;
    }

    public String getCategoryCreateBy() {
        return categoryCreateBy;
    }

    public void setCategoryCreateBy(String categoryCreateBy) {
        this.categoryCreateBy = categoryCreateBy;
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }

    public ArrayList<Product> getProductArrayList() {
        return productArrayList;
    }

    public void setProductArrayList(ArrayList<Product> productArrayList) {
        this.productArrayList = productArrayList;
    }
}
