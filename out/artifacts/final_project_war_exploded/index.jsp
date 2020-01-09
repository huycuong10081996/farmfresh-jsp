<%@ page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link href="https://fonts.googleapis.com/css?family=Titillium+Web&display=swap" rel="stylesheet">

    <script src="https://kit.fontawesome.com/6b4959f5c2.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/footer.css">
</head>

<body>

<%@ include file="header.jsp" %>

<main>
    <section class="hero-banner">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/main-banner-1-1903x633.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="img/main-banner-2-1903x633.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="img/main-banner-3-1903x633.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>

    <section class="main-content">
        <div class="container">

            <div class="main-content__container">

                <div class="categories-list__container">
                    <ul class="categories-list" id="categoriesList">
                        <li class="active"><a class="" href="">Lastest</a>
                        </li>
                        <li class="hvr-bounce-to-right"><a href="">Bestseller</a></li>
                        <li class="hvr-bounce-to-right"><a href="">Special</a></li>
                    </ul>
                </div>

                    <div data-aos="fade-up" data-aos-anchor-placement="top-center" data-aos-duration="1500"
                     class="product-list">
                    <div class="product-list__container">

                        <%
                            ResultSet homeResultSet = (ResultSet) request.getAttribute("homeResultSet");
                            int count = 0;
                            while (homeResultSet.next()) {
                                count++;
                        %>

                        <div class="product-item" id="<%=homeResultSet.getString(1)%>">
                            <div class="product-item__image">
                                <img src="<%=homeResultSet.getString(3)%>">
                            </div>

                            <div class="product-item__content">
                                <p><%=homeResultSet.getString(2)%>
                                </p>
                                <%
                                    if (homeResultSet.getDouble(5) == 0) {
                                %>

                                <p><strong>$<%=homeResultSet.getDouble(4)%></strong></p>

                                <%
                                    } else {
                                %>

                                <p><strong>$<%=homeResultSet.getDouble(5)%>
                                </strong>
                                    <span class="price--line-through">$<%=homeResultSet.getDouble(4)%></span>
                                </p>

                                <%
                                    }
                                %>
                                <ul class="star-rank">
                                    <%
                                        if (homeResultSet.getInt(6) == 0) {
                                            for (int i = 1; i <= 5; i++) {
                                    %>
                                    <li><i class="fas fa-star"></i></li>
                                    <%
                                        }
                                    } else {
                                        for (int i = 1; i <= homeResultSet.getInt(6); i++) {
                                    %>
                                    <li><i class="fas fa-star"></i></li>
                                    <%
                                            }
                                        }
                                    %>
                                </ul>
                                <a class="add-to-cart__btn" href="<%=Utils.fullPath("AddCartServlet?productId="+homeResultSet.getString(1))%>">add to cart</a>
                            </div>
                        </div>

                        <%
                                if (count == 8) {
                                    break;
                                }
                            }
                        %>

                    </div>
                </div>

                <div class="see-more__btn">
                    <p id="seeMoreBtn">see more</p>
                </div>

                <div id="productList" class="product-list product-list__none">
                    <div class="product-list__container">
                        <%
                            homeResultSet.absolute(8);
                            while (homeResultSet.next()) {
                        %>

                        <div class="product-item" id="<%=homeResultSet.getString(1)%>">
                            <div class="product-item__image">
                                <img src="<%=homeResultSet.getString(3)%>">
                            </div>

                            <div class="product-item__content">
                                <p><%=homeResultSet.getString(2)%>
                                </p>
                                <p><strong><%=homeResultSet.getString(5)%>
                                </strong>
                                    <span class="price--line-through"><%=homeResultSet.getString(4)%></span>
                                </p>
                                <ul class="star-rank">
                                    <%
                                        int ratingStart = homeResultSet.getInt(6);
                                        if (ratingStart == 0) {
                                            for (int i = 1; i <= 5; i++) {
                                    %>
                                    <li><i class="fas fa-star"></i></li>
                                    <%
                                        }
                                    } else {
                                        for (int i = 1; i <= ratingStart; i++) {
                                    %>
                                    <li><i class="fas fa-star"></i></li>
                                    <%
                                            }
                                        }
                                    %>
                                </ul>
                                <a class="add-to-cart__btn" href="<%=Utils.fullPath("AddCartServlet?productId="+homeResultSet.getString(1))%>">add to cart</a>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
                <div class="hide-more__btn hide-more__btn--none">
                    <p id="hideMoreBtn">Hide</p>
                </div>
            </div>

        </div>

    </section>

    <section class="list__icon__wrapper">
        <div class="container">

            <div class="list__icon__container">
                <h1>shop by category</h1>
                <div class="list__icon__main">
                    <ul class="list__icon__hover">
                        <li><img src="img/category-icon1.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon2.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon3.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon4.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon5.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon6.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon7.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon8.png" alt="" aria-hidden="true"></li>
                        <li><img src="img/category-icon9.png" alt="" aria-hidden="true"></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="customer__review">
        <div class="container">
            <div class="customer__review__container">
                <h1 class="customer__review__title" data-aos="fade-down" data-aos-duration="1500"
                    data-aos-easing="linear">what they say</h1>
                <div class="review__container">
                    <div class="review__description" data-aos="zoom-in-left" data-aos-duration="1700">
                        <div class="review__top">
                            <div class="review__top__image">
                                <img src="img/46499158_906532309541687_735503026202083328_n.jpg" alt="">
                            </div>
                            <div class="review__top__title">
                                <p class="customer__name">Cường Nguyễn</p>
                                <p class="customer__position">Web Developer</p>
                            </div>
                        </div>
                        <div class="review__bottom">
                            <div class="review__bottom__icon">
                                <img src="img/quote.png" alt="">
                            </div>
                            <div class="review__bottom__description">
                                <p>There are many variations of passages of Lorem Ipsum available, but the majority
                                    have suffered alteration in some form, by injected humour.</p>
                            </div>

                        </div>
                    </div>

                    <div class="review__description" data-aos="zoom-in-right" data-aos-duration="1900">
                        <div class="review__top">
                            <div class="review__top__image">
                                <img src="img/46499158_906532309541687_735503026202083328_n.jpg" alt="">
                            </div>
                            <div class="review__top__title">
                                <p class="customer__name">Cường Nguyễn</p>
                                <p class="customer__position">Web Developer</p>
                            </div>
                        </div>
                        <div class="review__bottom">
                            <div class="review__bottom__icon">
                                <img src="img/quote.png" alt="">
                            </div>
                            <div class="review__bottom__description">

                                <p>There are many variations of passages of Lorem Ipsum available, but the majority
                                    have suffered alteration in some form, by injected humour.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="lastest__blog">
        <div class="container">
            <div class="lastest__blog__title row justify-content-center">
                <h1>LASTEST BLOG</h1>
            </div>

            <div class="blog__list__wrapper row justify-content-between">

                <%
                    ResultSet resultSetBlog = (ResultSet) request.getAttribute("blogHome");
                    int counter = 0;
                    int size = 0;
                    Random random = new Random();
                    while (resultSetBlog.next()) {
                        size++;
                    }
                    resultSetBlog.beforeFirst();
                    while (resultSetBlog.next()) {
                        int r = random.nextInt(size);
                        resultSetBlog.absolute(r);
                        counter++;
                %>
                <div class="blog__home__item" style=" background-image: url(<%=resultSetBlog.getString(4)%>)">
                    <div class="blog__content">
                        <div class="blog__date"><i class="far fa-calendar-alt"></i>&nbsp;<%=resultSetBlog.getString(5)%></div>
                        <div class="blog__title"><%=resultSetBlog.getString(2)%></div>
                        <div class="blog__desc"><%=resultSetBlog.getString(3)%>
                        </div>
                        <div class="read__more__blog">
                            <a href="<%=Utils.fullPath("BlogDetailServlet?blogId="+resultSetBlog.getString(1))%>">Read more</a>
                        </div>
                    </div>
                </div>

                <%
                        if (counter == 3) {
                            break;
                        }
                    }
                %>

            </div>
        </div>
    </section>

</main>

<%@ include file="footer.jsp" %>

<%@include file="scroll-to-top.jsp" %>

<!-- Javascript -->
<script src="js/main.js"></script>
<script src="js/home.js"></script>

<script async>
    const productItem = document.querySelectorAll(".product-item");
    for (let i = 0; i < productItem.length; i++) {
        productItem[i].addEventListener("click", function () {
            window.location.href = "http://localhost:8080/final_project/ProductDetailServlet?productDetailId=" + productItem[i].getAttribute('id').trim();
        });
    }
</script>

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