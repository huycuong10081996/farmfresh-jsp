package profile.Cart;

import Controller.ItemDAOImp;
import Controller.OrdersDAOImp;
import Model.Item;
import Model.Orders;
import Model.Product;
import Model.User;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;


@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {
    private OrdersDAOImp ordersDAOImp = new OrdersDAOImp();
    private ItemDAOImp itemDAOImp = new ItemDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int quantity = 1;
        String id;
        if (request.getParameter("productId") != null) {
            id = request.getParameter("productId");
            Product product = Product.findById(id);
            HttpSession session = request.getSession();
            if (product != null) {
                if (session.getAttribute("order") == null) {
                    if (session.getAttribute("user") == null) {
                        Orders orders = new Orders();
                        List<Item> listItem = new ArrayList<>();
                        Item item = new Item();
                        item.setQuantity(quantity);
                        item.setProduct(product);
                        item.setOrdersId(orders.getOrderId());
                        item.setPrice(product.getProductPrice());
                        item.setSalePrice(product.getProductSalePrice());
                        listItem.add(item);
                        orders.setItems(listItem);
                        session.setAttribute("order", orders);
                    } else {
                        Orders orders = new Orders();
                        orders.setCustomer((User) session.getAttribute("user"));
                        ordersDAOImp.addOrdersWithUser(orders);
                        List<Item> listItem = new ArrayList<>();
                        Item item = new Item();
                        item.setQuantity(quantity);
                        item.setProduct(product);
                        item.setOrdersId(orders.getOrderId());
                        item.setPrice(product.getProductPrice());
                        item.setSalePrice(product.getProductSalePrice());
                        itemDAOImp.addItem(item);
                        listItem.add(item);
                        orders.setItems(listItem);
                        ordersDAOImp.updateTotalOrder(orders);
                        session.setAttribute("order", orders);
                    }
                } else {
                    if (session.getAttribute("user") == null) {
                        Orders orders = (Orders) session.getAttribute("order");
                        List<Item> listItem = orders.getItems();
                        boolean check = false;
                        for (Item item : listItem) {
                            if (item.getProduct().getProductId().equals(product.getProductId())) {
                                item.setQuantity(item.getQuantity() + quantity);
                                check = true;
                            }
                        }
                        if (!check) {
                            Item item = new Item();
                            item.setQuantity(quantity);
                            item.setProduct(product);
                            item.setOrdersId(orders.getOrderId());
                            item.setPrice(product.getProductPrice());
                            item.setSalePrice(product.getProductSalePrice());
                            listItem.add(item);
                        }
                        session.setAttribute("order", orders);
                    } else {
                        Orders orders = (Orders) session.getAttribute("order");
                        orders.setCustomer((User) request.getAttribute("user"));
                        //ordersDAOImp.updateOrder(orders);
                        List<Item> listItem = orders.getItems();
                        boolean check = false;
                        for (Item item : listItem) {
                            if (item.getProduct().getProductId().equals(product.getProductId())) {
                                item.setQuantity(item.getQuantity() + quantity);
                                itemDAOImp.updateItem(item);
                                ordersDAOImp.updateTotalOrder(orders);
                                check = true;
                            }
                        }
                        if (!check) {
                            Item item = new Item();
                            item.setQuantity(quantity);
                            item.setProduct(product);
                            item.setOrdersId(orders.getOrderId());
                            item.setPrice(product.getProductPrice());
                            item.setSalePrice(product.getProductSalePrice());
                            itemDAOImp.addItem(item);
                            listItem.add(item);
                            ordersDAOImp.updateTotalOrder(orders);
                        }
                        session.setAttribute("order", orders);
                    }
                }
            }
            response.sendRedirect(Utils.fullPath("HomeServlet"));
        } else {
            response.sendRedirect(Utils.fullPath("HomeServlet"));
        }
    }
}
