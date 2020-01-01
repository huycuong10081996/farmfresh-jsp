package profile.Admin.User;

import Controller.UserDAOImp;
import Model.User;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/AddUserServlet")
public class AddUserServlet extends HttpServlet {
    private UserDAOImp userDAO = new UserDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String userFirstName = request.getParameter("userFirstName").trim();
        String userLastName = request.getParameter("userLastName").trim();
        String userEmail = request.getParameter("userEmail").trim();
        String userPassword = request.getParameter("userPassword").trim();
        String userPhone = request.getParameter("userPhone").trim();

        UUID uuid = UUID.randomUUID();
        String userId = uuid.toString();

        Pattern namePattern = Pattern.compile("[A-Za-z. ]{3,30}");
        Pattern phonePattern = Pattern.compile("^[0-9]{9,11}$");
        Pattern passPattern = Pattern.compile("^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$");
        Pattern emailPattern = Pattern.compile("^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$");

        Matcher emailMatcher = emailPattern.matcher(userEmail);
        Matcher firstNameMatcher = namePattern.matcher(userFirstName);
        Matcher lastNameMatcher = namePattern.matcher(userLastName);
        Matcher phoneMatcher = phonePattern.matcher(userPassword);
        Matcher passMatcher = passPattern.matcher(userPhone);

        String emailError;
        if (!emailMatcher.matches()) {
            emailError = "Email không hợp lệ";
            request.setAttribute("errEmailAdd", emailError);
            request.getRequestDispatcher("AdminHomeUserServlet").forward(request, response);
        } else if (userDAO.checkUser(userEmail)) {
            emailError = "Tài khoản đã tồn tại";
            request.setAttribute("errEmailAdd", emailError);
            request.getRequestDispatcher("AdminHomeUserServlet?pages=1").forward(request, response);
        }

        if (!firstNameMatcher.matches()) {
            String errFirstName = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errFirstNameAdd", errFirstName);
            request.getRequestDispatcher("AdminHomeUserServlet?pages=1").forward(request, response);
        }

        if (!lastNameMatcher.matches()) {
            String errLastName = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errLastNameAdd", errLastName);
            request.getRequestDispatcher("AdminHomeUserServlet?pages=1").forward(request, response);
        }

        if (!phoneMatcher.matches()) {
            String errPhone = "Số điện thoại không hợp lệ.";
            request.setAttribute("errPhoneAdd", errPhone);
            request.getRequestDispatcher("AdminHomeUserServlet?pages=1").forward(request, response);
        }

        if (!passMatcher.matches()) {
            String errPassRegister = "Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số.";
            request.setAttribute("errPassAdd", errPassRegister);
            request.getRequestDispatcher("AdminHomeUserServlet?pages=1").forward(request, response);
        }

        if (firstNameMatcher.matches() && lastNameMatcher.matches() && emailMatcher.matches() && !userDAO.checkUser(userEmail) && phoneMatcher.matches() && passMatcher.matches()) {
            try {
                userDAO.addUser(new User(userId, userFirstName, userLastName, userEmail, userPassword, userPhone));
                response.sendRedirect(Utils.fullPath("AdminHomeUserServlet?pages=1"));
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeUserServlet?pages=1")).forward(request, response);
            }
        }
    }
}
