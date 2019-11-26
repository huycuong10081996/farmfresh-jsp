<%--
  Created by IntelliJ IDEA.
  User: nhath
  Date: 11/22/2019
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
    <link rel="stylesheet" href="css/footer.css">

</head>
<body>

<div class="category__search">
    <div class="search__by__category">
        <div class="search__title">
            <h3>ACCOUNT</h3>
        </div>

        <div class="list__category">
            <ul>
                <li>
                    <a href="login.jsp" style="color:#212529">
                        Login
                    </a>
                </li>
                <li>
                    <a href="register.jsp" style="color:#212529">
                        Register
                    </a>
                </li>
                <li>
                    <a href="forgot-password.jsp" style="color:#212529">
                        Forgotten Password
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="search__by__refine">
        <div class="search__title">
            <h3>INFORMATIONS</h3>
        </div>
        <div class="list__category">
            <ul>
                <li>
                    <a href="about-us.jsp" style="color:#212529">
                        About Us
                    </a>
                </li>
                <li>
                    <a href="delivery.jsp" style="color:#212529">
                        Delivery & Shipping
                    </a>
                </li>
                <li>
                    <a href="privacy-policy.jsp" style="color:#212529">
                        Privacy Policy
                    </a>
                </li>
                <li>
                    <a href="terms-and-condition.jsp" style="color:#212529">
                        Terms and Conditions
                    </a>
                </li>
                <li>
                    <a href="contact-us.jsp" style="color:#212529">
                        Contact Us
                    </a>
                </li>
                <li>
                    <a href="secure-payment.jsp" style="color:#212529">
                        Secure Payment
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="banner__container">
        <img src="img/left-banner.jpg" alt=""/>
    </div>
    <div class="specials__container">
        <div class="search__title">
            <h3>SPECIALS</h3>
        </div>
        <div class="product-list">
            <ul>
                <li>
                    <div class="product-item">
                        <div class="image">
                            <img src="img/dudu.jpg" alt=""/>
                        </div>
                        <div class="content__wrapper">
                            <div class="content">
                                <span class="hover">Exercitat Virginia</span>
                                <div class="price">
                                    <div class="price__sale">
                                        <span>$100</span>
                                    </div>
                                    <div class="price__cost">
                                        <span>$119</span>
                                    </div>
                                </div>
                                <a class="hover">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="image">
                            <img src="img/dudu.jpg" alt=""/>
                        </div>
                        <div class="content__wrapper">
                            <div class="content">
                                <span class="hover">Exercitat Virginia</span>
                                <div class="price">
                                    <div class="price__sale">
                                        <span>$100</span>
                                    </div>
                                    <div class="price__cost">
                                        <span>$119</span>
                                    </div>
                                </div>
                                <a class="hover">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </li>

                <li>
                    <div class="product-item">
                        <div class="image">
                            <img src="img/dudu.jpg" alt=""/>
                        </div>
                        <div class="content__wrapper">
                            <div class="content">
                                <span class="hover">Exercitat Virginia</span>
                                <div class="price">
                                    <div class="price__sale">
                                        <span>$100</span>
                                    </div>
                                    <div class="price__cost">
                                        <span>$119</span>
                                    </div>
                                </div>
                                <a class="hover">Add To Cart</a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
