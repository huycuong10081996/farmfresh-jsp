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
import java.util.UUID;


@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
    private ProductDAOImp productDAOImp = new ProductDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        HttpSession session = request.getSession();
        Admin admin = (Admin) session.getAttribute("admin");

        Calendar calendars = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat timeFormat = new SimpleDateFormat("HH:mm:ss");
        String dates = dateFormat.format(calendars.getTime());
        String times = timeFormat.format(calendars.getTime());
        String productCreateAt = dates + " " + times;
        UUID uuid = UUID.randomUUID();
        String productId = uuid.toString();
/*
        String productId = request.getParameter("productId").trim();
*/
        String productName = request.getParameter("productName").trim();
        String productImage = request.getParameter("productImage").trim();
        double productPrice = Double.parseDouble(request.getParameter("productPrice").trim());
        double productSalePrice = Double.parseDouble(request.getParameter("productSalePrice").trim());
        String productCategoryId = request.getParameter("productCategoryId").trim();
        int productQuantity = Integer.parseInt(request.getParameter("productQuantity").trim());
        String productDescription = request.getParameter("productDescription").trim();
        int productStatus = Integer.parseInt(request.getParameter("productStatus").trim());

        try {
            productDAOImp.addProduct(new Product(productId, productName, productImage, productPrice, productSalePrice, productCategoryId, admin.getAdminId(), productCreateAt, productQuantity, productDescription, productStatus));
            response.sendRedirect("AdminHomeProductServlet?pages=1");
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher(Utils.fullPath("AdminHomeProductServlet?pages=1")).forward(request, response);
        }
    }
}
