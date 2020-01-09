package profile.Admin.Order;

import Controller.ItemDAOImp;
import Controller.OrdersDAOImp;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/RemoveOrderServlet")
public class RemoveOrderServlet extends HttpServlet {
    private ItemDAOImp itemDAOImp = new ItemDAOImp();
    private OrdersDAOImp ordersDAOImp = new OrdersDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String orderRemoveId = request.getParameter("orderRemoveId");

        if (orderRemoveId != null) {
            try {
                itemDAOImp.removeItemFromOrders(orderRemoveId);
                ordersDAOImp.deleteOrders(orderRemoveId);
                response.sendRedirect("AdminHomeOrderServlet?pages=1");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeOrderServlet?pages=1")).forward(request, response);
            }
        }
    }
}
