package profile;

import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    public static final long serialVersionUID = 1L;

    public loginServlet () {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        toDo(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    public void toDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
        String userName = request.getParameter("emailLogin");
        String passWord = request.getParameter("passLogin");
        String sql = "select * from `user` where user_email = '" + userName + "' and user_password = '" + passWord + "'";
        ResultSet resultSet;
        try {
            resultSet = ConnectionDB.connect().executeQuery(sql);
            resultSet.last();
            int i = resultSet.getRow();
            if (resultSet != null && i == 1) {
                resultSet.first();
                User user = new User();
                user.setUserId(resultSet.getString(1));
                user.setFirstName(resultSet.getString(2));
                user.setLastName(resultSet.getString(3));
                user.setFullName(resultSet.getString(4));
                user.setEmail(resultSet.getString(5));
                user.setUserPassword(resultSet.getString(6));
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                response.sendRedirect("index2.jsp");

            } else {
                request.setAttribute("err", "Sai Username hoặc mật khẩu");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Lỗi kết nối tới CSDL");
            request.setAttribute("err", "Sai Email hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
