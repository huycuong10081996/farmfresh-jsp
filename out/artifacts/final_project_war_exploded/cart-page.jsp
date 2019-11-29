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
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/cart-page.css">
    <link rel="stylesheet" href="css/home.css">
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

                    <li class="breadcrumb-item color-green" aria-current="page">Cart Page</li>

                </ol>
            </nav>
        </div>
        <div class="main__category__container">
            <%@include file="nav-menu.jsp" %>

            <div class="cart__body__wrapper">
                <div class="cart__body">
                    <div class="blog__titles">
                        <h3>SHOPPING CART (1.00KG) </h3>
                    </div>

                    <div class="cart__body__container">
                        <div class="cart__body__list">
                            <table>
                                <tr>
                                    <th>Image</th>
                                    <th>Product Name</th>
                                    <th>Model</th>
                                    <th class="quantity__table">Quantity</th>
                                    <th>Unit Price</th>
                                    <th>Total</th>
                                </tr>

                                <tr>
                                    <td>
                                        <img src="img/01-85x85.jpg" alt="">
                                    </td>

                                    <td>Accusantium Doloremque</td>
                                    <td>Product 21</td>
                                    <td class="quantity__tablerow">
                                        <div>
                                            <input type="text" value="1">

                                            <i class="fa fa-times-circle"></i>
                                        </div>
                                    </td>

                                    <td>$104.00</td>

                                    <td>$104.00</td>
                                </tr>
                            </table>
                        </div>

                        <div class="cart__body__options">
                            <div class="do__next">
                                <h6>What would you like to do next?</h6>
                                <p>Choose if you have a discount code or reward points you want to use or would like to
                                    estimate your
                                    delivery cost.</p>
                            </div>

                            <div class="optionals">
                                <!-- Collapse buttons -->
                                <div class="coupon__code">
                                    <div>
                                        <button class="btn btn__step" type="button" data-toggle="collapse"
                                                data-target="#collapseExample2"
                                                aria-expanded="false" aria-controls="collapseExample2">
                                            Use Coupon Code
                                        </button>
                                    </div>
                                    <!-- / Collapse buttons -->

                                    <!-- Collapsible element -->
                                    <div class="collapse" id="collapseExample2">
                                        <div class="mt-3">
                                            <div class="coupon__code__container">
                                                <div class="enter__coupon">
                                                    <p>Enter your coupon here</p>
                                                </div>

                                                <div class="input__coupon"><input type="text"></div>

                                                <div class="apply__coupon__button">
                                                    <a href="">Apply Coupon</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="coupon__code">
                                    <div>
                                        <button class="btn btn__step" type="button" data-toggle="collapse"
                                                data-target="#collapseExample1"
                                                aria-expanded="false" aria-controls="collapseExample1">
                                            Estimate Shipping & Taxes
                                        </button>
                                    </div>
                                    <!-- / Collapse buttons -->

                                    <!-- Collapsible element -->
                                    <div class="collapse" id="collapseExample1">
                                        <div class="mt-3">
                                            <div class="shipping__taxes__container">
                                                <div>
                                                    <p>Enter your destination to get a shipping estimate.</p>
                                                </div>

                                                <div class="province__container">
                                                    <label for="province"><span>*</span>&nbsp;Provice</label>
                                                    <select id="province" class="browser-default custom-select"
                                                            aria-label="Example select with button addon">
                                                        <option selected>---Please Select---</option>
                                                        <option value="1">An Giang</option>
                                                        <option value="2">Bắc Giang</option>
                                                        <option value="3">Cà Mau</option>
                                                    </select>
                                                </div>


                                                <div class="ward__container">
                                                    <label for="ward"><span>*</span>&nbsp;Ward/District</label>
                                                    <select id="ward" class="browser-default custom-select"
                                                            aria-label="Example select with button addon">
                                                        <option selected>---Please Select---</option>
                                                        <option value="1">An Giang</option>
                                                        <option value="2">Bắc Giang</option>
                                                        <option value="3">Cà Mau</option>
                                                    </select>
                                                </div>

                                                <div class="coupon__codes">
                                                    <label for="postcode">Post Code</label>
                                                    <input id="postcode" type="text">
                                                </div>

                                                <div class="apply__coupon__button get__quotes">
                                                    <a href="">Get Quotes</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="summarize">
                                <table>
                                    <tr>
                                        <th>Sub-Total :</th>
                                        <td>$85.00</td>
                                    </tr>

                                    <tr>
                                        <th>Total :</th>
                                        <td>$85.00</td>
                                    </tr>
                                </table>
                            </div>

                            <div class="checkout__cart">
                                <div class="continue__shopping apply__coupon__button get__quotes">
                                    <a href="index.jsp">Continue Shopping</a>
                                </div>

                                <div class="to__checkout apply__coupon__button get__quotes">
                                    <a href="checkout.jsp">Checkout</a>
                                </div>
                            </div>
                        </div>
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