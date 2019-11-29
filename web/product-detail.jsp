<%@ page import="java.util.Random" %>
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
    <link rel="stylesheet" href="css/category.css"/>
    <link rel="stylesheet" href="css/product-detail.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/home.css">
</head>

<body>

<%@ include file="header.jsp" %>

<main>

    <section class="register__title__wrapper">
        <div class="container">
            <%
                ResultSet resultSetproductDetail = (ResultSet) request.getAttribute("rSPD");
                int reviewQuantity = 0;
                while ( (resultSetproductDetail.next())) {
                    reviewQuantity++;
                }
                resultSetproductDetail.beforeFirst();
                int count = 0;
                while (resultSetproductDetail.next()) {
                    count ++;
            %>
            <div class="breadcrumb__container row align-items-center">
                <div class="breadcrumb__icon">
                    <i class="fa fa-home"></i>
                </div>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb non-bg">
                        <li class="breadcrumb-item"><a class="color-green" href="index.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a class="color-green" href="index.jsp">Organic Food</a></li>
                        <li class="breadcrumb-item" aria-current="page"><%=resultSetproductDetail.getString(2)%>
                        </li>
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
                        <img src="<%=resultSetproductDetail.getString(3)%>" alt="">
                    </div>
                </div>

                <div class="product__detail__content">
                    <div class="pd__content">
                        <div class="product__detail__title">
                            <div>
                                <h4 class="title__section"><%=resultSetproductDetail.getString(2)%>
                                </h4>
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
                                    <a href="#categoriesList"><%=String.valueOf(reviewQuantity)%> reviews</a>
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
                                <p>Category type:&nbsp;</p>
                                <p><%=resultSetproductDetail.getString(9)%>
                                </p>
                            </div>

                            <div class="row align-items-center">
                                <p>Product Quantity:&nbsp;</p>
                                <p><%=resultSetproductDetail.getString(6)%>
                                </p>
                            </div>

                        </div>

                        <div class="option">
                            <h4 class="title__section row">Available Options</h4>
                            <div class="option__item">
                                <h6 class="row"><span>*</span>&nbsp;Delivery Date</h6>
                                <div class="calendar row">
                                    <span><%=resultSetproductDetail.getString(7)%></span>
                                </div>
                            </div>

                            <div class="price row">
                                <h4>$<%=resultSetproductDetail.getString(5)%>
                                </h4>
                            </div>

                            <div class="row align-items-center">
                                <h6><strike>$<%=resultSetproductDetail.getString(4)%>
                                </strike></h6>
                            </div>

                            <div class="more__props row align-items-center">
                                <div class="quantity">
                                    <h6>Quantity</h6>
                                </div>
                                <div class="input__quantity">
                                    <input type="text" name="" value="1" id="">
                                </div>
                                <div class="add__to__cart">
                                    <a href="cart-page.jsp">Add to cart</a>
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
                        (<%=String.valueOf(reviewQuantity)%>)</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="description__content__wrapper" id="desciptions">
            <div class="container">
                <div id="descriptionContent" class="show description__content">
                    <p><%=resultSetproductDetail.getString(8)%>
                    </p>
                </div>
                <%
                        if (count == 1) {
                            break;
                        }
                    }
                %>
                <div id="reviewContent" style="display: none;" class="show review__content">
                    <div class="review__content__wrapper">
                        <%
                            resultSetproductDetail.beforeFirst();
                            while (resultSetproductDetail.next()) {
                        %>
                        <div class="review__content">
                            <table>
                                <tr>
                                    <td>
                                        <div class="author">
                                            <h6><%=resultSetproductDetail.getString(12)%></h6>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="time__review">
                                            <h6><%=resultSetproductDetail.getString(11)%></h6>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div><%=resultSetproductDetail.getString(10)%>
                                        </div>
                                        <div>
                                            <ul class="rating__star row">
                                                <li>
                                                    <%
                                                        for (int i = 0; i < resultSetproductDetail.getInt(13); i++) {
                                                    %>
                                                    <i class="fas fa-star"></i>
                                                    <%
                                                        }
                                                    %>
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <%
                            }
                        %>

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

                <%
                    ResultSet otherResultSet = (ResultSet) request.getAttribute("other");
                    int listSize = 0;
                    while (otherResultSet.next()) {
                        listSize++;
                    }
                    otherResultSet.beforeFirst();
                    int counter = 0;
                    Random r = new Random();
                    while (otherResultSet.next()) {
                        int random = r.nextInt(listSize - 1);
                        counter++;
                        otherResultSet.absolute(random);
                %>
                <div class="product-item col-lg-3" id="<%=otherResultSet.getString(1)%>">
                    <div class="product-item__image">
                        <img src="<%=otherResultSet.getString(3)%>" alt="">
                    </div>

                    <div class="product-item__content">
                        <p><%=otherResultSet.getString(2)%></p>
                        <p><strong>$<%=otherResultSet.getString(4)%></strong>
                            <span class="price--line-through">$<%=otherResultSet.getString(5)%></span>
                        </p>
                        <ul class="star-rank">
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                        <a class="add-to-cart__btn" href="cart-page.jsp">add to cart</a>
                    </div>
                </div>

                <%
                        if (counter == 4) {
                            break;
                        }
                    }
                %>

            </div>
        </div>
    </section>

</main>

<%@include file="footer.jsp" %>

<%@ include file="scroll-to-top.jsp" %>

<!-- Javascript -->
<script src="js/main.js"></script>
<script src="js/home.js"></script>
<script src="js/productDetail.js"></script>

<script>
    const productItem = document.querySelectorAll(".product-item");
    for (let i = 0; i < productItem.length; i++) {
        productItem[i].addEventListener("click", function () {
            window.location.href = "http://localhost:8080/final_project/ProductDetailServlet?productDetailId=" + productItem[i].getAttribute('id').trim();
        });
    }
</script>
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