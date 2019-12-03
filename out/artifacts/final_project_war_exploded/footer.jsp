
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<footer>
    <section class="footer__main">
        <div class="container">
            <div class="footer__container">

                <div class="footer__item">
                    <h2>Informations</h2>
                    <ul class="store__item">
                        <li><a href="about-us.jsp">About Us</a></li>
                        <li><a href="customer-service.jsp">Customer Service</a></li>
                        <li><a href="contact-us.jsp">Contact Us</a></li>
                        <li><a href="privacy-policy.jsp">Privacy Policy</a></li>
                        <li><a href="<%=Utils.fullPath("BlogServlet?blogPages=1")%>">Blogs</a></li>
                    </ul>
                </div>

                <div class="footer__item">
                    <h2>Why buy from us</h2>
                    <ul class="store__item">
                        <li><a href="delivery.jsp">Delivery & Shipping</a></li>
                        <li><a href="secure-payment.jsp">Secure Payment</a></li>
                        <li><a href="guarantee.jsp">Guarantee</a></li>
                        <li><a href="terms-and-condition.jsp">Term & Conditions</a></li>
                    </ul>
                </div>

                <div class="footer__item">
                    <h2>Store Information</h2>
                    <ul class="store__item">
                        <li><i class="fas fa-map-marker-alt" style="margin: 0 10px"></i>&nbsp;&nbsp;Farm Fresh Fruits</li>
                        <li><i class="fas fa-phone" style="margin: 0 10px"></i>&nbsp;(+84) 0123892029</li>
                        <li><i class="fa fa-fax" style="margin: 0 10px"></i>&nbsp;123456</li>
                        <li><i class="fas fa-envelope" style="margin: 0 10px"></i>&nbsp;abc@gmail.com</li>
                    </ul>
                </div>

                <div class="footer__item">
                    <h2>Subscribe now</h2>
                    <ul class="store__item">
                        <li>Join us for get latest updates.</li>
                    </ul>
                    <div class="footer__input">
                        <input type="text" placeholder="Enter your email..." style="outline: none">
                        <i class="fas fa-angle-right"></i>
                    </div>
                    <div class="list-icon__footer">
                        <div class="icon__item"><i class="fab fa-facebook-f" aria-hidden="true"></i></div>
                        <div class="icon__item"><i class="fab fa-twitter" aria-hidden="true"></i></div>
                        <div class="icon__item"><i class="fas fa-rss" aria-hidden="true"></i></div>
                        <div class="icon__item"><i class="fab fa-google-plus-g" aria-hidden="true"></i></div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="footer-bottom">
        <div class="container">
            <div class="footer-bottom__container">

                <div class="footer__powered">Powered By <a href="about-us.jsp">Vbros Team</a>&nbsp;&copy; 2019</div>

                <div class="bank-card__list">
                    <ul class="bank-card__list__container">
                        <li>
                            <div class="bank__image"><img src="img/visa.png" alt=""></div>
                        </li>
                        <li>
                            <div class="bank__image"><img src="img/discover.png" alt=""></div>
                        </li>
                        <li>
                            <div class="bank__image"><img src="img/american_express.png" alt=""></div>
                        </li>
                        <li>
                            <div class="bank__image"><img src="img/google_wallet.png" alt=""></div>
                        </li>
                        <li>
                            <div class="bank__image"><img src="img/paypal.png" alt=""></div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
    </section>

</footer>
