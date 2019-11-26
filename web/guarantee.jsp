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
    <link rel="stylesheet" href="css/guarantee.css">
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
                    <li class="breadcrumb-item"><a class="color-green" href="guarantee.jsp">Guarantee</a>
                    </li>
                </ol>
            </nav>
        </div>
        <div class="main__category__container">

            <%@ include file="nav-menu.jsp" %>

            <div style="display: flex; flex-direction: column">
                <div class="guarantee__container">
                    <div class="container" style="padding: 0">
                        <div class="guarantee__titles" style="padding-top: 12px">
                            <h3 style="color: #212529; padding-top: 0;">GUARANTEE & AFTER-SALES SERVICE</h3>
                        </div>
                    </div>
                </div>

                <div class="container" style="text-align: left; padding: 0">
                    <div class="guarantee__content" style="border-bottom: 1px solid #969696; padding: 10px 0">
                        Quite often, even after we’ve chosen an item and purchased it successfully, there may be
                        some things we might want to change or repair afterward - either during or following the
                        delivery process, when filing a return or applying for using our warranty. Here we'll try to
                        explain in plain terms how does our store’s warranty policy works and how you can be using
                        it when shopping with us!
                    </div>
                </div>

                <div class="guarantee__section">
                    <div class="guarantee__titles">
                        <span>WHAT PRODUCTS ARE PROVIDED WITH THE WARRANTY?</span>
                    </div>
                    <div class="guarantee__content">
                        Some of our furniture items apply for an almost unconditional Lifetime Warranty. The items
                        included in this policy are sofas, couches, love seats, upholstered chairs, ottomans,
                        sectionals, and sleepers. As a retailer we warrant these components to you, the original retail
                        purchaser, to be free from material manufacturing defects. The lifetime duration of the Warranty
                        means the standardized usage cycle for a specific furniture item.
                    </div>
                    <div class="guarantee__des">
                        <div class="guarantee__title">
                            <i class="fa fa-check-circle"></i>
                            <span>REPAIR & REFURBISHING</span>
                        </div>
                        <div class="guarantee__content">
                            Our store will pay, within one year from the date of purchase, reasonable and
                            conditional
                            labor rates for refurbishing or replacing the defective parts and shipping costs.
                        </div>
                    </div>
                    <div class="guarantee__des">
                        <div class="guarantee__title">
                            <i class="fa fa-check-circle"></i>
                            <span>DIFFERENT TYPES OF WARRANTY</span>
                        </div>
                        <div class="guarantee__content">
                            While for some items we have a lifetime warranty, the springs in all of our items are
                            offered with a 5 Year Limited type of a Warranty.
                        </div>
                    </div>
                    <div class="guarantee__des">
                        <div class="guarantee__title">
                            <i class="fa fa-check-circle"></i>
                            <span>WARRANTY EXCEPTIONS</span>
                        </div>
                        <div class="guarantee__content">
                            All seat cushion cores have a natural tendency to become softer during a normal usage
                            cycle,
                            and will conform to the shape of the user. A Limited 1 Year Warranty applies.
                        </div>
                    </div>
                </div>

                <div class="guarantee__section">
                    <div class="guarantee__titles">
                        <span>WHERE TO APPLY FOR WARRANTY SERVICES?</span>
                    </div>
                    <div class="guarantee__content">
                        Under these Limited Warranties, all of the legal liability of our store is limited to repair, or
                        if required (or requested by the customer), replacement. We are ready to pay, within one year
                        from the date of purchase, reasonable and customary labor rates to repair or replace the
                        defective parts and shipping costs from the retailer...
                    </div>
                    <div class="guarantee__content" style="padding-top: 0">
                        These Limited Warranties are not applicable for any of our products which ave been altered by
                        any person, dealer, or company without the express written authorization of our store. PLease
                        note, that some States Do Not Allow Limitations On How Long An Implied Warranty Lasts, So The
                        Above Limitations May Not Apply To You.
                    </div>
                </div>

                <div class="guarantee__section">
                    <div class="guarantee__titles">
                        <span>IN WHAT CASES THE WARRANTY IS NOT PROVIDED?</span>
                    </div>
                    <div class="guarantee__content">
                        There can be two limits for the Warranties issued with the purchase of the furniture items on
                        our website.
                    </div>
                    <div class="guarantee__half">
                        <div class="guarantee__des" style="width: 50%">
                            <div class="guarantee__title">
                                <i class="fa fa-check-circle"></i>
                                <span>1, 3 & 5 YEARS LIMITED WARRANTY</span>
                            </div>
                            <div class="guarantee__content" style="padding: 30px 30px 30px 0;">
                                The first one is the Warranty time frame, if it is limited to 1, 3 or 5 years. Hence the
                                Lifetime Warranty is not time-restricted.
                            </div>
                        </div>
                        <div class="guarantee__des" style="width: 50%">
                            <div class="guarantee__title">
                                <i class="fa fa-check-circle"></i>
                                <span>REGULAR USAGE CHECK</span>
                            </div>
                            <div class="guarantee__content" style="padding: 30px 30px 30px 0">
                                The second one is the examination of the item by our customer support agent, making sure
                                the usage was regular.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="guarantee__section" style="border: none">
                    <div class="guarantee__titles">
                        <span>CHANGE AND RETURN</span>
                    </div>
                    <div class="guarantee__content">
                        Filing a change or a return is an easy process, requiring nothing more than your proof of
                        purchase (which usually is the receipt you received), the item itself and the return label
                        printed out by you and put at the top of the package...
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