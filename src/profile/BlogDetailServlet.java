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


@WebServlet("/BlogDetailServlet")
public class BlogDetailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String blogId = request.getParameter("blogId");
        try {
            String sql = "select blogs_title, blogs_image, blogs_createAt from blogs where blogs_id = ?";
            PreparedStatement statement = ConnectionDB.getPreparedStatement(sql);
            statement.setString(1, blogId);
            ResultSet resultSet = statement.executeQuery();
            request.setAttribute("blogDetail", resultSet);

            sql = "select paragraph_title, paragraph_content from paragraph where paragraph_blogsId = ?";
            PreparedStatement preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, blogId);
            ResultSet resultSet2 = preparedStatement.executeQuery();
            request.setAttribute("rsPR", resultSet2);

            request.getRequestDispatcher("blog-detail.jsp").forward(request, response);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
