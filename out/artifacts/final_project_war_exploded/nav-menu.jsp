<%@ page import="java.util.Random" %>
<div class="category__search">
    <div class="search__by__category">
        <div class="search__title">
            <h3>ACCOUNT</h3>
        </div>


        <div class="list__category">
            <%
                if (u != null) {
            %>
            <ul>
                <li>
                    <a href="my-account.jsp" style="color:#212529">
                        My account
                    </a>
                </li>
                <li>
                    <a href="change-email.jsp" style="color:#212529">
                        Change Your Email
                    </a>
                </li>
                <li>
                    <a href="change-password.jsp" style="color:#212529">
                        Change Your Password
                    </a>
                </li>
                <li>
                    <a href="#" style="color:#212529">
                        Orders History
                    </a>
                </li>
            </ul>
            <%
                } else {
            %>
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
            <%
                }
            %>
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
</div>

