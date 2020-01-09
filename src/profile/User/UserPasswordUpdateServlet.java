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


@WebServlet("/UserPasswordUpdateServlet")
public class UserPasswordUpdateServlet extends HttpServlet {
    private UserDAOImp userDAO = new UserDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String passwordUpdate = request.getParameter("passwordUpdate").trim();
        String passwordConfirmUpdate = request.getParameter("passwordConfirmUpdate").trim();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        Pattern passPattern = Pattern.compile("^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$");
        Matcher passMatcher = passPattern.matcher(passwordUpdate);

        if (!passMatcher.matches()) {
            String errPassUpdate = "Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số.";
            request.setAttribute("errPasswordUpdate", errPassUpdate);
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
        }

        if (!passwordConfirmUpdate.equals(passwordUpdate)) {
            String errPassConfirmUpdate = "Password nhập lại không đúng.";
            request.setAttribute("errPassConfirmUpdate", errPassConfirmUpdate);
            request.getRequestDispatcher("change-password.jsp").forward(request, response);
        }

        if (passMatcher.matches()) {
            user.setUserPassword(passwordUpdate);
            if (passwordConfirmUpdate.equals(passwordUpdate)) {
                try {
                    userDAO.updatePassword(user);
                    response.sendRedirect("change-password.jsp");
                } catch (Exception e) {
                    e.printStackTrace();
                    request.getRequestDispatcher("change-password.jsp").forward(request, response);
                }
            }
        }
    }
}
