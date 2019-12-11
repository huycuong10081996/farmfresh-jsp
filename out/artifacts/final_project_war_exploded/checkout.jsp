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
    <link rel="stylesheet" href="css/home.css"/>
    <link rel="stylesheet" href="css/category.css"/>
    <link rel="stylesheet" href="css/checkout.css">
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

                    <li class="breadcrumb-item color-green" aria-current="page">Checkout</li>

                </ol>
            </nav>
        </div>
        <div class="main__category__container">
            <%@include file="nav-menu.jsp" %>

            <div class="checkout__wrapper">
                <div class="checkout">
                    <div class="chekout__title">
                        <h3>CHECKOUT</h3>
                    </div>

                    <div class="checkout__tag__wrapper">

                        <%
                            if (u != null) {
                        %>
                        <div class="step">
                            <!-- Collapse buttons -->
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample" aria-expanded="false"
                                        aria-controls="collapseExample">
                                    Step 1: Checkout Options
                                </button>
                            </div>
                        </div>
                        <%
                            } else {
                        %>
                        <div class="step" id="step1">
                            <!-- Collapse buttons -->
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample" aria-expanded="false"
                                        aria-controls="collapseExample">
                                    Step 1: Checkout Options
                                </button>
                            </div>
                            <!-- / Collapse buttons -->

                            <!-- Collapsible element -->
                            <div class="collapse border__full" id="collapseExample">
                                <div class="mt-3">
                                    <div class="step1__container">
                                        <div class="new__customer">
                                            <div class="new__customer__title">
                                                <h4>New Customer</h4>
                                            </div>

                                            <div class="option">
                                                <p>Checkout Options</p>
                                                <p style="color: #5f5f5f; font-weight: 600; font-size: 17px" class="text__level2">Register Account</p>
                                                <div>
                                                    <p>
                                                        By creating an account you will be able to shop faster, be
                                                        up
                                                        to date on an order's status, and keep track of the orders
                                                        you have previously made.
                                                    </p>
                                                </div>

                                                <div class="step2__btn">
                                                    <a href="register.jsp">Continue</a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="returning__customer">
                                            <div class="returning__customer__title">
                                                <h4>Returning Customer</h4>
                                            </div>
                                            <div>
                                                <p>I am a returning customer</p>
                                            </div>

                                            <div>
                                                <p>Email</p>
                                                <input type="text" placeholder="E-Mail">
                                            </div>

                                            <div>
                                                <p>Password</p>
                                                <input type="password" placeholder="Password">
                                            </div>

                                            <div class="forgot">
                                                <a href="">Forgotten Password</a>
                                            </div>
                                            <div class="step2__btn">
                                                <a href="">Login</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>

                        <%
                            }
                        %>

                        <div class="step" id="step2">
                            <!-- Collapse buttons -->
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample1" aria-expanded="false"
                                        aria-controls="collapseExample1">
                                    Step 2: Account & Billing Details
                                </button>
                            </div>
                            <!-- / Collapse buttons -->

                            <!-- Collapsible element -->
                            <div class="collapse" id="collapseExample1">
                                <div class="mt-3">
                                    <div class="step2__container">
                                        <div class="step2__wrapper">
                                            <%
                                                if (u != null) {
                                            %>
                                            <div class="personal__detail">
                                                <div class="personal__detail__title">
                                                    <h4>Personal Details</h4>
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;First Name</p>
                                                    <input type="text" value="<%=u.getFirstName()%>" required="required">
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Last Name</p>
                                                    <input type="text" value="<%=u.getLastName()%>" required="required">
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;E-Mail</p>
                                                    <input type="text" value="<%=u.getEmail()%>" required="required">
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Telephone</p>
                                                    <input type="text" value="<%=u.getUserPhone()%>" required="required">
                                                </div>
                                            </div>
                                            <div class="your__address">
                                                <div class="your__address__title">
                                                    <h4>Your Address</h4>
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Address</p>
                                                    <input type="text" required="required">
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;City</p>
                                                    <input type="text" required="required">
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Post Code</p>
                                                    <input type="text" required="required">
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Province</p>
                                                    <select class="browser-default custom-select"
                                                            aria-label="Example select with button addon" name="" required="required">
                                                        <option selected value="">---Please Select---</option>
                                                        <option value="">An Giang</option>
                                                    </select>
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Ward/District</p>
                                                    <select class="browser-default custom-select"
                                                            aria-label="Example select with button addon" name="" required="required">
                                                        <option selected value="">---Please Select---</option>
                                                        <option value="">Chau Thanh</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <%
                                                } else {
                                            %>
                                            <div class="personal__detail">
                                                <div class="personal__detail__title">
                                                    <h4>Personal Details</h4>
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;First Name</p>
                                                    <input type="text" required="required">
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Last Name</p>
                                                    <input type="text" required="required">
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;E-Mail</p>
                                                    <input type="text" required="required">
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Telephone</p>
                                                    <input type="text" required="required">
                                                </div>
                                            </div>
                                            <div class="your__address">
                                                <div class="your__address__title">
                                                    <h4>Your Address</h4>
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Address</p>
                                                    <input type="text" required="required">
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;City</p>
                                                    <input type="text" required="required">
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Post Code</p>
                                                    <input type="text" required="required">
                                                </div>

                                                <div class="input__personal" required="required">
                                                    <p><span>*</span>&nbsp;Province</p>
                                                    <select class="browser-default custom-select"
                                                            aria-label="Example select with button addon" name="" required="required">
                                                        <option selected value="">---Please Select---</option>
                                                        <option value="">An Giang</option>
                                                    </select>
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Ward/District</p>
                                                    <select class="browser-default custom-select"
                                                            aria-label="Example select with button addon" name="" required="required">
                                                        <option selected value="">---Please Select---</option>
                                                        <option value="">Chau Thanh</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <%
                                                }
                                            %>
                                        </div>

                                        <div class="address__agree">
                                            <input type="checkbox" id="agreement" required="required">
                                            <label for="agreement">
                                                My delivery and billing addresses are the same.
                                            </label>
                                        </div>

                                        <button class="continue" type="submit"
                                                style="border: none; height: 40px; width: 107px; background: #7fba00; color: #ffffff; border-radius: 40px; transition: all .35s;">
                                            Continue
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>

                        <div class="step" id="step3">
                            <!-- Collapse buttons -->
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample2" aria-expanded="false"
                                        aria-controls="collapseExample2">
                                    Step 3: Delivery Method
                                </button>
                            </div>
                            <!-- / Collapse buttons -->

                            <!-- Collapsible element -->
                            <div class="collapse" id="collapseExample2">
                                <div class="mt-3">
                                    <div class="step3__container">
                                        <div class="please__select">
                                            <p>Please select the preferred shipping method to use on this order.</p>
                                        </div>

                                        <div class="flat__rate">
                                            <h6>Flat rate</h6>
                                        </div>

                                        <div class="flat__rate__check">
                                            <input type="radio" name="" id="checkRate" checked="checked">
                                            <label for="checkRate">
                                                Flat Shipping Rate - $8.00
                                            </label>
                                        </div>

                                        <div class="add__comment">
                                            <h6>Add Comments About Your Order</h6>
                                            <textarea name="" id="#" cols="30" rows="10"></textarea>
                                        </div>
                                        <div class="step2__btn">
                                            <a href="">Continue</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>

                        <div class="step" id="step4">
                            <!-- Collapse buttons -->
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample3" aria-expanded="false"
                                        aria-controls="collapseExample3">
                                    Step 4: Payment Method
                                </button>
                            </div>
                            <!-- / Collapse buttons -->

                            <!-- Collapsible element -->
                            <div class="collapse" id="collapseExample3">
                                <div class="mt-3">
                                    <div class="step4__container">
                                        <div>
                                            <p>Please select the preferred payment method to use on this order.</p>
                                        </div>

                                        <div>
                                            <input type="radio" name="" id="cashOnDelivery" checked="checked">
                                            <label for="cashOnDelivery">Cash On Delivery</label>
                                        </div>

                                        <div class="add__comment">
                                            <h6>Add Comments About Your Order</h6>
                                            <textarea name="" cols="30" rows="10"></textarea>
                                        </div>

                                        <div class="step2__btn">
                                            <a href="">Continue</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>

                        <div class="step" id="step5">
                            <!-- Collapse buttons -->
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample4" aria-expanded="false"
                                        aria-controls="collapseExample4">
                                    Step 5: Confirm Order
                                </button>
                            </div>
                            <!-- / Collapse buttons -->

                            <!-- Collapsible element -->
                            <div class="collapse" id="collapseExample4">
                                <div class="mt-3">
                                    <div class="step5__container">
                                        <%
                                            if (orders != null) {
                                        %>
                                        <table>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Category</th>
                                                <th>Quantity</th>
                                                <th>Unit Price</th>
                                                <th>Total</th>
                                            </tr>

                                            <%
                                                List<Item> list = orders.getItems();
                                                for (Item item: list) {
                                            %>
                                            <tr>
                                                <td><%=item.getProduct().getProductName()%></td>
                                                <td><%=item.getProduct().getProductCategoryTitle()%></td>
                                                <td><%=item.getQuantity()%></td>
                                                <td>$<%=item.getProduct().getProductPrice()%></td>
                                                <td>$<%=item.totalPrice()%></td>
                                            </tr>
                                            <%
                                                }
                                            %>

                                            <tr>
                                                <td colspan="4">Sub-Total:</td>
                                                <td>$<%=orders.totalOrder()%></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">Flat Shipping Rate:</td>
                                                <td>$5.00</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">Eco Tax (-2.00):</td>
                                                <td>$4.00</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">VAT (20%):</td>
                                                <td>$<%=orders.totalOrder() * 0.2%></td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">Total:</td>
                                                <td>$<%=(orders.totalOrder() * 0.2) + 4 + 5 + orders.totalOrder()%></td>
                                            </tr>
                                        </table>
                                        <%
                                            }
                                        %>

                                        <div class="step2__btn">
                                            <a href="checkout-success.jsp">Confirm Order</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
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