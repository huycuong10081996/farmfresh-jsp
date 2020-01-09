<%@ page import="Controller.OrdersDAOImp" %>
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
                                                <p style="color: #5f5f5f; font-weight: 600; font-size: 17px"
                                                   class="text__level2">Register Account</p>
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
                                            <form action="<%=Utils.fullPath("LoginServletFromCheckout")%>"
                                                  class="returning__customer__form"
                                                  method="post">
                                                <div>
                                                    <h5>Returning Customer</h5>
                                                </div>
                                                <div>
                                                    <p style="color: #5f5f5f;" class="text__level2">I am a returning
                                                        Customer</p>
                                                </div>

                                                <%
                                                    String emailValue = request.getParameter("emailLoginCheckout");
                                                    if (emailValue != null) {
                                                %>
                                                <div>
                                                    <p>Email Address</p>
                                                    <input type="text" name="emailLoginCheckout" required="required"
                                                           id="emailLogin" placeholder="E-Mail Address..."
                                                           value='<%=emailValue%>'/>
                                                </div>
                                                <%
                                                } else {
                                                %>
                                                <div>
                                                    <p>Email Address</p>
                                                    <input type="text" name="emailLoginCheckout" required="required"
                                                           id="" placeholder="E-Mail Address..."/>
                                                </div>
                                                <%
                                                    }
                                                %>
                                                <%
                                                    String errEmail = (String) request.getAttribute("errEmailCheckout");
                                                    if (errEmail != null) {
                                                %>
                                                <div style="display: flex;justify-content: center;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errEmail%></span>
                                                </div>
                                                <%
                                                    }
                                                %>
                                                <div>
                                                    <p>Password</p>
                                                    <input type="password" name="passLoginCheckout" id="passLogin"
                                                           required="required" placeholder="Password...">
                                                </div>
                                                <%
                                                    String errPass = (String) request.getAttribute("errPasswordCheckout");
                                                    if (errPass != null) {
                                                %>
                                                <div style="display: flex;justify-content: center;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px;">

                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errPass%></span>
                                                </div>
                                                <%
                                                    }
                                                %>
                                                <div class="forgot">
                                                    <a href="forgot-password.jsp">Forgotten Password</a>
                                                </div>
                                                <button class="continue__button" type="submit">
                                                    Login
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>

                        <%
                            }
                        %>

                        <%
                            if (u != null) {
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
                                    <form class="step2__container" action="#">
                                        <div class="step2__wrapper">
                                            <div class="your__address">
                                                <div class="your__address__title">
                                                    <h4>Your Address</h4>
                                                </div>
                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Address</p>
                                                    <input type="text" required="required">
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Post Code</p>
                                                    <input type="text" required="required">
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Province</p>
                                                    <select class="browser-default custom-select"
                                                            aria-label="Example select with button addon" name=""
                                                            required="required">
                                                        <option selected value="">---Please Select---</option>
                                                        <option value="">An Giang</option>
                                                    </select>
                                                </div>

                                                <div class="input__personal">
                                                    <p><span>*</span>&nbsp;Ward/District</p>
                                                    <select class="browser-default custom-select"
                                                            aria-label="Example select with button addon" name=""
                                                            required="required">
                                                        <option selected value="">---Please Select---</option>
                                                        <option value="">Chau Thanh</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="address__agree">
                                            <input type="checkbox" id="agreement" required="required">
                                            <label for="agreement">
                                                My delivery and billing addresses are the same.
                                            </label>
                                        </div>

                                        <button type="submit" class="continue__button">
                                            Continue
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>

                      <%--  <div class="step" id="step3">
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
                                        <button type="submit" class="continue__button">
                                            Continue
                                        </button>
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

                                        <button type="submit" class="continue__button">
                                            Continue
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>--%>

                        <div class="step" id="step5">
                            <!-- Collapse buttons -->
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample4" aria-expanded="false"
                                        aria-controls="collapseExample4">
                                    Step 3: Confirm Order
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
                                                for (Item item : list) {
                                            %>
                                            <tr>
                                                <td><%=item.getProduct().getProductName()%>
                                                </td>
                                                <td><%=item.getProduct().getProductCategoryTitle()%>
                                                </td>
                                                <td><%=item.getQuantity()%>
                                                </td>
                                                <td>$<%=item.getProduct().getProductPrice()%>
                                                </td>
                                                <td>$<%=item.totalPrice()%>
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>

                                            <tr>
                                                <td colspan="4">Sub-Total:</td>
                                                <td>$<%=orders.totalOrder()%>
                                                </td>
                                            </tr>
                                            <%--<tr>
                                                <td colspan="4">Flat Shipping Rate:</td>
                                                <td>$5.00</td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">Eco Tax (-2.00):</td>
                                                <td>$4.00</td>
                                            </tr>--%>
                                            <tr>
                                                <td colspan="4">VAT (20%):</td>
                                                <td>$<%=orders.totalOrder() * 0.2%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="4">Total:</td>
                                                <td>$<%=(orders.totalOrder() * 0.2) + orders.totalOrder()%>
                                                </td>
                                            </tr>
                                        </table>

                                        <button type="submit" class="continue__button">
                                            Continue
                                        </button>

                                        <%
                                            } else {
                                        %>

                                        <div class="list_is__empty" style="display: flex; justify-content: center; padding: 24px 0">
                                            <h3>Your Shopping Cart is Empty</h3>
                                        </div>

                                        <div class="step2__btn">
                                            <a href="<%=Utils.fullPath("HomeServlet")%>" class="continue">Buy now</a>
                                        </div>
                                        <%
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                            <!-- / Collapsible element -->
                        </div>

                        <%
                            } else {
                        %>

                        <div class="step" id="step2">
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample1" aria-expanded="false"
                                        aria-controls="collapseExample1">
                                    Step 2: Account & Billing Details
                                </button>
                            </div>
                        </div>

                 <%--       <div class="step" id="step3">
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample2" aria-expanded="false"
                                        aria-controls="collapseExample2">
                                    Step 3: Delivery Method
                                </button>
                            </div>
                        </div>

                        <div class="step" id="step4">
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample3" aria-expanded="false"
                                        aria-controls="collapseExample3">
                                    Step 4: Payment Method
                                </button>
                            </div>
                        </div>--%>

                        <div class="step" id="step5">
                            <div>
                                <button class="btn btn__step" type="button" data-toggle="collapse"
                                        data-target="#collapseExample4" aria-expanded="false"
                                        aria-controls="collapseExample4">
                                    Step 3: Confirm Order
                                </button>
                            </div>
                        </div>

                        <%
                            }
                        %>

                    </div>

                </div>
            </div>
        </div>
    </section>


</main>

<%@ include file="footer.jsp" %>

<%@ include file="scroll-to-top.jsp" %>

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