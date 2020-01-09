package profile.Admin.Admin;

import Controller.AdminDAOImp;
import Model.Admin;
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


@WebServlet("/AddAdminServlet")
public class AddAdminServlet extends HttpServlet {
    private AdminDAOImp adminDAOImp = new AdminDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String adminName = request.getParameter("adminName").trim();
        String adminEmail = request.getParameter("adminEmail").trim();
        String adminPassword = request.getParameter("adminPassword").trim();
        int adminPermission = Integer.parseInt(request.getParameter("adminPermission"));

        UUID uuid = UUID.randomUUID();
        String adminId = uuid.toString();

        Pattern namePattern = Pattern.compile("[A-Za-z. ]{3,30}");
        Pattern passPattern = Pattern.compile("^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$");
        Pattern emailPattern = Pattern.compile("^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$");

        Matcher emailMatcher = emailPattern.matcher(adminEmail);
        Matcher nameMatcher = namePattern.matcher(adminName);
        Matcher passMatcher = passPattern.matcher(adminPassword);

        String emailError;
        if (!emailMatcher.matches()) {
            emailError = "Email không hợp lệ";
            request.setAttribute("errAdminEmailAdd", emailError);
            request.getRequestDispatcher("AdminHomeAdminServlet?pages=1").forward(request, response);
        } else if (adminDAOImp.checkAdmin(adminEmail)) {
            emailError = "Tài khoản đã tồn tại";
            request.setAttribute("errAdminEmailAdd", emailError);
            request.getRequestDispatcher("AdminHomeAdminServlet?pages=1").forward(request, response);
        }

        if (!nameMatcher.matches()) {
            String errFirstName = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errAdminNameAdd", errFirstName);
            request.getRequestDispatcher("AdminHomeAdminServlet?pages=1").forward(request, response);
        }


        if (!passMatcher.matches()) {
            String errPassRegister = "Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số.";
            request.setAttribute("errAdminPassAdd", errPassRegister);
            request.getRequestDispatcher("AdminHomeAdminServlet?pages=1").forward(request, response);
        }

        if (nameMatcher.matches() &&  emailMatcher.matches() && !adminDAOImp.checkAdmin(adminEmail) && passMatcher.matches()) {
            try {
                adminDAOImp.addAdmin(new Admin(adminId, adminName, adminEmail, adminPassword, adminPermission));
                response.sendRedirect(Utils.fullPath("AdminHomeAdminServlet?pages=1"));
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("AdminHomeAdminServlet?pages=1")).forward(request, response);
            }
        }
    }
}
