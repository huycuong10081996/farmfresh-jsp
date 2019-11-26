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
                    <li class="breadcrumb-item"><a class="color-green" href="blog.jsp">Blogs</a></li>
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
                        <div class="blog__item">
                            <div class="blog__item__title">
                                <a href="">Necessitatibus Saepe</a>
                            </div>
                            <div class="blog__item__image">
                                <img src="img/blog-6-890x620.jpg" alt="">
                            </div>
                            <div class="blog__item__description">
                                <div class="blog__item__datetime">
                                    <i class="far fa-calendar-alt"></i>&nbsp;22 May, 2019
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
                                    The standard Lorem Ipsum passage, used since the 1500s"Lorem...
                                </div>
                                <div class="read__more__blog__btn">
                                    <a href="">Read More</a>
                                </div>
                            </div>

                        </div>

                        <div class="blog__item">
                            <div class="blog__item__title">
                                <a href="">Necessitatibus Saepe</a>
                            </div>
                            <div class="blog__item__image">
                                <img src="img/blog-6-890x620.jpg" alt="">
                            </div>
                            <div class="blog__item__description">
                                <div class="blog__item__datetime">
                                    <i class="far fa-calendar-alt"></i>&nbsp;22 May, 2019
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
                                    The standard Lorem Ipsum passage, used since the 1500s"Lorem...
                                </div>
                                <div class="read__more__blog__btn">
                                    <a href="">Read More</a>
                                </div>
                            </div>

                        </div>

                        <div class="blog__item">
                            <div class="blog__item__title">
                                <a href="">Necessitatibus Saepe</a>
                            </div>
                            <div class="blog__item__image">
                                <img src="img/blog-6-890x620.jpg" alt="">
                            </div>
                            <div class="blog__item__description">
                                <div class="blog__item__datetime">
                                    <i class="far fa-calendar-alt"></i>&nbsp;22 May, 2019
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
                                    The standard Lorem Ipsum passage, used since the 1500s"Lorem...
                                </div>
                                <div class="read__more__blog__btn">
                                    <a href="blog-detail.jsp">Read More</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>

<%@ include file="scroll-to-top.jsp"%>

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