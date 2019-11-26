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
    <link rel="stylesheet" href="css/contact-us.css">
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

                    <li class="breadcrumb-item color-green" aria-current="page">Contact Us</li>

                </ol>
            </nav>
        </div>
        <div class="main__category__container">
            <%@ include file="nav-menu.jsp" %>
            <div class="contact__wrapper">
                <div class="contact__us">
                    <div class="contact__titles">
                        <h3>CONTACT US</h3>
                    </div>

                    <div class="contact__location">
                        <div class="mini__title">
                            <p>Our Location</p>
                        </div>

                        <div class="location__wrapper">
                            <div class="location__address location__item">
                                <div class="icon__location">
                                    <i class="fas fa-home"></i>
                                </div>

                                <div class="content__location">
                                    <p>Farm Fresh Fruits</p>
                                    <p>Ho Chi Minh City</p>
                                </div>
                            </div>

                            <div class="location__phone location__item">
                                <div class="icon__location">
                                    <i class="fas fa-mobile-alt"></i>
                                </div>
                                <div class="content__location">
                                    <p>Telephone </p>
                                    <p>(+84) 0123892029</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="contact__form">
                        <div class="mini__title">
                            <p>Contact Form</p>
                        </div>

                        <div>
                            <form class="contact__form__wrapper" action="">
                                <div>
                                    <p><span>*</span>&nbsp;Your Name</p>
                                    <input type="text">
                                </div>

                                <div>
                                    <p><span>*</span>&nbsp;Your Email</p>
                                    <input type="text">
                                </div>

                                <div>
                                    <p><span>*</span>&nbsp;Your Comments</p>
                                    <textarea name="" id="" cols="30" rows="10"></textarea>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="step2__btn">
                        <a href="">Submit</a>
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