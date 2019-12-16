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
                        <%
                            Orders order = (Orders) request.getAttribute("order");
                            List<Item> list = order.getItems();
                        %>

                        <div class="cart__body__list">

                            <%
                                if (order != null) {
                                    if (list.size() != 0) {
                            %>

                            <table>

                                <tr>
                                    <th>Image</th>
                                    <th>Product Name</th>
                                    <th>Category</th>
                                    <th class="quantity__table">Quantity</th>
                                    <th>Unit Price</th>
                                    <th>Total</th>
                                </tr>

                                <%
                                    for (Item item : list) {

                                %>

                                <tr>
                                    <td>
                                        <img src="<%=item.getProduct().getProductImageURL()%>" alt="" width="100px">
                                    </td>
                                    <td><%=item.getProduct().getProductName()%>
                                    </td>
                                    <td><%=item.getProduct().getProductCategoryTitle()%>
                                    </td>
                                    <td class="quantity__tablerow">
                                        <form action="<%=Utils.fullPath("UpdateCartServlet?productId="+item.getProduct().getProductId())%>"
                                              method="post">
                                            <%
                                                String err = "The input character must be a number and be less than " + item.getProduct().getProductQuantity();
                                            %>
                                            <input name="quantityItem" type="number" value="<%=item.getQuantity()%>" min="1"
                                                   max="<%=item.getProduct().getProductQuantity()%>" required="required"
                                                   oninvalid="setCustomValidity('The input character must be a number, larger than 0 and less than ' + <%=item.getProduct().getProductQuantity()%>)"
                                                   oninput="setCustomValidity('')"/>

                                            <button type="submit" class="update__cart"><i
                                                    class="fas fa-sync-alt"></i></button>

                                            <a class="delete__cart"
                                               href="<%=Utils.fullPath("DeleteServlet?productIdDelete="+item.getProduct().getProductId())%>"><i
                                                    class="fa fa-times-circle"></i></a>

                                        </form>
                                    </td>

                                    <td>$<%=item.getProduct().getProductPrice()%>
                                    </td>

                                    <td>$<%=item.totalPrice()%>
                                    </td>
                                </tr>

                                <%
                                    }
                                %>

                            </table>

                            <%
                                } else {
                            %>

                            <div class="list_is__empty" style="display: flex; justify-content: center; padding: 24px 0">
                                <h3>Your Shopping Cart is Empty</h3>
                            </div>

                            <%
                                }
                            } else if (order == null) {
                            %>

                            <div class="cart_empty">
                                <h3>Your Shopping Cart is Empty</h3>
                            </div>

                            <%
                                }
                            %>

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
                                                <form action="#" style="display: flex; justify-content: space-between; width: 100%;">
                                                    <div class="enter__coupon">
                                                        <p>Enter your coupon here</p>
                                                    </div>
                                                    <div class="input__coupon">
                                                        <input type="text" name="couponCode" required="required">
                                                    </div>

                                                    <div class="apply__coupon__button">
                                                        <button class="continue" type="submit"
                                                                style="border: none; height: 40px; width: 100px; background: #7fba00; color: #ffffff; border-radius: 40px; transition: all .35s;">
                                                            Apply Coupon
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="summarize">
                                <table>
                                    <tr>
                                        <%
                                            if (order != null) {
                                        %>
                                        <th>Total :</th>
                                        <td>$<%=order.totalOrder()%>
                                        </td>
                                        <%
                                        } else {
                                        %>
                                        <th>Total :</th>
                                        <td>$00.0
                                        </td>
                                        <%
                                            }
                                        %>
                                    </tr>
                                </table>
                            </div>

                            <div class="checkout__cart">
                                <div class="continue__shopping apply__coupon__button get__quotes">
                                    <a href="<%=Utils.fullPath("HomeServlet")%>">Continue Shopping</a>
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

<script async>
    AOS.init();
</script>
</body>

</html>