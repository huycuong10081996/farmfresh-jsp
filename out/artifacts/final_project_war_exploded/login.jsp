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
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/category.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/footer.css">
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
                        <a href="index.jsp">
                            <img src="img/logo.png" alt="Fram Fresh">
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
                        <li><a href="category.jsp">Organic Food</a>
                            <ul class="sub__main__menu">
                                <li><a href="category.jsp">Healthful Food</a></li>
                                <li><a href="category.jsp">Super Food</a></li>
                                <li><a href="category.jsp">Lite Food</a></li>
                            </ul>
                        </li>
                        <li><a href="chemical-free.jsp">Chemical Free</a></li>
                        <li><a href="Fruits.jsp">Fruits</a>
                            <ul class="sub__main__menu">
                                <li><a href="Fruits.jsp">Skinny Food</a></li>
                                <li><a href="Fruits.jsp">Low-calorie</a></li>
                                <li><a href="Fruits.jsp">Lite Food</a></li>
                                <li><a href="Fruits.jsp">Non-Fat</a></li>
                                <li><a href="Fruits.jsp">Peanut</a></li>
                            </ul>
                        </li>
                        <li><a href="nursery.jsp">Nursery</a></li>
                        <li><a href="vegetables.jsp">Vegetables</a></li>
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

    <main>
        <section class="register__title">
            <div class="container">
                <div class="breadcrumb__container row align-items-center">
                    <div class="breadcrumb__icon">
                        <i class="fa fa-home"></i>
                    </div>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb non-bg">
                            <li class="breadcrumb-item"><a class="color-green" href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item" aria-current="page">Login</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>

        <section class="categories__menu__wrapper">
            <div class="container">
                <div class="register__wrapper row">
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
                                        <a href="about-us.jsp" style="color:#212529">
                                            Delivery Information
                                        </a>
                                    </li>
                                    <li>
                                        <a href="about-us.jsp" style="color:#212529">
                                            Privacy Policy
                                        </a>
                                    </li>
                                    <li>
                                        <a href="about-us.jsp" style="color:#212529">
                                            Term and Conditions
                                        </a>
                                    </li>
                                    <li>
                                        <a href="contact-us.jsp" style="color:#212529">
                                            Contact Us
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="banner__container">
                            <img src="img/left-banner.jpg" alt="" />
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
                                                <img src="img/dudu.jpg" alt="" />
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
                                                <img src="img/dudu.jpg" alt="" />
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
                                                <img src="img/dudu.jpg" alt="" />
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

                    <div class="login__content__wrapper row justify-content-between">
                        <div class="new__customer">
                            <form action="" class="new__customer__form">
                                <div>
                                    <h5>New Customer</h5>
                                </div>
                                <div>
                                    <p style="color: #5f5f5f;" class="text__level2">Register Account</p>
                                </div>
                                <div>
                                    <p style="color: #5f5f5f;">By creating an account you will be able to shop faster,
                                        be
                                        up to date on an order's
                                        status, and keep track of the orders you have previously made.
                                    </p>
                                </div>
                                <div class="button__level2">
                                    <a href="#">Continue</a>
                                </div>
                            </form>
                        </div>

                        <div class="returning__customer">
                            <form action="" class="returning__customer__form">
                                <div>
                                    <h5>Returning Customer</h5>
                                </div>
                                <div>
                                    <p style="color: #5f5f5f;" class="text__level2">I am a returning Customer</p>
                                </div>
                                <div>
                                    <p>Email Address</p>
                                    <input type="text" name="" id="" placeholder="E-Mail Address...">
                                </div>
                                <div>
                                    <p>Password</p>
                                    <input type="text" name="" id="" placeholder="Password...">
                                </div>
                                <div class="forgot">
                                    <a href="#">Forgotten Password</a>
                                </div>
                                <div class="button__level2">
                                    <a href="">Login</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <section class="footer__main">
            <div class="container">
                <div class="footer__container">
                    <div class="footer__item">
                        <h2>Store Information</h2>
                        <ul class="store__item">
                            <li><i class="fas fa-map-marker-alt"></i>&nbsp;&nbsp;Farm Fresh Fruits</li>
                            <li><i class="fas fa-phone"></i>&nbsp;(+84) 0123892029</li>
                            <li><i class="fa fa-fax"></i>&nbsp;123456</li>
                            <li><i class="fas fa-envelope"></i>&nbsp;abc@gmail.com</li>
                        </ul>

                    </div>

                    <div class="footer__item">
                        <h2>Information</h2>
                        <ul class="store__item">
                            <li>About Us</li>
                            <li>Delivery Information</li>
                            <li>Privacy Policy</li>
                            <li>Term & Conditions</li>
                            <li>Site Map</li>
                        </ul>
                    </div>

                    <div class="footer__item">
                        <h2>My Account</h2>
                        <ul class="store__item">
                            <li>My Account</li>
                            <li>Order History</li>
                            <li>Wish List</li>
                            <li>Newsletter</li>
                            <li>Returns</li>
                        </ul>
                    </div>

                    <div class="footer__item">
                        <h2>Subscribe now</h2>
                        <ul class="store__item">
                            <li>Join us for get latest updates.</li>
                        </ul>
                        <div class="footer__input">
                            <input type="text" placeholder="Enter your email...">
                            <i class="fas fa-angle-right"></i>
                        </div>
                        <ul class="list-icon__footer">
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fas fa-rss"></i></a></li>
                            <li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </section>

        <section class="footer-bottom">
            <div class="container">
                <div class="footer-bottom__container">

                    <div class="footer__powered">Powered By <a href="">Vbros Team</a>&nbsp;&copy; 2019</div>

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


    <div class="scroll-to-top">
        <p class="scroll-to-top__btn" id="scrollToTopBtn"><i class="fas fa-angle-up"></i></p>
    </div>
    <!-- Javascript -->
    <script src="js/main.js"></script>
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