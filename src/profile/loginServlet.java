package profile;

import Controller.UserDAOImp;
import Model.User;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.ResultSet;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    public static final long serialVersionUID = 1L;
    private UserDAOImp userDAO = new UserDAOImp();

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
        String username = request.getParameter("emailLogin");
        String password = request.getParameter("passLogin");

        String err = "";
        if (username.equals("") || password.equals("")) {
            err += "Phải nhập đầy đủ thông tin!";
        } else {
            if (userDAO.login(username, password) == false) {
                err += "Tên đăng nhập hoặc mật khẩu không chính xác!";
            }
        }

        if (err.length() > 0) {
            request.setAttribute("err", err);
        }

        String url = "/login.jsp";
        try {
            if (err.length() == 0) {
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                //session.setAttribute("cart", cart);
                userDAO.login(username, password);
                Cookie loginCookie = new Cookie("username",username);
                //setting cookie to expiry in 30 mins
                loginCookie.setMaxAge(30*60);
                response.addCookie(loginCookie);
                response.sendRedirect("index.jsp");
                url = "/index.jsp";
            } else {
                url = "/login.jsp";
                RequestDispatcher rd = getServletContext()
                        .getRequestDispatcher(url);
                rd.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("/login.jsp");
        }
    }
}
