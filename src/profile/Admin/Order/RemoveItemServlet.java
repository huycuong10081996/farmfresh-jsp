package profile.Admin.Order;

import Controller.ItemDAOImp;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/RemoveItemServlet")
public class RemoveItemServlet extends HttpServlet {
    private ItemDAOImp itemDAOImp = new ItemDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String itemRemoveId = request.getParameter("itemRemoveId");

        if (itemRemoveId != null) {
            try {
                itemDAOImp.removeItem(itemRemoveId);
                response.sendRedirect("AdminHomeItemServlet?pages=1");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeItemServlet?pages=1")).forward(request, response);
            }
        }
    }
}
