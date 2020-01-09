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
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
    private UserDAOImp userDAOImp = new UserDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        int page = Integer.parseInt(request.getParameter("pageUserEdit"));

        String userIdEdit = request.getParameter("userIdEdit");
        String userFirstNameEdit = request.getParameter("userFirstNameEdit").trim();
        String userLastNameEdit = request.getParameter("userLastNameEdit").trim();
        String userEmailEdit = request.getParameter("userEmailEdit").trim();
        String userPasswordEdit = request.getParameter("userPasswordEdit").trim();
        String userPhoneEdit = request.getParameter("userPhoneEdit").trim();

        /*Pattern namePattern = Pattern.compile("[A-Za-z. ]{3,30}");
        Pattern phonePattern = Pattern.compile("^[0-9]{9,11}$");
        Pattern passPattern = Pattern.compile("^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$");
        Pattern emailPattern = Pattern.compile("^[\\w!#$%&'*+/=?`{|}~^-]+(?:\\.[\\w!#$%&'*+/=?`{|}~^-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$");

        Matcher emailMatcher = emailPattern.matcher(userEmailEdit);
        Matcher firstNameMatcher = namePattern.matcher(userFirstNameEdit);
        Matcher lastNameMatcher = namePattern.matcher(userLastNameEdit);
        Matcher phoneMatcher = phonePattern.matcher(userPasswordEdit);
        Matcher passMatcher = passPattern.matcher(userPhoneEdit);

        if (!emailMatcher.matches()) {
            String emailError = "Email không hợp lệ";
            request.setAttribute("errUserEmailEdit", emailError);
            request.getRequestDispatcher("AdminHomeUserServlet").forward(request, response);
        }

        if (!firstNameMatcher.matches()) {
            String errFirstName = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errUserFirstNameEdit", errFirstName);
            request.getRequestDispatcher("AdminHomeUserServlet").forward(request, response);
        }

        if (!lastNameMatcher.matches()) {
            String errLastName = "First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.";
            request.setAttribute("errUserLastNameEdit", errLastName);
            request.getRequestDispatcher("AdminHomeUserServlet").forward(request, response);
        }

        if (!phoneMatcher.matches()) {
            String errPhone = "Số điện thoại không hợp lệ.";
            request.setAttribute("errUserPhoneEdit", errPhone);
            request.getRequestDispatcher("AdminHomeUserServlet").forward(request, response);
        }

        if (!passMatcher.matches()) {
            String errPassRegister = "Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số.";
            request.setAttribute("errUserPassEdit", errPassRegister);
            request.getRequestDispatcher("AdminHomeUserServlet").forward(request, response);
        }

        if (firstNameMatcher.matches() && lastNameMatcher.matches() && emailMatcher.matches() && phoneMatcher.matches() && passMatcher.matches()) {
        }*/
        try {
            userDAOImp.updateUser(new User(userIdEdit, userFirstNameEdit, userLastNameEdit, userEmailEdit, userPasswordEdit, userPhoneEdit));
            response.sendRedirect("AdminHomeUserServlet?pages=" + page);
        } catch (Exception e) {
            e.printStackTrace();
            request.getRequestDispatcher(Utils.fullPath("AdminHomeUserServlet?pages=" + page)).forward(request, response);
        }
    }
}
