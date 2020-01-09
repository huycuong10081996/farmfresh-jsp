package Controller;

import Model.Orders;

public interface OrdersDAO {

    public void addOrdersWithUser(Orders orders);

    public void updateTotalOrder(Orders orders);

    public void addOrder(Orders orders);

    public void updateOrder(Orders orders);

    public void deleteOrders(String orderId);
}
