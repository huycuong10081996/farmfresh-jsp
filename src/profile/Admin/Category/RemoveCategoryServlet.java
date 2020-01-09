package profile.Admin.Category;

import Controller.CategoryDAO;
import Controller.ProductDAOImp;
import Model.Category;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/RemoveCategoryServlet")
public class RemoveCategoryServlet extends HttpServlet {
    private CategoryDAO categoryDAO = new CategoryDAO();
    private ProductDAOImp productDAOImp = new ProductDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String categoryId = request.getParameter("categoryRemoveId");

        if (categoryId != null) {
            try {
                productDAOImp.deleteProductFromCategory(categoryId);
                categoryDAO.removeCategory(categoryId);
                response.sendRedirect(Utils.fullPath("AdminHomeCategoryServlet?pages=1"));
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeCategoryServlet?pages=1")).forward(request, response);
            }
        }
    }
}
