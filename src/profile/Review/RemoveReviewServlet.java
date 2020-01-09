package profile.Review;

import Controller.ReviewDAOImp;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/RemoveReviewServlet")
public class RemoveReviewServlet extends HttpServlet {
    private ReviewDAOImp reviewDAOImp = new ReviewDAOImp();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reviewProductId = request.getParameter("productDetailId");
        String reviewId = (String) request.getParameter("reviewId");
        if (reviewId != null) {
            try {
                reviewDAOImp.removeReview(reviewId);
                response.sendRedirect(Utils.fullPath("ProductDetailServlet?productDetailId=" + reviewProductId));
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("ProductDetailServlet?productDetailId=" + reviewProductId)).forward(request, response);
            }
        }
    }
}
