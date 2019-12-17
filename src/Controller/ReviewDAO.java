package Controller;

import Model.Review;

public interface ReviewDAO {

    public void addReview(Review review);

    public void removeReview(String reviewId);
}
