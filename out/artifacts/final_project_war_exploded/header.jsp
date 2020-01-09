<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utils.Utils" %>
<%@ page import="Model.Orders" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.Item" %>
<%@ page import="Model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.User" %>
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
                                <li>Viet Nam</li>
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
                    <%
                        Orders orders = (Orders) session.getAttribute("order");
                        int ordersQuantity = orders == null ? 0 : orders.getItems().size();
                    %>
                    <ul class="user-login-search__ul">
                        <li class="search__header"><i class="fas fa-search"></i>
                            <div class="sub__input"><input type="text"></div>
                        </li>

                        <%
                            User u = (User) session.getAttribute("user");
                            if (u != null) {
                        %>
                        <li class="user"><i class="fas fa-user" style="color: #7fba00"></i>
                            <ul class="sub-menu">

                                <li><a href="my-account.jsp"><%=u.getFullName()%></a></li>
                                <li><a href="<%=Utils.fullPath("LogoutServlet")%>">Logout</a></li>

                            </ul>
                        </li>
                        <%
                            } else {
                        %>
                        <li class="user"><i class="fas fa-user"></i>
                            <ul class="sub-menu">

                                <li><a href="register.jsp">Register</a></li>
                                <li><a href="login.jsp">Login</a></li>

                            </ul>
                        </li>
                        <%
                            }
                        %>
                        <li id="clickCart"><i class="fas fa-shopping-cart"></i><span class="cart__quantity"><%=ordersQuantity%></span>
                        </li>
                    </ul>

                    <%
                        if (orders != null) {
                    %>
                    <div class="cart__container" id="cartContainer">
                        <%
                            List<Item> items = (List<Item>) orders.getItems();
                            for (Item item : items) {
                        %>

                        <div class="cart__wrapper">
                            <div class="cart__image" style="height:100px; width: 100px">
                                <img src="<%=item.getProduct().getProductImageURL()%>" alt="">
                            </div>
                            <div class="cart-info">
                                <div class="cart-info__name">
                                    <p><%=item.getProduct().getProductName()%></p>
                                </div>
                                <div class="cart-info__quantity"><%=item.getQuantity()%></div>
                                <div class="cart-info__price">$<%=item.getPrice()%></div>
                            </div>
                            <div class="cart__button--remove">
                                <a href="<%=Utils.fullPath("DeleteServlet")%>">X</a>
                            </div>
                        </div>

                        <%
                            }
                        %>
                        <hr>
                        <div class="sub-total__container">
                            <div class="sub-total__content">
                                <div class="sub-total__info">
                                    <p>Total</p>
                                </div>
                                <div class="sub-total__price">
                                    <p>$<%=orders.totalOrder()%></p>
                                </div>
                            </div>
                        </div>
                        <div class="total-button__wrapper">
                            <a class="go__to view__cart" href="<%=Utils.fullPath("shopping-cart")%>" style="padding: 6px 12px; background: #7fba00; color: #fff; border-radius: 12px">View Cart</a>
                            <a class="go__to" href="checkout.jsp" style="padding: 6px 12px; background: #7fba00; color: #fff; border-radius: 12px">Checkout</a>
                        </div>
                    </div>
                    <%
                        } else {
                    %>

                    <div class="cart__container" id="cartContainer" style="display: flex; justify-content: center; align-items: center">
                        <h6 style="color: #fff; margin: 0; padding-top: 20px; padding-bottom: 20px">Your Shopping Cart is Empty</h6>
                    </div>

                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </section>

    <!-- Main menu -->
    <section class="main-nav">
        <div class="container">
            <nav class="main-nav__container">

                <ul class="main-nav__menu">
                    <li><a href="#">Organic Food</a>
                        <ul class="sub__main__menu">
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C101&pages=1")%>">Healthful Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C103&pages=1")%>">Super Food</a></li>
                            <li><a href="<%=Utils.fullPath("ListProductServlet?category=C102&pages=1")%>">Lite Food</a></li>
                        </ul>
                    </li>
                    <li><a href="<%=Utils.fullPath("ListProductServlet?category=C200&pages=1")%>">Chemical Free</a></li>
                    <li><a href="#">Fruits</a>
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
                            <li><a href="<%=Utils.fullPath("BlogServlet?blogPages=1")%>">Blogs</a></li>
                            <li><a href="about-us.jsp">About Us</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </section>

</header>