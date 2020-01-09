package Model;

import java.io.Serializable;

public class Item implements Serializable {

    private String itemID;
    private Product product;
    private int quantity;
    private double price;
    private double salePrice;
    private String ordersId;

    public Item () {
        super();
    }

    public Item(String itemID, Product product, int quantity, double price, double salePrice) {
        this.itemID = itemID;
        this.product = product;
        this.quantity = quantity;
        this.price = price;
        this.salePrice = salePrice;
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

    public double getSalePrice() {
        return salePrice;
    }

    public String getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(String ordersId) {
        this.ordersId = ordersId;
    }

    public void setSalePrice(double salePrice) {
        this.salePrice = salePrice;
    }

    public double totalPrice () {
        return this.price * this.quantity;
    }

    public double totalSalePrice () {
        return this.salePrice * this.quantity;
    }

}
