package profile;

import Controller.UserDAOImp;
import Model.Cart;
import Model.Orders;
import Model.User;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private UserDAOImp userDAO = new UserDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String firstNameRegister = request.getParameter("firstNameRegister").trim();
        String lastNameRegister = request.getParameter("lastNameRegister").trim();
        String emailRegister = request.getParameter("emailRegister").trim();
        String phoneRegister = request.getParameter("phoneRegister").trim();
        String passwordRegister = request.getParameter("passwordRegister").trim();
        String passwordConfirmRegister = request.getParameter("passwordConfirmRegister").trim();

        UUID uuid = UUID.randomUUID();
        String idRegister = uuid.toString();

        Pattern namePattern = Pattern.compile("[A-Za-z. ]{3,30}");
        Pattern emailPattern = Pattern.compile("^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$");
        Pattern phonePattern = Pattern.compile("^[0-9]{9,11}$");
        Pattern passPattern = Pattern.compile("^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$");

        Matcher firstNameMatcher = namePattern.matcher(firstNameRegister);
        Matcher lastNameMatcher = namePattern.matcher(lastNameRegister);
        Matcher emailMatcher = emailPattern.matcher(emailRegister);
        Matcher phoneMatcher = phonePattern.matcher(phoneRegister);
        Matcher passMatcher = passPattern.matcher(passwordRegister);

        if (!firstNameMatcher.matches()) {
            String errFirstName = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errFirstName", errFirstName);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

        if (!lastNameMatcher.matches()) {
            String errLastName = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errLastName", errLastName);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

        String emailError;
        if (!emailMatcher.matches()) {
            emailError = "Email không hợp lệ";
            request.setAttribute("errEmailRegister", emailError);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else if (userDAO.checkUser(emailRegister)) {
            emailError = "Tài khoản đã tồn tại";
            request.setAttribute("errEmailRegister", emailError);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

        if (!phoneMatcher.matches()) {
            String errPhone = "Số điện thoại không hợp lệ.";
            request.setAttribute("errPhone", errPhone);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

        if (!passMatcher.matches()) {
            String errPassRegister = "Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số.";
            request.setAttribute("errPassRegister", errPassRegister);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

        if (!passwordConfirmRegister.equals(passwordRegister)) {
            String errPassConfirmRegister = "Password nhập lại không đúng.";
            request.setAttribute("errPassConfirmRegister", errPassConfirmRegister);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }

        if (firstNameMatcher.matches() && lastNameMatcher.matches() && emailMatcher.matches() && !userDAO.checkUser(emailRegister) && phoneMatcher.matches() && passMatcher.matches() && passwordConfirmRegister.equals(passwordRegister)) {
            try {
                userDAO.addUser(new User(idRegister, firstNameRegister, lastNameRegister, emailRegister, passwordRegister, phoneRegister));
                response.sendRedirect("login.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
    }
}
