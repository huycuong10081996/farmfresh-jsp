package profile.Cart;

import Model.Orders;
import Model.User;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/CartControllerServlet")
public class CartControllerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession();
//        User user = (User) session.getAttribute("user");
//        Orders orders = (Orders) session.getAttribute("order");
//        if (user != null && orders != null) {
//            orders.setCustomer(user);
//        }
//        request.getRequestDispatcher("cart-page.jsp").forward(request,response);
    }
}
