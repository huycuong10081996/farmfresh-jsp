package profile.User;

import Controller.UserDAOImp;
import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/UserInformationUpdateServlet")
public class UserInformationUpdateServlet extends HttpServlet {
    private UserDAOImp userDAO = new UserDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String firstNameUpdate = request.getParameter("firstNameUpdate").trim();
        String lastNameUpdate = request.getParameter("lastNameUpdate").trim();
        String phoneUpdate = request.getParameter("phoneUpdate").trim();

        Pattern namePattern = Pattern.compile("[A-Za-z. ]{3,30}");
        Pattern phonePattern = Pattern.compile("^[0-9]{6,16}$");

        Matcher firstNameMatcher = namePattern.matcher(firstNameUpdate);
        Matcher lastNameMatcher = namePattern.matcher(lastNameUpdate);
        Matcher phoneMatcher = phonePattern.matcher(phoneUpdate);

        if (!firstNameMatcher.matches()) {
            String errFirstNameUpdate = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errFirstNameUpdate", errFirstNameUpdate);
            request.getRequestDispatcher("my-account.jsp").forward(request, response);
        }

        if (!lastNameMatcher.matches()) {
            String errFirstNameUpdate = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errFirstNameUpdate", errFirstNameUpdate);
            request.getRequestDispatcher("my-account.jsp").forward(request, response);
        }

        if (!phoneMatcher.matches()) {
            String errPhoneUpdate = "Số điện thoại không hợp lệ.";
            request.setAttribute("errPhoneUpdate", errPhoneUpdate);
            request.getRequestDispatcher("my-account.jsp").forward(request, response);
        }

        if (firstNameMatcher.matches() && lastNameMatcher.matches() && phoneMatcher.matches()) {
            try {
                HttpSession session = request.getSession();
                User user = (User) session.getAttribute("user");

                user.setFirstName(firstNameUpdate);
                user.setLastName(lastNameUpdate);
                user.setFullName(firstNameUpdate + " " + lastNameUpdate);
                user.setUserPhone(phoneUpdate);

                userDAO.updateUserInformation(user);
                response.sendRedirect("my-account.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher("my-account.jsp").forward(request, response);
            }
        }
    }
}
