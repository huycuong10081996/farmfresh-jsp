<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utils.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <a href="<%=Utils.fullPath("HomeServlet")%>">
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
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category=C100&pages=1")%>">Organic Food</a>
                        <ul class="sub__main__menu">
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C101&pages=1")%>">Healthful Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C103&pages=1")%>">Super Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C102&pages=1")%>">Lite Food</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category=C200&pages=1")%>">Chemical Free</a></li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category=C300&pages=1")%>">Fruits</a>
                        <ul class="sub__main__menu">
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C301&pages=1")%>">Skinny Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C302&pages=1")%>">Low-calorie</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C304&pages=1")%>">Non-Fat</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C305&pages=1")%>">Peanut</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category=C400&pages=1")%>">Nursery</a></li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category=C500&pages=1")%>">Vegetables</a></li>
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