package profile.Admin.Product;

import Controller.ProductDAOImp;
import Model.Admin;
import Model.Product;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;


@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    private ProductDAOImp productDAOImp = new ProductDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Calendar calendars = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
        SimpleDateFormat timeFormat = new SimpleDateFormat("hh:mm:ss");
        String dates = dateFormat.format(calendars.getTime());
        String times = timeFormat.format(calendars.getTime());
        String productCreateAt = dates + " " + times;

        String productId = request.getParameter("productId");
        String productName = request.getParameter("productName");
        String productImage = request.getParameter("productImage");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        double productSalePrice = Double.parseDouble(request.getParameter("productSalePrice"));
        String productCategoryId = request.getParameter("productCategoryId");
        //String productCreateAt = request.getParameter("productCreateAt") + " " + times;
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
        String productDescription = request.getParameter("productDescription");
        int productStatus = Integer.parseInt(request.getParameter("productStatus"));

        try {
            productDAOImp.addProduct(new Product(productId, productName, productImage, productPrice, productSalePrice, productCategoryId, "AD01", productCreateAt, productQuantity, productDescription, productStatus));
            response.sendRedirect("admin2.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher("admin2.jsp").forward(request, response);
        }
    }
}
