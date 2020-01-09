package profile.Admin.Category;

import Controller.CategoryDAO;
import Model.Category;
import Model.Item;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/UpdateCategoryServlet")
public class UpdateCategoryServlet extends HttpServlet {
    private CategoryDAO categoryDAO = new CategoryDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        int page = Integer.parseInt(request.getParameter("pageCategoryEdit"));

        String categoryId = request.getParameter("categoryEditId");
        String categoryTitleEdit = request.getParameter("categoryTitleEdit").trim();

        Pattern titlePattern = Pattern.compile("[A-Za-z. ]{3,30}");
        Matcher titleMatcher = titlePattern.matcher(categoryTitleEdit);

        if (!titleMatcher.matches()) {
            String errCategoryTitle = "Nhập sai cú pháp, vui lòng nhập lại";
            request.setAttribute("errCategoryTitleEdit", errCategoryTitle);
            request.getRequestDispatcher("AdminHomeCategoryServlet?pages=1").forward(request, response);
        } else {
            try {
                categoryDAO.updateCategory(new Category(categoryId, categoryTitleEdit, "AD03"));
                response.sendRedirect(Utils.fullPath("AdminHomeCategoryServlet?pages=" + page));
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeCategoryServlet?pages=" + page)).forward(request, response);
            }
        }

    }
}
