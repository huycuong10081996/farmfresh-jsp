package Controller;

import Model.Product;

public interface ProductDAO {

    public void addProduct(Product product);

    public void updateProduct(Product product);

    public void deleteProduct(String productId);

    public boolean checkProduct(String productId);

    public void deleteProductFromCategory(String categoryId);
}