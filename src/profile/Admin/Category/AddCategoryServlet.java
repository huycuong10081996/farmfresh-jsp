package profile.Admin.Category;

import Controller.CategoryDAO;
import Model.Admin;
import Model.Category;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/AddCategoryServlet")
public class AddCategoryServlet extends HttpServlet {
    private CategoryDAO categoryDAO = new CategoryDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String categoryId = request.getParameter("categoryId").trim();
        String categoryTitle = request.getParameter("categoryTitle").trim();

        Pattern idPattern = Pattern.compile("[A-Za-z0-9. ]{3,20}");
        Pattern titlePattern = Pattern.compile("[A-Za-z. ]{3,30}");

        Matcher idMatcher = idPattern.matcher(categoryId);
        Matcher titleMatcher = titlePattern.matcher(categoryTitle);

        if (!idMatcher.matches()) {
            String errCategoryId = "Id sai cú pháp, xin vui lòng nhập lại.";
            request.setAttribute("errCategoryId", errCategoryId);
            request.getRequestDispatcher("AdminHomeCategoryServlet?pages=1").forward(request, response);
        } else {
            if (categoryDAO.checkCategory(categoryId)) {
                String errCategoryId = "Category Id đã tồn tại trong hệ thống, xin vui lòng nhập lại.";
                request.setAttribute("errCategoryId", errCategoryId);
                request.getRequestDispatcher("AdminHomeCategoryServlet?pages=1").forward(request, response);
            }
        }

        if (!titleMatcher.matches()) {
            String errCategoryTitle = "Nhập sai cú pháp, vui lòng nhập lại";
            request.setAttribute("errCategoryTitle", errCategoryTitle);
            request.getRequestDispatcher("AdminHomeCategoryServlet?pages=1").forward(request, response);
        }

        HttpSession session = request.getSession();
        Admin admin = (Admin) session.getAttribute("admin");

        if (idMatcher.matches() && titleMatcher.matches()) {
            try {
                categoryDAO.addCategory(new Category(categoryId, categoryTitle, admin.getAdminId()));
                response.sendRedirect(Utils.fullPath("AdminHomeCategoryServlet?pages=1"));
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeCategoryServlet?pages=1")).forward(request, response);
            }
        }
    }
}
