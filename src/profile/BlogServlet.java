package profile;

import vn.edu.nlu.fit.DB.ConnectionDB;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


@WebServlet("/BlogServlet")
public class BlogServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String blogPage = request.getParameter("blogPages");
        int page = Integer.parseInt(blogPage);
        try {
            String sql = "select * from blogs";
            PreparedStatement statement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            int listSize = 0;
            while (resultSet.next()) {
                listSize++;
            }

            sql += " limit ?, ?";
            PreparedStatement statement1 = ConnectionDB.getPreparedStatement(sql);
            if (page == 1) {
                if (listSize <= 2) {
                    statement1.setInt(1, 0);
                    statement1.setInt(2, listSize);
                } else {
                    statement1.setInt(1, 0);
                    statement1.setInt(2, 2);
                }
            } else {
                statement1.setInt(1, Math.max(page * 2 - 2, 2));
                if (listSize % 2 == 0) {
                    statement1.setInt(2, 2);
                } else {
                    statement1.setInt(2, Math.min(listSize - (page * 2 - 2), 2));
                }
            }
            ResultSet resultSetBlog = statement1.executeQuery();
            request.setAttribute("blogList", resultSetBlog);

            request.getRequestDispatcher("blog.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
