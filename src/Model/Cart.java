package Model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private List<Product> cartProduct = new ArrayList<>();
    private int quantity;

    public Cart() {
    }

    public Cart(List<Product> cartProduct, int quantity) {
        this.cartProduct = cartProduct;
        this.quantity = quantity;
    }

    public List<Product> getCartProduct() {
        return cartProduct;
    }

    public void put(Product product) {
        cartProduct.add(quantity, product);
    }

    public void setCartProduct(List<Product> cartProduct) {
        this.cartProduct = cartProduct;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
