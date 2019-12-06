package profile.Cart;

import Model.Item;
import Model.Orders;
import Model.Product;
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


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            String id = request.getParameter("productIdDelete");
            Orders orders = (Orders) session.getAttribute("order");
            if (orders == null) {
                orders = new Orders();
            } else {
                List<Item> list = orders.getItems();
                Iterator<Item> itemIterator = list.iterator();
                while (itemIterator.hasNext()) {
                    Item item = itemIterator.next();
                    if (item.getProduct().getProductId().equals(id)) {
                        if (item.getQuantity() != 1) {
                            item.setQuantity(item.getQuantity() - 1);
                        } else {
                            itemIterator.remove();
                        }
                    }
                }
                /*for (Item item : list) {
                    if (item.getProduct().getProductId().equals(id)) {
                        list.remove(item);
                    }
                }*/
                orders.setItems(list);
            }
            session.setAttribute("order", orders);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        response.sendRedirect(Utils.fullPath("shopping-cart"));
    }
}
