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
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/category.css">
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/product-detail.css">
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
                        <li><a href="fruits.jsp">Fruits</a>
                            <ul class="sub__main__menu">
                                <li><a href="fruits.jsp">Skinny Food</a></li>
                                <li><a href="fruits.jsp">Low-calorie</a></li>
                                <li><a href="fruits.jsp">Lite Food</a></li>
                                <li><a href="fruits.jsp">Non-Fat</a></li>
                                <li><a href="fruits.jsp">Peanut</a></li>
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

        <section class="register__title__wrapper">
            <div class="container">
                <div class="breadcrumb__container row align-items-center">
                    <div class="breadcrumb__icon">
                        <i class="fa fa-home"></i>
                    </div>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb non-bg">
                            <li class="breadcrumb-item"><a class="color-green" href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item"><a class="color-green" href="index.jsp">Organic Food</a></li>
                            <li class="breadcrumb-item" aria-current="page">Accusantium Doloremque</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>

        <section class="product__detail__wrapper">
            <div class="container">
                <div class="row product__detail">
                    <div class="product__detail__image">
                        <div class="detail__image">
                            <img src="img/01-700x700.jpg" alt="">
                        </div>
                    </div>

                    <div class="product__detail__content">
                        <div class="pd__content">
                            <div class="product__detail__title">
                                <div>
                                    <h4 class="title__section">Accusantium Doloremque</h4>
                                </div>
                                <div class="rating">

                                    <ul class="rating__star row">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>


                                    <div class="review">
                                        <a href="#categoriesList">1 reviews</a>
                                    </div>

                                    <div class="write__review">
                                        <a href="#categoriesList" id="writeReview">
                                            <i class="fas fa-pencil-alt"></i>&nbsp;Write a
                                            review</a>
                                    </div>
                                </div>
                            </div>

                            <div class="status">
                                <div class="row align-items-center">
                                    <p>Brand:&nbsp;</p>
                                    <p>Hewlett-Packard</p>
                                </div>

                                <div class="row align-items-center">
                                    <p>Product Code:&nbsp;</p>
                                    <p>Product 21</p>
                                </div>

                                <div class="row align-items-center">
                                    <p>Availability:&nbsp;</p>
                                    <p>In Stock</p>
                                </div>
                            </div>

                            <div class="option">
                                <h4 class="title__section row">Available Options</h4>
                                <div class="option__item">
                                    <h6 class="row"><span>*</span>&nbsp;Delivery Date</h6>
                                    <div class="calendar row">
                                        <input type="date">
                                    </div>
                                </div>

                                <div class="price row">
                                    <h4>$104.00</h4>
                                </div>

                                <div class="more__props row align-items-center">
                                    <div class="quantity">
                                        <h6>Quantity</h6>
                                    </div>
                                    <div class="input__quantity">
                                        <input type="text" name="" value="1" id="">
                                    </div>
                                    <div class="add__to__cart">
                                        <a href="">Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section>
            <div class="container">
                <div class="categories-list__container">
                    <ul class="categories-list" id="categoriesList">
                        <li id="description" onclick="openCity(event, 'descriptionContent')" class="tab__link active"><a
                                href="">Description</a></li>
                        <li id="review" onclick="openCity(event, 'reviewContent')" class="tab__link"><a href="">Reviews
                                (1)</a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="description__content__wrapper" id="desciptions">
                <div class="container">
                    <div id="descriptionContent" class="show description__content">
                        <p>
                            Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat
                            Panel
                            Monitor. This flagship monitor features best-in-class performance and presentation features
                            on a
                            huge wide-aspect screen while letting you work as comfortably as possible - you might even
                            forget
                            you're at the office
                        </p>
                    </div>

                    <div id="reviewContent" style="display: none;" class="show review__content">
                        <div class="review__content__wrapper">
                            <div class="review__content">
                                <table>
                                    <tr>
                                        <td>
                                            <div class="author">
                                                <h6>Matthew Wade</h6>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="time__review">
                                                <h6>09/03/2019</h6>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div>
                                                Contrary to popular belief, Lorem Ipsum is not simply random text.
                                            </div>
                                            <div>
                                                <ul class="rating__star row">
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                    <li><i class="fas fa-star"></i></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>

                            <div class="add__review">
                                <h4>Write a review</h4>
                                <form action="">
                                    <div class="review__name">
                                        <p><span>*</span>&nbsp;Your Name</p>
                                        <input type="text">
                                    </div>

                                    <div class="review__main">
                                        <p><span>*</span>&nbsp;Your Review</p>
                                        <textarea name="" id="" cols="30" rows="10"></textarea>
                                    </div>

                                    <div class="review__rate">
                                        <label class="review__rate__lbl"><span>*</span>&nbsp;Rating</label>
                                        <label for="">Bad</label>
                                        <input type="radio" name="rate1">
                                        <input type="radio" name="rate1">
                                        <input type="radio" name="rate1">
                                        <input type="radio" name="rate1">
                                        <input type="radio" name="rate1">
                                        <label for="">Good</label>
                                    </div>

                                    <div class="continue__btn">
                                        <a href="">Continue</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="related__product__wrapper">
            <div class="container">

                <div class="related__title row justify-content-center">
                    <h3>
                        Related Products
                    </h3>
                </div>

                <div class="related__product row">

                    <div class="product-item col-lg-3">
                        <div class="product-item__image">
                            <img src="img/06-275x275.jpg" alt="Guava">
                        </div>

                        <div class="product-item__content">
                            <p>Guava</p>
                            <p><strong>$120</strong>
                                <span class="price--line-through">$140</span>
                            </p>
                            <ul class="star-rank">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                            </ul>
                            <a class="add-to-cart__btn" href="#">add to cart</a>
                        </div>
                    </div>


                    <div class="product-item col-lg-3">
                        <div class="product-item__image">
                            <img src="img/06-275x275.jpg" alt="Guava">
                        </div>

                        <div class="product-item__content">
                            <p>Guava</p>
                            <p><strong>$120</strong>
                                <span class="price--line-through">$140</span>
                            </p>
                            <ul class="star-rank">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                            </ul>
                            <a class="add-to-cart__btn" href="#">add to cart</a>
                        </div>
                    </div>


                    <div class="product-item col-lg-3">
                        <div class="product-item__image">
                            <img src="img/06-275x275.jpg" alt="Guava">
                        </div>

                        <div class="product-item__content">
                            <p>Guava</p>
                            <p><strong>$120</strong>
                                <span class="price--line-through">$140</span>
                            </p>
                            <ul class="star-rank">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                            </ul>
                            <a class="add-to-cart__btn" href="#">add to cart</a>
                        </div>
                    </div>

                    <div class="product-item col-lg-3">
                        <div class="product-item__image">
                            <img src="img/06-275x275.jpg" alt="Guava">
                        </div>

                        <div class="product-item__content">
                            <p>Guava</p>
                            <p><strong>$120</strong>
                                <span class="price--line-through">$140</span>
                            </p>
                            <ul class="star-rank">
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                                <li><i class="fas fa-star"></i></li>
                            </ul>
                            <a class="add-to-cart__btn" href="#">add to cart</a>
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
    <script src="js/home.js"></script>
    <script src="js/productDetail.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>