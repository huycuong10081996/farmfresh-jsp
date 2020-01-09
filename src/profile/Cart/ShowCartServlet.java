package profile.Cart;

import Model.Orders;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet("/shopping-cart")
public class ShowCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Orders orders = (Orders) request.getSession().getAttribute("order");
        request.setAttribute("order", orders);
        request.getRequestDispatcher("cart-page.jsp").forward(request, response);
    }
}
