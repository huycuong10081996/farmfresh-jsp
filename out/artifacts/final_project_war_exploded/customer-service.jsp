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
    <link rel="stylesheet" href="css/category.css"/>
    <link rel="stylesheet" href="css/customer-service.css">
    <link rel="stylesheet" href="css/footer.css">

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
                    <li class="breadcrumb-item"><a class="color-green" href="customer-service.jsp">Customer Service</a>
                    </li>
                </ol>
            </nav>
        </div>
        <div class="main__category__container">

            <%@ include file="nav-menu.jsp" %>

            <div style="display: flex; flex-direction: column">
                <div class="customer__service__container">
                    <div class="container" style="padding: 0">
                        <div class="customer__service__titles" style="padding-top: 12px">
                            <h3 style="color: #212529; padding-top: 0; padding-bottom: 30px">CUSTOMER SERVICE</h3>
                        </div>
                    </div>
                </div>

                <div class="customer__service__section" style="border-top: 1px solid #eee">
                    <div class="customer__service__titles">
                        <span>DELIVERY</span>
                    </div>
                    <div class="customer__service__content">
                        HELLO AND WELCOME TO THE SHIPPING AND DELIVERY INFORMATION PAGE! HERE YOU CAN GET ACQUAINTED
                        WITH USEFUL INFORMATION ON TERMS AND CONDITIONS OF OUR GOODS DELIVERY
                    </div>
                    <div class="customer__service__content" style="padding-top: 0">
                        You can purchase your items online and pick them up at our street store, or ship them directly
                        to your doorstep. Shipping is free on some orders. We use the best carriers in the business to
                        make sure your order gets to you on time. From the Secure Checkout page you'll see your item
                        description, price and delivery timing. Where available, you can also choose a faster delivery
                        method for each item on your order, for an additional fee. Delivery times vary according to your
                        selected delivery address, availability of your items and the time of day you place your order.
                    </div>
                </div>

                <div class="customer__service__section">
                    <div class="customer__service__titles">
                        <span>FREE DELIVERY</span>
                    </div>
                    <div class="customer__service__content" style="padding-top: 0">
                        Free two-day shipping is available on in-stock items. You can see in your bag if your item is in
                        stock. Free two-day shipping is not available on customized, engraved products, and for certain
                        order types, including orders paid for with financing or by bank transfer. To get free two-day
                        shipping, you will need to place your order by 5pm, Monday to Friday. For instance, if you order
                        your goods before 5:00 pm, Monday to Friday we will deliver them in two business days.
                    </div>
                </div>

                <div class="customer__service__section" style="border-bottom: none">
                    <div class="customer__service__titles" style="margin-bottom: 30px">
                        <span>TERMS & CONDITIONS</span>
                    </div>
                    <div class="customer__service__half">
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>ENTIRE AGREEMENT</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0;">
                                If you require a complete delivery of your orders, please enter an X in the Complete
                                Delivery field on the shipping screen of the customer master record. The indicator is
                                copied into the order header, which you can also use for the purpose.
                            </div>
                        </div>
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>ENTIRE AGREEMENT</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0">
                                If you require a complete delivery of your orders, please enter an X in the Complete
                                Delivery field on the shipping screen of the customer master record. The indicator is
                                copied into the order header, which you can also use for the purpose.
                            </div>
                        </div>
                    </div>
                    <div class="customer__service__half">
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>CONTROLLING TERMS</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0;">
                                Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale
                                represent the complete agreement of the parties with respect to the sale of the
                                product(s) listed on the Invoice and no different or additional terms or conditions in
                                Buyer’s purchase order or in any other prior or subsequent communications in any way
                                adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be
                                binding upon Seller.
                            </div>
                        </div>
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>CONTROLLING TERMS</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0">
                                Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale
                                represent the complete agreement of the parties with respect to the sale of the
                                product(s) listed on the Invoice and no different or additional terms or conditions in
                                Buyer’s purchase order or in any other prior or subsequent communications in any way
                                adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be
                                binding upon Seller.
                            </div>
                        </div>
                    </div>
                    <div class="customer__service__half">
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>ENTIRE AGREEMENT</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0;">
                                If you require a complete delivery of your orders, please enter an X in the Complete
                                Delivery field on the shipping screen of the customer master record. The indicator is
                                copied into the order header, which you can also use for the purpose.
                            </div>
                        </div>
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>ENTIRE AGREEMENT</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0">
                                If you require a complete delivery of your orders, please enter an X in the Complete
                                Delivery field on the shipping screen of the customer master record. The indicator is
                                copied into the order header, which you can also use for the purpose.
                            </div>
                        </div>
                    </div>
                    <div class="customer__service__half">
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>CONTROLLING TERMS</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0;">
                                Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale
                                represent the complete agreement of the parties with respect to the sale of the
                                product(s) listed on the Invoice and no different or additional terms or conditions in
                                Buyer’s purchase order or in any other prior or subsequent communications in any way
                                adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be
                                binding upon Seller.
                            </div>
                        </div>
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>CONTROLLING TERMS</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0">
                                Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale
                                represent the complete agreement of the parties with respect to the sale of the
                                product(s) listed on the Invoice and no different or additional terms or conditions in
                                Buyer’s purchase order or in any other prior or subsequent communications in any way
                                adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be
                                binding upon Seller.
                            </div>
                        </div>
                    </div>
                    <div class="customer__service__half">
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>ENTIRE AGREEMENT</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0;">
                                If you require a complete delivery of your orders, please enter an X in the Complete
                                Delivery field on the shipping screen of the customer master record. The indicator is
                                copied into the order header, which you can also use for the purpose.
                            </div>
                        </div>
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>ENTIRE AGREEMENT</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0">
                                If you require a complete delivery of your orders, please enter an X in the Complete
                                Delivery field on the shipping screen of the customer master record. The indicator is
                                copied into the order header, which you can also use for the purpose.
                            </div>
                        </div>
                    </div>
                    <div class="customer__service__half">
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>CONTROLLING TERMS</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0;">
                                Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale
                                represent the complete agreement of the parties with respect to the sale of the
                                product(s) listed on the Invoice and no different or additional terms or conditions in
                                Buyer’s purchase order or in any other prior or subsequent communications in any way
                                adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be
                                binding upon Seller.
                            </div>
                        </div>
                        <div class="customer__service__des" style="width: 50%">
                            <div class="customer__service__title">
                                <i class="fa fa-check-circle"></i>
                                <span>CONTROLLING TERMS</span>
                            </div>
                            <div class="customer__service__content" style="padding: 30px 30px 30px 0">
                                Buyer expressly agrees that Seller’s Invoice and these Terms and Conditions of Sale
                                represent the complete agreement of the parties with respect to the sale of the
                                product(s) listed on the Invoice and no different or additional terms or conditions in
                                Buyer’s purchase order or in any other prior or subsequent communications in any way
                                adding to, modifying or otherwise changing these Terms and Conditions of Sale shall be
                                binding upon Seller.
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