package profile.Admin.Product;

import Controller.ProductDAOImp;
import Model.Product;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;


@WebServlet("/EditProductServlet")
public class EditProductServlet extends HttpServlet {
    private ProductDAOImp productDAOImp = new ProductDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        Calendar calendars = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String productCreateAt = dateFormat.format(calendars.getTime());

        int page = Integer.parseInt(request.getParameter("pageEdit"));
        String productIdEdit = request.getParameter("productIdEdit");
        String productNameEdit = request.getParameter("productNameEdit").trim();
        String productImageEdit = request.getParameter("productImageEdit").trim();
        double productPriceEdit = Double.parseDouble(request.getParameter("productPriceEdit").trim());
        double productSalePriceEdit = Double.parseDouble(request.getParameter("productSalePriceEdit").trim());
        String productCategoryIdEdit = request.getParameter("productCategoryIdEdit").trim();
        int productQuantityEdit = Integer.parseInt(request.getParameter("productQuantityEdit").trim());
        String productDescriptionEdit = request.getParameter("productDescriptionEdit").trim();
        int productStatusEdit = Integer.parseInt(request.getParameter("productStatusEdit").trim());

        try {
            productDAOImp.updateProduct(new Product(productIdEdit, productNameEdit, productImageEdit, productPriceEdit, productSalePriceEdit, productCategoryIdEdit, "AD03", productCreateAt, productQuantityEdit, productDescriptionEdit, productStatusEdit));
            response.sendRedirect("AdminHomeProductServlet?pages="+page);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher(Utils.fullPath("AdminHomeProductServlet?pages="+page)).forward(request, response);
        }
    }
}
