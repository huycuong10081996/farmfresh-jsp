package Model;

public class Blog {

    private String blogId;
    private String getBlogCreateBy;
    private String blogTitle;
    private String blogImage;
    private String blogCreateAt;
    private String blogContent;

    public Blog () {}

    public Blog(String blogId, String getBlogCreateBy, String blogTitle, String blogImage, String blogCreateAt, String blogContent) {
        this.blogId = blogId;
        this.getBlogCreateBy = getBlogCreateBy;
        this.blogTitle = blogTitle;
        this.blogImage = blogImage;
        this.blogCreateAt = blogCreateAt;
        this.blogContent = blogContent;
    }

    public String getBlogId() {
        return blogId;
    }

    public void setBlogId(String blogId) {
        this.blogId = blogId;
    }

    public String getGetBlogCreateBy() {
        return getBlogCreateBy;
    }

    public void setGetBlogCreateBy(String getBlogCreateBy) {
        this.getBlogCreateBy = getBlogCreateBy;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public String getBlogImage() {
        return blogImage;
    }

    public void setBlogImage(String blogImage) {
        this.blogImage = blogImage;
    }

    public String getBlogCreateAt() {
        return blogCreateAt;
    }

    public void setBlogCreateAt(String blogCreateAt) {
        this.blogCreateAt = blogCreateAt;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }
}
