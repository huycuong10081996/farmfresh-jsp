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


@WebServlet("/ListProductServlet")
public class ListProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        String pages = request.getParameter("pages");
        String sortSelect = request.getParameter("sortSelect");
        int page = Integer.parseInt(pages);
        try {
            //Dùng PreparedStatement để lấy id và title của category
            String sql = "select category_id, category_title from category";
            PreparedStatement statement = ConnectionDB.getPreparedStatement(sql);
            ResultSet resultSet = statement.executeQuery();
            request.setAttribute("resultSet", resultSet);

            //Dùng PreparedStatement để lấy dữ liệu ngẫu nhiên các sản phẩm
            sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, c.category_id from product p inner join category c on c.category_id = p.product_categoryId where product_status = 1 ";
            PreparedStatement specialStatement = ConnectionDB.getPreparedStatement(sql);
            ResultSet specialResultSet = specialStatement.executeQuery();
            request.setAttribute("special", specialResultSet);

            //Dùng PreparedStatement để lấy được số lượng sản phẩm của categoryId = ?
            if (category != null) {
                if (sortSelect != null) {
                    if (sortSelect.equals("name")) {
                        sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, c.category_id, rv.review_ratingStar from product p inner join category c on c.category_id = p.product_categoryId left join review rv on rv.review_productId = p.product_id where product_status = 1 and p.product_categoryId = ? group by (product_id) order by (p.product_name) asc";
                    }
                    if (sortSelect.equals("price")) {
                        sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, c.category_id, rv.review_ratingStar from product p inner join category c on c.category_id = p.product_categoryId left join review rv on rv.review_productId = p.product_id where product_status = 1 and p.product_categoryId = ? group by (product_id) order by (product_price) asc";
                    }
                    if (sortSelect.equals("salePrice")) {
                        sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, c.category_id, rv.review_ratingStar from product p inner join category c on c.category_id = p.product_categoryId left join review rv on rv.review_productId = p.product_id where product_status = 1 and p.product_categoryId = ? group by (product_id) order by (product_salePrice) asc";
                    }
                } else {
                    sql = "select p.product_id, p.product_name, p.product_image, p.product_price, p.product_salePrice, c.category_title, c.category_id, rv.review_ratingStar from product p inner join category c on c.category_id = p.product_categoryId left join review rv on rv.review_productId = p.product_id where product_status = 1 and p.product_categoryId = ? group by (product_id) order by (p.product_name) asc";
                }
            }

            PreparedStatement statement2 = ConnectionDB.getPreparedStatement(sql);
            statement2.setString(1, category);
            ResultSet resultSet2 = statement2.executeQuery();
            int listSize = 0;
            while (resultSet2.next()) {
                listSize++;
            }
            resultSet2.beforeFirst();
            request.setAttribute("ps", resultSet2);

            //Dùng PreparedStatement để phân trang
            sql += " limit ? , ?";
            PreparedStatement statement1 = ConnectionDB.getPreparedStatement(sql);
            statement1.setString(1, category);
            if (page == 1) {
                if (listSize <= 9) {
                    statement1.setInt(2, 0);
                    statement1.setInt(3, listSize);
                } else {
                    statement1.setInt(2, 0);
                    statement1.setInt(3, 9);
                }
            } else {
                statement1.setInt(2, Math.max(page * 9 - 9,9));
                statement1.setInt(3, Math.min(listSize - (page * 9 - 9) ,9));
            }
            response.getWriter().println(sql);
            ResultSet resultSetProduct = statement1.executeQuery();
            request.setAttribute("p", resultSetProduct);

            request.getRequestDispatcher("category.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

    }
}
