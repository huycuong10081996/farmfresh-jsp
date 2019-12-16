package Controller;

import Model.Item;

public interface ItemDAO {

    public void addItem(Item item);

    public void updateItem(int itemQuantity, String itemId);

    public void deleteItem(Item item);
}
