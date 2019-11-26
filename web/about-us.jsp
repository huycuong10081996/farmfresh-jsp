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
    <link rel="stylesheet" href="css/about-us.css">
    <link rel="stylesheet" href="css/category.css"/>
    <link rel="stylesheet" href="css/footer.css">
    <!-- <link rel="stylesheet" href="libs/Hover-master/css/hover.css"> -->
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
                    <li class="breadcrumb-item"><a class="color-green" href="about-us.jsp">About Us</a></li>
                </ol>
            </nav>
        </div>
        <div class="main__category__container">

            <%@ include file="nav-menu.jsp" %>

            <div class="about__us__wrapper">
                <div class="about__us__container">
                    <div class="blog__titles">
                        <h3>ABOUT US</h3>
                    </div>

                    <div class="about__item__wrapper">
                        <div class="about__item__container">
                            <div class="about__item row" data-aos="fade-left" data-aos-anchor="#example-anchor"
                                 data-aos-offset="500" data-aos-duration="500">
                                <div class="about__item__image">
                                    <img src="img/vanchuyen01-8391.png" alt="">
                                </div>
                                <div class="about__item__content">
                                    <h5>HANDLING</h5>
                                    <p>Clean product after havesting with modern technology</p>
                                </div>
                            </div>

                            <div class="about__item row" data-aos="fade-left" data-aos-anchor="#example-anchor"
                                 data-aos-offset="500" data-aos-duration="800">
                                <div class="about__item__image">
                                    <img src="img/baoquan-235.png" alt="">
                                </div>
                                <div class="about__item__content">
                                    <h5>STORAGE</h5>
                                    <p>Store products in cold storage at suitable temperature and humidity
                                        conditions</p>
                                </div>
                            </div>

                            <div class="about__item row" data-aos="fade-left" data-aos-anchor="#example-anchor"
                                 data-aos-offset="500" data-aos-duration="1100">
                                <div class="about__item__image">
                                    <img src="img/donggoi-2499.png" alt="">
                                </div>
                                <div class="about__item__content">
                                    <h5>PACKING</h5>
                                    <p>Packed according to export standard,ensuring the freshness to customers</p>
                                </div>
                            </div>

                            <div class="about__item row" data-aos="fade-left" data-aos-anchor="#example-anchor"
                                 data-aos-offset="500" data-aos-duration="1400">
                                <div class="about__item__image">
                                    <img src="img/vanchuyen-7552.png" alt="">
                                </div>
                                <div class="about__item__content">
                                    <h5>TRANSPORT</h5>
                                    <p>Truck and container system ready to meet the transport needs everyday</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="teammates__wrapper">
                        <div class="teamates__title" data-aos="zoom-in" data-aos-duration="600">
                            <h3>OUR TEAMATES</h3>
                        </div>
                        <div class="teammates__container row">
                            <div class="teamate__item col-lg-4" data-aos="fade-up"
                                 data-aos-anchor-placement="center-center" data-aos-duration="800">
                                <div class="teamate__image">
                                    <img src="img/46499158_906532309541687_735503026202083328_n.jpg" alt="">
                                </div>
                                <div class="teamate__content">
                                    <h4>Nguyễn Huy Cường</h4>
                                </div>
                            </div>

                            <div class="teamate__item col-lg-4" data-aos="fade-up"
                                 data-aos-anchor-placement="center-center" data-aos-duration="1200">
                                <div class="teamate__image">
                                    <img src="img/72849683_2511181802448117_8010999878404538368_o.jpg" alt="">
                                </div>
                                <div class="teamate__content">
                                    <h4>Phạm Đức Tài</h4>
                                </div>
                            </div>

                            <div class="teamate__item col-lg-4" data-aos="fade-up"
                                 data-aos-anchor-placement="center-center" data-aos-duration="1600">
                                <div class="teamate__image">
                                    <img src="img/74285211_1108899705982930_830203915457789952_o.jpg" alt="">
                                </div>
                                <div class="teamate__content">
                                    <h4>Huỳnh Trọng Nhật</h4>
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