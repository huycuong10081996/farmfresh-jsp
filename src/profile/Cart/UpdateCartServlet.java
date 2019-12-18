package profile.Cart;

import Controller.ItemDAOImp;
import Controller.OrdersDAOImp;
import Model.Item;
import Model.Orders;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;


@WebServlet("/UpdateCartServlet")
public class UpdateCartServlet extends HttpServlet {
    private ItemDAOImp itemDAOImp = new ItemDAOImp();
    private OrdersDAOImp ordersDAOImp = new OrdersDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            String id = request.getParameter("productId");
            int quantity = Integer.parseInt(request.getParameter("quantityItem").trim());
            Orders orders = (Orders) session.getAttribute("order");
            if (orders == null) {
                orders = new Orders();
            } else {
                List<Item> list = orders.getItems();
                for (Item item : list) {
                    if (item.getProduct().getProductId().equals(id)) {
                        item.setQuantity(quantity);
                        itemDAOImp.updateItem(item);
                    }
                }
                orders.setItems(list);
                ordersDAOImp.updateTotalOrder(orders);
            }
            session.setAttribute("order", orders);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        response.sendRedirect(Utils.fullPath("shopping-cart"));
    }
}
