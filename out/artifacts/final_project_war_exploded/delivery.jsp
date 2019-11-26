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
    <link rel="stylesheet" href="css/delivery.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/category.css"/>
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
                    <li class="breadcrumb-item"><a class="color-green" href="delivery.jsp">Delivery & Shipping</a></li>
                </ol>
            </nav>
        </div>
        <div class="main__category__container">

            <%@ include file="nav-menu.jsp" %>

            <div style="display: flex; flex-direction: column">
                <div class="delivery__container">
                    <div class="container">
                        <div class="delivery__titles">
                            <h3>Delivery & Shipping</h3>
                        </div>
                    </div>
                </div>
                <div class="container" style="flex-direction: column">

                    <section class="deli__section1">
                        <div class="deli__content">
                            So you have done your shopping; just how long will it be till you can rock that swanky new
                            Axolotl-themed laptop skin? The calculator below will give you the average amount of days it
                            takes to ship a product to your door and the best time to contact our support team. Please
                            note that every order at Redbubble is custom printed just for you, and will take 1-3
                            business days to print prior to shipping.
                        </div>
                        <div class="sub__deli">
                            <div class="deli__title">HERE ARE A FEW THINGS TO CONSIDER WHILE YOU WAIT FOR YOUR ORDER:
                            </div>
                            <div class="deli__content"><i class="fa fa-dot-circle" style="padding: 15px; color: #7fba00; font-size: 16px"></i>We ship in
                                business days. Monday - Friday, excluding national holidays.
                            </div>
                            <div class="deli__content"><i class="fa fa-dot-circle" style="padding: 15px; color: #7fba00; font-size: 16px"></i>Shipping
                                starts from the date you received the "Your Order Has Shipped!" email.
                            </div>
                            <div class="deli__content"><i class="fa fa-dot-circle" style="padding: 15px; color: #7fba00; font-size: 16px"></i>The estimate
                                above does not include manufacturing time - we need 1-3 business days to
                                make sure your custom order is everything you hoped it would be.
                            </div>
                            <div class="deli__content">Redbubble is a global company - we work with production and
                                shipping partners all
                                over the world to get your things to your doorstep, wherever that may be. Although the
                                vast majority of our
                                customers will get their orders by the day listed above, actual timeframes may vary from
                                region to region.
                            </div>
                        </div>
                        <div class="sub__deli" style="border-bottom: 1px solid #cccccc; padding-bottom: 50px">
                            <div class="deli__title">SO WHEN DO YOU CONTACT REDBUBBLE?</div>
                            <div class="deli__content">The calculator above lets you know the best time to message us.
                                When that day rolls
                                around
                            </div>
                            <div class="deli__content">Even if your order has not arrived by the listed date, it is
                                probably still on its way
                                (and worth the wait).
                            </div>
                        </div>
                    </section>

                    <section class="deli__section1">
                        <div class="sub__deli">
                            <div class="deli__title"><i class="fa fa-bus" style="padding: 15px"></i>HOW MUCH IS
                                SHIPPING?
                            </div>
                            <div class="deli__content">Once you’ve clicked through to Secure Checkout, you can enter
                                your delivery address and choose a shipping method. Shipping costs are then calculated
                                and tacked on to your subtotal at the bottom of the page.
                            </div>
                        </div>

                        <div class="sub__deli">
                            <div class="deli__title"><i class="fa fa-search" style="padding: 15px"></i>CAN I TRACK MY
                                ORDER?
                            </div>
                            <div class="deli__content">We rely on a global network of shipping partners (UPS, FedEx,
                                DHL) as well as local postal services (USPS) to get your order to your doorstep as soon
                                as possible. For this reason, tracking is not always available. If your order is being
                                sent by a trackable service, these details will be included on your orders page as well
                                as on the shipping email we send you.
                            </div>
                        </div>
                        <div class="sub__deli">
                            <div class="deli__title"><i class="fa fa-calendar-check" style="padding: 15px"></i>WHERE
                                DOES MY ORDER SHIP FROM?
                            </div>
                            <div class="deli__content">We rely on a global network of shipping partners (UPS, FedEx,
                                DHL) as well as local postal services (USPS) to get your order to your doorstep as soon
                                as possible. For this reason, tracking is not always available. If your order is being
                                sent by a trackable service, these details will be included on your orders page as well
                                as on the shipping email we send you.
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