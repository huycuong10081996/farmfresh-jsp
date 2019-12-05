package Model;

import java.io.Serializable;

public class Item implements Serializable {

    private String itemID;
    private Product product;
    private int quantity;
    private double price;

    public Item () {
        super();
    }

    public Item(String itemID, Product product, int quantity, double price) {
        this.itemID = itemID;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    public String getItemID() {
        return itemID;
    }

    public void setItemID(String itemID) {
        this.itemID = itemID;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double totalPrice () {
        return this.price * this.quantity;
    }
}
