package Controller;

import Model.Item;

public interface ItemDAO {

    public void addItem(Item item);

    public void updateItem(Item item);

    public void deleteItem(Item item);

    public void removeItem(String itemId);

    public void removeItemFromOrders(String orderId);
}
