<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="css/terms-and-condition.css">
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
                    <li class="breadcrumb-item"><a class="color-green" href="terms-and-condition.jsp">Terms and Conditions</a></li>
                </ol>
            </nav>
        </div>
        <div class="main__category__container">

            <%@ include file="nav-menu.jsp" %>

            <div style="display: flex; flex-direction: column">
                <div class="terms__container">
                    <div class="container">
                        <div class="terms__titles">
                            <h3>Terms and Conditions</h3>
                        </div>
                    </div>
                </div>
                <div class="container" style="flex-direction: column">

                    <section class="terms__section1">
                        <div class="terms__content">
                            This Policy is projected to all personal information and sensitive personal data or information that is given by or obtained from any person who visits or uses or accesses the website ("User"). We reserve the right to modify or review the details of this Policy without prior notice and the revised Policy will be in effect from the day of uploading. Therefore, Users are requested to periodically visit the website and review the policy.
                        </div>
                    </section>

                    <section class="term__section1">
                        <div class="sub__terms">
                            <div class="terms__title"><i class="fa fa-play-circle" style="padding: 15px"></i>RULER 1</div>
                            <div class="terms__content">
                                A User may be required to give away some Personal Information, including Sensitive Personal Information
                                while browsing through the website or for availing services at the website.
                            </div>
                        </div>

                        <div class="sub__terms">
                            <div class="terms__title"><i class="fa fa-play-circle" style="padding: 15px"></i>RULER 2</div>
                            <div class="terms__content">
                                Personal Information disclosed to Us by a User will be used by Us for one or more of the following purposes:
                                (a) to help Us in creating content that is relevant to the User; (b) to collect a database of all the
                                Personal Information collected from User
                            </div>
                        </div>

                        <div class="sub__terms">
                            <div class="terms__title"><i class="fa fa-play-circle" style="padding: 15px"></i>RULER 3</div>
                            <div class="terms__content">
                                When a User visits the website, one or more cookies shall be sent to a computer or the device being used by
                                the User to visit the websites. Cookies are used upscale the quality of the services provided by Us,
                                including for keeping User preferences...
                            </div>
                        </div>
                    </section>
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