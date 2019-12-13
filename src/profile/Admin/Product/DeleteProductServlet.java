package profile.Admin.Product;

import Controller.ProductDAOImp;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {
    ProductDAOImp productDAOImp;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String productDeleteId = request.getParameter("productDeleteId");

        if (productDeleteId != null) {
            productDAOImp.deleteProduct(productDeleteId);
        } else {
            request.getRequestDispatcher(Utils.fullPath("AdminHomeProductServlet")).forward(request, response);
        }
        request.getRequestDispatcher(Utils.fullPath("AdminHomeProductServlet")).forward(request, response);
    }
}
