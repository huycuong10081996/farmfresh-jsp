package Model;

public class Review {
    private String reviewId;
    private String reviewCreateBy;
    private String reviewCreateAt;
    private int reviewRatingStar;
    private String reviewContent;
    private String reviewProductId;

    public Review(String reviewId, String reviewCreateBy, String reviewCreateAt, int reviewRatingStar, String reviewContent, String reviewProductId) {
        this.reviewId = reviewId;
        this.reviewCreateBy = reviewCreateBy;
        this.reviewCreateAt = reviewCreateAt;
        this.reviewRatingStar = reviewRatingStar;
        this.reviewContent = reviewContent;
        this.reviewProductId = reviewProductId;
    }

    public String getReviewId() {
        return reviewId;
    }

    public void setReviewId(String reviewId) {
        this.reviewId = reviewId;
    }

    public String getReviewCreateBy() {
        return reviewCreateBy;
    }

    public void setReviewCreateBy(String reviewCreateBy) {
        this.reviewCreateBy = reviewCreateBy;
    }

    public String getReviewCreateAt() {
        return reviewCreateAt;
    }

    public void setReviewCreateAt(String reviewCreateAt) {
        this.reviewCreateAt = reviewCreateAt;
    }

    public int getReviewRatingStar() {
        return reviewRatingStar;
    }

    public void setReviewRatingStar(int reviewRatingStar) {
        this.reviewRatingStar = reviewRatingStar;
    }

    public String getReviewContent() {
        return reviewContent;
    }

    public void setReviewContent(String reviewContent) {
        this.reviewContent = reviewContent;
    }

    public String getReviewProductId() {
        return reviewProductId;
    }

    public void setReviewProductId(String reviewProductId) {
        this.reviewProductId = reviewProductId;
    }
}
