package profile;

import Controller.OrdersDAOImp;
import Model.Orders;
import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;
import vn.edu.nlu.fit.Utils.Utils;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    public static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        toDo(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public void toDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("utf8");
            response.setCharacterEncoding("utf8");

            String userEmail = request.getParameter("emailLogin").trim();
            String passWord = request.getParameter("passLogin").trim();

            String sql = "select * from `user` where user_email = ?";
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, userEmail);
            response.getWriter().println(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            resultSet.last();
            int i = resultSet.getRow();
            if (resultSet != null && i == 1) {
                resultSet.first();
                if (userEmail.equals(resultSet.getString(5)) && !passWord.equals(resultSet.getString(6))) {
                    request.setAttribute("errPassword", "Bạn nhập sai mật khẩu, xin vui lòng nhập lại");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
                if (userEmail.equals(resultSet.getString(5)) && passWord.equals(resultSet.getString(6))) {
                    User user = new User();
                    user.setUserId(resultSet.getString(1));
                    user.setFirstName(resultSet.getString(2));
                    user.setLastName(resultSet.getString(3));
                    user.setFullName(resultSet.getString(4));
                    user.setEmail(resultSet.getString(5));
                    user.setUserPassword(resultSet.getString(6));
                    user.setUserPhone(resultSet.getString(7));
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    response.sendRedirect(Utils.fullPath("HomeServlet"));
                }
            } else {
                request.setAttribute("errEmail", "Chúng tôi không tìm thấy email của bạn trong hệ thống.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Lỗi kết nối tới CSDL");
            request.setAttribute("err", "Sai Email hoặc mật khẩu.");
            request.getRequestDispatcher(Utils.fullPath("HomeServlet")).forward(request, response);
        }
    }
}
