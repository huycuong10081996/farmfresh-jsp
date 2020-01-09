package Model;

import java.io.Serializable;
import java.util.List;

public class Orders implements Serializable {

    private String orderId;
    private User customer;
    private List<Item> items;
    private int orderStatus;
    private String ordersCreateAt;
    private String userId;

    public Orders() {
        super();
    }

    public Orders(String orderId, User customer, List<Item> items) {
        this.orderId = orderId;
        this.customer = customer;
        this.items = items;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }


    public String getOrdersCreateAt() {
        return ordersCreateAt;
    }

    public void setOrdersCreateAt(String ordersCreateAt) {
        this.ordersCreateAt = ordersCreateAt;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int totalOrder () {
        int total = 0;
        for (Item item :  this.items) {
            total += item.totalPrice();
        }
        return total;
    }

    public int totalSaleOrder () {
        int total = 0;
        for (Item item :  this.items) {
            total += item.totalSalePrice();
        }
        return total;
    }
}
