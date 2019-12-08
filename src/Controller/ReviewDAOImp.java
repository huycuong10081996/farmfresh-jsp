package Controller;

import Model.Review;
import vn.edu.nlu.fit.DB.ConnectionDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReviewDAOImp implements ReviewDAO {
    @Override
    public void addReview(Review review) {
        String sql = "insert into review value(?,?,?,?,?,?)";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = ConnectionDB.getPreparedStatement(sql);
            preparedStatement.setString(1, review.getReviewId());
            preparedStatement.setString(2, review.getReviewCreateBy());
            preparedStatement.setString(3, review.getReviewCreateAt());
            preparedStatement.setInt(4, review.getReviewRatingStar());
            preparedStatement.setString(5, review.getReviewContent());
            preparedStatement.setString(6, review.getReviewProductId());
            preparedStatement.executeUpdate();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
