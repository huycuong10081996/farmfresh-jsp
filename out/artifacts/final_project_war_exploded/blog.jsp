<%@ page import="Controller.BlogDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.Blog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>

    <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet"/>

    <script src="https://kit.fontawesome.com/6b4959f5c2.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/header.css"/>
    <link rel="stylesheet" href="css/category.css"/>
    <link rel="stylesheet" href="css/blog.css">
    <link rel="stylesheet" href="css/footer.css">

</head>

<body>
<%@ include file="header.jsp" %>
<main>
    <section class="wrapper-category">
        <div class="breadcrumb__container row align-items-center">
            <div class="breadcrumb__icon">
                <i class="fa fa-home"></i>
            </div>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb non-bg">
                    <li class="breadcrumb-item"><a class="color-green" href="<%=Utils.fullPath("HomeServlet")%>">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Blogs</a></li>
                </ol>
            </nav>
        </div>
        <div class="main__category__container">
            <%@ include file="nav-menu.jsp" %>

            <div class="blog__wrapper">
                <div class="blog">
                    <div class="blog__titles">
                        <h3>ALL BLOGS</h3>
                    </div>

                    <div class="blog__container">
                        <%
                            ResultSet resultSetBlog = (ResultSet) request.getAttribute("blogList");
                            ArrayList<Blog> list = new ArrayList<>();
                            while (resultSetBlog.next()) {
                                String blogId = resultSetBlog.getString(1);
                                String blogCreateBy = resultSetBlog.getString(2);
                                String blogTitle = resultSetBlog.getString(3);
                                String blogImage = resultSetBlog.getString(4);
                                String blogCreateAt = resultSetBlog.getString(5);
                                String blogContent = resultSetBlog.getString(6);
                                list.add(new Blog(blogId, blogCreateBy, blogTitle, blogImage, blogCreateAt, blogContent));
                            }
                            for (Blog b : list) {
                        %>

                        <div class="blog__item" id="<%=b.getBlogId()%>">
                            <div class="blog__item__title">
                                <a href="<%=Utils.fullPath("BlogDetailServlet?blogId="+b.getBlogId())%>"><%=b.getBlogTitle()%>
                                </a>
                            </div>
                            <div class="blog__item__image">
                                <img src="<%=b.getBlogImage()%>" alt="">
                            </div>
                            <div class="blog__item__description">
                                <div class="blog__item__datetime">
                                    <i class="far fa-calendar-alt"></i>&nbsp;<%=b.getBlogCreateAt()%>
                                </div>

                                <div class="blog__item__comment">
                                    <div class="comment">
                                        0&nbsp;Comment
                                    </div>

                                    <div class="leave__comment">
                                        <a href="">
                                            <i class="far fa-comment"></i>&nbsp;Leave Comment
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="blog__item__content">
                                <div class="content__item">
                                    <%=b.getBlogContent()%>
                                </div>
                                <div class="read__more__blog__btn">
                                    <a href="<%=Utils.fullPath("BlogDetailServlet?blogId="+b.getBlogId())%>">Read More</a>
                                </div>
                            </div>
                        </div>

                        <%
                            }
                        %>

                        <div class="show__page__container">
                            <%
                                    int size = new BlogDAO().getCount();
                                    int numPager = 1;
                                    int show = 2;
                                    if (size <= 2) {
                                        show = size;
                                    } else {
                                        if (size % 2 == 0) {
                                            numPager = size / 2;
                                        } else {
                                            numPager = size / 2 + 1;
                                        }
                                    }
                            %>
                            <div class="show__page">
                                <p>Showing 1 to <%=show%> of <%=size%>
                                    (<%=numPager%> Pages)</p>
                            </div>
                            <div class="show__pagination">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">

                                        <li>
                                            <a href="<%=Utils.fullPath("BlogServlet?blogPages=1")%>">First</a>
                                        </li>
                                        <%
                                            for (int i = 1; i <= numPager; i++) {
                                        %>
                                        <li>
                                            <a href="<%=Utils.fullPath("BlogServlet?blogPages="+i)%>"><%=i%>
                                            </a></li>
                                        <%
                                            }
                                        %>
                                        <li>
                                            <a href="<%=Utils.fullPath("BlogServlet?blogPages="+numPager)%>">Last</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>

<%@ include file="scroll-to-top.jsp" %>

<!-- Javascript -->
<script src="js/main.js"></script>
<script src="js/home.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
</script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>
    AOS.init();
</script>
</body>

</html>