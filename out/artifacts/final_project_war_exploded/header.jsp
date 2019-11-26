<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utils.Utils" %><%--
  Created by IntelliJ IDEA.
  User: nhath
  Date: 11/22/2019
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
</head>
<body>

<header>

    <!-- content small menu in the top -->
    <section class="top-nav">
        <div class="container">
            <div class="top-nav__container">
                <div class="language-currency">
                    <ul class="language-currency__ul">
                        <li>Language
                            <ul class="sub-menu menu">
                                <li>Việt Nam</li>
                                <li>English</li>
                            </ul>
                        </li>
                        <li>Currency
                            <ul class="sub-menu">
                                <li>VNĐ</li>
                                <li>Euro</li>
                                <li>Dollar</li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="top-nav__logo">
                    <a href="<%=Utils.fullPath("homeServlet")%>">
                        <img src="img/logo.png" alt="Farm Fresh">
                    </a>
                </div>

                <div class="user-login-search">
                    <ul class="user-login-search__ul">
                        <li class="search__header"><i class="fas fa-search"></i>
                            <div class="sub__input"><input type="text"></div>
                        </li>
                        <li class="user"><i class="fas fa-user"></i>
                            <ul class="sub-menu">
                                <li><a href="register.jsp">Register</a></li>
                                <li><a href="login.jsp">Login</a></li>
                            </ul>
                        </li>
                        <li id="clickCart"><i class="fas fa-shopping-cart"></i><span class="cart__quantity">0</span>
                        </li>
                    </ul>
                    <div class="cart__container" id="cartContainer">
                        <div class="cart__wrapper">
                            <div class="cart__image">
                                <img src="img/06-85x85.jpg" alt="">
                            </div>
                            <div class="cart-info">
                                <div class="cart-info__name">
                                    <p>Accusantium Doloremque</p>
                                </div>
                                <div class="cart-info__quantity">X 1</div>
                                <div class="cart-info__price">$10</div>
                            </div>
                            <div class="cart__button--remove">
                                <button>X</button>
                            </div>
                        </div>
                        <div class="cart__wrapper">
                            <div class="cart__image">
                                <img src="img/06-85x85.jpg" alt="">
                            </div>
                            <div class="cart-info">
                                <div class="cart-info__name">
                                    <p>Accusantium Doloremque</p>
                                </div>
                                <div class="cart-info__quantity">X 1</div>
                                <div class="cart-info__price">$10</div>
                            </div>
                            <div class="cart__button--remove">
                                <button>X</button>
                            </div>
                        </div>


                        <hr>
                        <div class="sub-total__container">
                            <div class="sub-total__content">
                                <div class="sub-total__info">
                                    <p>Sub-Total</p>
                                    <p>Eco Tax (-2.00)</p>
                                    <p>VAT(20%)</p>
                                    <p>Total</p>
                                </div>
                                <div class="sub-total__price">
                                    <p>$215.00</p>
                                    <p>$2.00</p>
                                    <p>$20.00</p>
                                    <p>$237.00</p>
                                </div>
                            </div>
                        </div>
                        <div class="total-button__wrapper">
                            <button id="viewCartHeader" class="active">View Cart</button>
                            <button id="checkoutButtonHeader">Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Main menu -->
    <section class="main-nav">
        <div class="container">
            <nav class="main-nav__container">

                <ul class="main-nav__menu">
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C100")%>">Organic Food</a>
                        <ul class="sub__main__menu">
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C101")%>">Healthful Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C103")%>">Super Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C102")%>">Lite Food</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C200")%>">Chemical Free</a></li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C300")%>">Fruits</a>
                        <ul class="sub__main__menu">
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C301")%>">Skinny Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C302")%>">Low-calorie</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C303")%>">Lite Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C304")%>">Non-Fat</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C305")%>">Peanut</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C400")%>">Nursery</a></li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category="+"C500")%>">Vegetables</a></li>
                    <li><a href="#">More</a>
                        <ul class="sub__main__menu">
                            <li><a href="blog.jsp">Blogs</a></li>
                            <li><a href="about-us.jsp">About Us</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </section>

</header>

</body>
</html>
