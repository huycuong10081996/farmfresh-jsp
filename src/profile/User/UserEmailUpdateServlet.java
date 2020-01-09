package profile.User;

import Controller.UserDAOImp;
import Model.User;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/UserEmailUpdateServlet")
public class UserEmailUpdateServlet extends HttpServlet {
    private UserDAOImp userDAO = new UserDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String emailUpdate = request.getParameter("emailUpdate").trim();

        Pattern emailPattern = Pattern.compile("^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$");

        Matcher emailMatcher = emailPattern.matcher(emailUpdate);

        String emailError;
        if (!emailMatcher.matches()) {
            emailError = "Email không hợp lệ";
            request.setAttribute("errEmailUpdate", emailError);
            request.getRequestDispatcher("change-email.jsp").forward(request, response);
        } else if (userDAO.checkUser(emailUpdate)) {
            emailError = "Email không hợp lệ hoặc tài khoản đã tồn tại";
            request.setAttribute("errEmailUpdate", emailError);
            request.getRequestDispatcher("change-email.jsp").forward(request, response);
        }

        if (emailMatcher.matches() && !userDAO.checkUser(emailUpdate)) {
            try {
                HttpSession session = request.getSession();
                User user = (User) session.getAttribute("user");

                user.setEmail(emailUpdate);
                userDAO.updateEmail(user);
                response.sendRedirect("change-email.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher("change-email.jsp").forward(request, response);
            }
        }
    }
}
