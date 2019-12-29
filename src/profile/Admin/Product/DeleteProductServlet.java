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
    private ProductDAOImp productDAOImp = new ProductDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String productDeleteId = request.getParameter("productDeleteId");

        if (productDeleteId != null) {
            try {
                productDAOImp.deleteProduct(productDeleteId);
                response.sendRedirect("AdminHomeProductServlet?pages=1");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeProductServlet?pages=1")).forward(request, response);
            }
        }
    }
}
