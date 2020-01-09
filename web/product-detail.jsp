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
                ResultSet resultSetproductDetail = (ResultSet) request.getAttribute("resultSetProductDetail");
                int reviewQuantity = 0;
                int numcount = 0;
                int ratingStarAverage = 0;
                int totalRatingStart = 0;
                while ((resultSetproductDetail.next())) {
                    if (resultSetproductDetail.getString(14) != null) {
                        reviewQuantity++;
                        totalRatingStart += resultSetproductDetail.getInt(13);
                    } else {
                        numcount = 1;
                        totalRatingStart += 5;
                    }
                }
                ratingStarAverage = totalRatingStart / (reviewQuantity - numcount);
                resultSetproductDetail.beforeFirst();
                int count = 0;
                while (resultSetproductDetail.next()) {
                    count++;
            %>
            <div class="breadcrumb__container row align-items-center">
                <div class="breadcrumb__icon">
                    <i class="fa fa-home"></i>
                </div>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb non-bg">
                        <li class="breadcrumb-item"><a class="color-green" href="<%=Utils.fullPath("HomeServlet")%>">Home</a>
                        </li>
                        <li class="breadcrumb-item"><a class="color-green"
                                                       href="<%=Utils.fullPath("ListProductServlet?category="+resultSetproductDetail.getString(15)+"&pages=1")%>"><%=resultSetproductDetail.getString(9)%>
                        </a></li>
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
                                    <li>
                                        <%
                                            for (int i = 0; i < ratingStarAverage; i++) {
                                        %>
                                        <i class="fas fa-star"></i>
                                        <%
                                            }
                                        %>
                                    </li>
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
                                    <span style="padding: 10px;"><%=resultSetproductDetail.getString(7)%></span>
                                </div>
                            </div>


                            <%
                                if (resultSetproductDetail.getDouble(5) == 0) {
                            %>
                            <div class="price row">
                                <h4>$<%=resultSetproductDetail.getDouble(4)%>
                                </h4>
                            </div>

                            <%
                            } else {
                            %>
                            <div class="price row">
                                <h4>$<%=resultSetproductDetail.getDouble(5)%>
                                </h4>
                            </div>

                            <div class="row align-items-center">
                                <h6><strike>$<%=resultSetproductDetail.getDouble(4)%>
                                </strike></h6>
                            </div>
                            <%
                                }
                            %>

                            <div class="more__props row align-items-center">
                                <%--<div class="quantity">
                                    <h6>Quantity</h6>
                                </div>
                                <div class="input__quantity">
                                    <input type="text" name="" value="1" id="">
                                </div>--%>
                                <div class="add__to__cart">
                                    <a href="<%=Utils.fullPath("AddCartFromProductDetailServlet?productDetailId="+resultSetproductDetail.getString(1))%>">Add
                                        to cart</a>
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
                    <% if (resultSetproductDetail.getString(8) == null) {
                    %>
                    <p>This product no description. We will update information about it as quickly as possible to
                        you.</p>
                    <%
                    } else {
                    %>
                    <p><%=resultSetproductDetail.getString(8)%>
                    </p>
                    <%
                        }
                    %>
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
                                if (resultSetproductDetail.getString(14) != null) {
                        %>

                        <div class="review__content">
                            <table>
                                <tr>
                                    <td>
                                        <div class="author">
                                            <h6><%=resultSetproductDetail.getString(12)%>
                                            </h6>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="time__review"
                                             style="display: flex; justify-content: flex-end; align-items: center">
                                            <%
                                                if (u != null && u.getUserId().equals(resultSetproductDetail.getString(16))) {
                                            %>
                                            <h6 style="margin: 0"><%=resultSetproductDetail.getString(11)%>
                                            </h6>
                                            <a href="<%=Utils.fullPath("RemoveReviewServlet?productDetailId=" + resultSetproductDetail.getString(1) + "&reviewId=" + resultSetproductDetail.getString(14))%>"
                                               class="delete_review"><i class="fa fa-trash" style="padding: 10px;"></i></a>
                                            <a href="#"
                                               class="edit_review" id="editReviewIcon"><i class="fa fa-edit" style="padding: 10px;"></i></a>
                                            <%
                                            } else {
                                            %>
                                            <h6><%=resultSetproductDetail.getString(11)%>
                                            </h6>
                                            <%
                                                }
                                            %>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <div>
                                            <%
                                                if (u != null && u.getUserId().equals(resultSetproductDetail.getString(16))) {
                                            %>
                                            <form action="#" method="post" style="display: flex; flex-direction: column">
                                                <p <%--style="outline: none; border: none;" name="editReview"--%> id="editReview"><%=resultSetproductDetail.getString(10)%>
                                                </p>
                                                <button type="submit" id="buttonEditReview" class="button__edit__review">Edit</button>
                                            </form>
                                            <%
                                                } else {
                                            %>
                                            <p><%=resultSetproductDetail.getString(10)%></p>
                                            <%
                                                }
                                            %>
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

                        <%
                            }
                        %>

                        <%
                            if (u != null) {
                        %>
                        <div class="add__review">
                            <h4>Write a review</h4>
                            <%
                                int counter = 0;
                                resultSetproductDetail.beforeFirst();
                                while (resultSetproductDetail.next()) {
                                    counter++;
                            %>
                            <form action="<%=Utils.fullPath("AddReviewServlet?productDetailId="+resultSetproductDetail.getString(1))%>"
                                  method="post">

                                <%
                                    String errReview = (String) request.getAttribute("errReview");
                                    if (errReview != null) {
                                %>
                                <div class="review__main">
                                    <p><span>*</span>&nbsp;Your Review</p>
                                    <textarea name="reviewContent" cols="30" rows="10" required="required"></textarea>
                                </div>
                                <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errReview%></span>
                                </div>
                                <%
                                } else {
                                %>
                                <div class="review__main">
                                    <p><span>*</span>&nbsp;Your Review</p>
                                    <textarea name="reviewContent" cols="30" rows="10" required="required"></textarea>
                                </div>
                                <%
                                    }
                                %>
                                <div class="review__rate">
                                    <label class="review__rate__lbl"><span>*</span>&nbsp;Rating</label>
                                    <label for="">Bad</label>
                                    <input type="radio" name="rating" value="1">
                                    <input type="radio" name="rating" value="2">
                                    <input type="radio" name="rating" value="3">
                                    <input type="radio" name="rating" value="4">
                                    <input type="radio" name="rating" value="5">
                                    <label for="">Good</label>
                                </div>

                                <button type="submit" class="continue__button">
                                    Continue
                                </button>
                            </form>
                            <%
                                    if (counter == 1) {
                                        break;
                                    }
                                }
                            %>
                        </div>

                        <%
                        } else {
                        %>

                        <div class="message__review"
                             style=" display: flex; justify-content: center; align-items: center; padding: 20px 0 0 0">
                            <h6 style=" font-weight: 600">You need to <a href="login.jsp"
                                                                         style=" font-weight: 600; color: #7fba00">log
                                in</a> to post a comment about the product.</h6>
                        </div>

                        <%
                            }
                        %>

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
                        <p><%=otherResultSet.getString(2)%>
                        </p>
                        <%
                            if (otherResultSet.getDouble(5) == 0) {
                        %>
                        <p><strong>$<%=otherResultSet.getDouble(4)%>
                        </strong></p>
                        <%
                        } else {
                        %>
                        <p><strong>$<%=otherResultSet.getDouble(5)%>
                        </strong>
                            <span class="price--line-through">$<%=otherResultSet.getDouble(4)%></span>
                        </p>
                        <%
                            }
                        %>
                        <ul class="star-rank">
                            <%
                                if (otherResultSet.getInt(6) == 0) {
                                    for (int i = 1; i <= 5; i++) {
                            %>
                            <li><i class="fas fa-star"></i></li>
                            <%
                                }
                            } else {
                                for (int i = 1; i <= otherResultSet.getInt(6); i++) {
                            %>
                            <li><i class="fas fa-star"></i></li>
                            <%
                                    }
                                }
                            %>

                        </ul>
                        <a class="add-to-cart__btn"
                           href="<%=Utils.fullPath("AddCartFromProductDetailServlet?productDetailId="+otherResultSet.getString(1))%>">add
                            to cart</a>
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

<script>
/*    const editTextarea = document.getElementById("editReview");
    const buttonEditReview = document.getElementById("buttonEditReview");
    const editReviewIcon = document.getElementById("editReviewIcon");
    editReviewIcon.onclick = function () {
        editTextarea.contentEditable = "true";
    }
    if (editTextarea){
        console.log(editTextarea.getAttribute('id'))
        if (editTextarea.contentEditable === "true") {
            buttonEditReview.style.display = "block";
        }
    }*/

function divClicked() {
    var divHtml = $(this).prev('p').html(); //select's the contents of div immediately previous to the button
    var editableText = $("<textarea />");
    editableText.val(divHtml);
    $(this).prev('p').replaceWith(editableText); //replaces the required div with textarea
    editableText.focus();
    // setup the blur event for this new textarea
    editableText.blur(editableTextBlurred);
}

function editableTextBlurred() {
    var html = $(this).val();
    var viewableText = $("<p>");
    viewableText.html(html);
    $(this).replaceWith(viewableText);
    // setup the click event for this new div
    viewableText.click(divClicked);
}

$(document).ready(function () {
    $("#editReviewIcon").click(divClicked); //calls the function on button click
});

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