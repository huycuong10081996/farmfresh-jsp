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
import java.util.ArrayList;
import java.util.List;


@WebServlet("/AddCartFromProductDetailServlet")
public class AddCartFromProductDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int quantity = 1;
        String id = request.getParameter("productDetailId");
        Product product = Product.findById(id);
        if (product != null) {
            HttpSession session = request.getSession();
            if (session.getAttribute("order") == null) {
                Orders orders = new Orders();
                List<Item> listItem = new ArrayList<>();
                Item item = new Item();
                item.setQuantity(quantity);
                item.setProduct(product);
                item.setPrice(product.getProductPrice());
                item.setSalePrice(product.getProductSalePrice());
                listItem.add(item);
                orders.setItems(listItem);
                session.setAttribute("order", orders);
            } else {
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
                    item.setPrice(product.getProductPrice());
                    item.setSalePrice(product.getProductSalePrice());
                    listItem.add(item);
                }
                session.setAttribute("order", orders);
            }
        }
        response.sendRedirect(Utils.fullPath("ProductDetailServlet?productDetailId=" + id));
    }
}
