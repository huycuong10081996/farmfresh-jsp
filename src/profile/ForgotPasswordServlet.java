package profile;

import Controller.UserDAOImp;
import Model.User;

import javax.jms.Session;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.PasswordAuthentication;
import java.util.Properties;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/ForgotPasswordServlet")
public class ForgotPasswordServlet extends HttpServlet {
    private UserDAOImp userDAO = new UserDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String forgotEmail = request.getParameter("emailForgot").trim();
        Pattern emailPattern = Pattern.compile("^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$");
        Matcher emailMatcher = emailPattern.matcher(forgotEmail);

        String emailError;
        if (!emailMatcher.matches()) {
            emailError = "Email không hợp lệ";
            request.setAttribute("errEmailForgot", emailError);
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        } else if (userDAO.checkUser(forgotEmail)) {
            emailError = "Tài khoản đã tồn tại";
            request.setAttribute("errEmailForgot", emailError);
            request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
        }

        if (emailMatcher.matches() && !userDAO.checkUser(forgotEmail)) {
            try {
              //do some thing

                response.sendRedirect("login.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        }
    }
}
