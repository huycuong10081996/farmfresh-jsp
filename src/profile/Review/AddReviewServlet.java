package profile.Review;

import Controller.ReviewDAOImp;
import Model.Review;
import Model.User;
import vn.edu.nlu.fit.Utils.Utils;

import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


@WebServlet("/AddReviewServlet")
public class AddReviewServlet extends HttpServlet {
    private ReviewDAOImp reviewDAOImp = new ReviewDAOImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String reviewProductId = request.getParameter("productDetailId");

        int rating;
        String reviewContent = request.getParameter("reviewContent").trim();
        String ratingStar = request.getParameter("rating");

        if (ratingStar != null) {
            rating = Integer.parseInt(ratingStar);
        } else {
            rating = 5;
        }

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        UUID uuid = UUID.randomUUID();
        String reviewId = uuid.toString();

        Calendar calendars = Calendar.getInstance();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String reviewCreateAt =  dateFormat.format(calendars.getTime());

        Pattern namePattern = Pattern.compile("[A-Za-z. $|?*+()]{3,600}");
        Matcher reviewMatcher = namePattern.matcher(reviewContent);

        if (!reviewMatcher.matches() || reviewContent.equals("")) {
            String errReview = "Please write here your review.";
            request.setAttribute("errReview", errReview);
            request.getRequestDispatcher("ProductDetailServlet?productDetailId=" + reviewProductId).forward(request, response);
        }

        if (reviewMatcher.matches()) {
            try {
                if (user != null) {
                    reviewDAOImp.addReview(new Review(reviewId, user.getUserId(), reviewCreateAt, rating, reviewContent, reviewProductId));
                    response.sendRedirect("ProductDetailServlet?productDetailId=" + reviewProductId);
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.getRequestDispatcher(Utils.fullPath("ProductDetailServlet?productDetailId=" + reviewProductId)).forward(request, response);
            }
        }
    }

}
