<%@ page import="java.util.Random" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.Product" %>
<%@ page import="Controller.CategoryDAO" %>
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
</head>

<body>

<%@ include file="header.jsp" %>

<main>
    <section class="wrapper-category">
        <div class="breadcrumb__container row align-items-center">
            <div class="breadcrumb__icon">
                <i class="fa fa-home"></i>
            </div>
            <%
                ResultSet resultSetProduct = (ResultSet) request.getAttribute("p");
                int count = 0;
                while (resultSetProduct.next()) {
            %>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb non-bg">
                    <li class="breadcrumb-item"><a class="color-green"
                                                   href="<%=Utils.fullPath("HomeServlet")%>">Home</a></li>
                    <li class="breadcrumb-item" aria-current="page"><%=resultSetProduct.getString(6)%>
                    </li>

                </ol>
            </nav>
        </div>
        <div class="main__category__container">
            <div class="category__search">
                <div class="search__by__category">
                    <div class="search__title">
                        <h3>CATEGORIES</h3>
                    </div>
                    <div class="list__category">
                        <ul>
                            <%
                                ResultSet resultSet = (ResultSet) request.getAttribute("resultSet");
                                while (resultSet.next()) {
                            %>

                            <li>
                                <a href="<%=Utils.fullPath("ListProductServlet?category="+resultSet.getString(1)+"&pages=1")%>">
                                    <%=resultSet.getString(2)%>
                                </a>
                            </li>
                            <%
                                }
                            %>
                        </ul>
                    </div>
                </div>

                <div class="search__by__refine">
                    <div class="search__title">
                        <h3>INFORMATIONS</h3>
                    </div>
                    <div class="list__category">
                        <ul>
                            <li>
                                <a href="about-us.jsp" style="color:#212529">
                                    About Us
                                </a>
                            </li>
                            <li>
                                <a href="delivery.jsp" style="color:#212529">
                                    Delivery & Shipping
                                </a>
                            </li>
                            <li>
                                <a href="privacy-policy.jsp" style="color:#212529">
                                    Privacy Policy
                                </a>
                            </li>
                            <li>
                                <a href="terms-and-condition.jsp" style="color:#212529">
                                    Terms and Conditions
                                </a>
                            </li>
                            <li>
                                <a href="contact-us.jsp" style="color:#212529">
                                    Contact Us
                                </a>
                            </li>
                            <li>
                                <a href="secure-payment.jsp" style="color:#212529">
                                    Secure Payment
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="banner__container">
                    <img src="img/left-banner.jpg" alt=""/>
                </div>
                <div class="specials__container">
                    <div class="search__title">
                        <h3>MAY BE YOU WANT</h3>
                    </div>
                    <div class="product-list">
                        <ul>
                            <%
                                ResultSet special = (ResultSet) request.getAttribute("special");
                                int listProductSize = 0;
                                while (special.next()) {
                                    listProductSize++;
                                }
                                special.beforeFirst();
                                Random r = new Random();
                                int counter = 0;
                                while (special.next()) {
                                    counter++;
                                    int random = r.nextInt(listProductSize - 1);
                                    special.absolute(random);
                            %>
                            <li>
                                <div class="product-item" id="<%=special.getString(1)%>">
                                    <div class="image">
                                        <img src="<%=special.getString(3)%>" alt=""/>
                                    </div>
                                    <div class="content__wrapper">
                                        <div class="content">
                                            <span class="hover"><%=special.getString(2)%></span>
                                            <div class="price">
                                                <%
                                                    if (special.getString(5) == null) {
                                                %>
                                                <div class="price__sale">
                                                    <span>$<%=special.getString(4)%></span>
                                                </div>
                                                <%
                                                } else {
                                                %>
                                                <div class="price__sale">
                                                    <span>$<%=special.getString(5)%></span>
                                                </div>
                                                <div class="price__cost">
                                                    <span>$<%=special.getString(4)%></span>
                                                </div>
                                                <%
                                                    }
                                                %>
                                            </div>
                                            <a class="hover">Add To Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <%
                                    if (counter == 3) {
                                        break;
                                    }
                                }
                            %>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="category__item__container">
                <div class="banner__main__wrapper">

                    <h3>
                        <%=resultSetProduct.getString(6)%>
                    </h3>

                    <%
                            count++;
                            if (count == 1) {
                                break;
                            }
                        }
                    %>
                    <div class="image__banner__main">
                        <img src="img/bannermain.jpg" alt=""/>
                    </div>
                </div>

                <div class="shortItem__container">

                    <div class="short__by">
                        <%
                            ArrayList<Product> list = new ArrayList<>();
                            int ratingStart = 0;
                            resultSetProduct.beforeFirst();
                            while (resultSetProduct.next()) {
                                String productId = resultSetProduct.getString(1);
                                String productName = resultSetProduct.getString(2);
                                String productImage = resultSetProduct.getString(3);
                                double productPrice = resultSetProduct.getDouble(4);
                                double productSalePrice = resultSetProduct.getDouble(5);
                                String categoryId = resultSetProduct.getString(6);
                                ratingStart = resultSetProduct.getInt(8);
                                Product product = new Product(productId, productName, productImage, productPrice, productSalePrice, categoryId);
                                list.add(product);
                            }
                        %>
                        <div class="short__by__default">
                            <span>Sort by</span>
                            <form action="<%=request.getAttribute("javax.servlet.forward.request_uri") + "?" + request.getQueryString()%>" method="post">
                                <select class="custom-select" name="sortSelect" id="inputGroupSelect03" onchange="this.form.submit()" style="padding: 0 8px">
                                    <option selected>Choose</option>
                                    <option value="name">Name</option>
                                    <option value="price">Price</option>
                                    <option value="salePrice">Sale Price</option>
                                </select>
                               <%-- <button class="submit" style="display: none"> Submit
                                </button>--%>
                            </form>
                        </div>
                        <%--<div class="short__show">
                            <span>Show</span>
                            <select class="custom-select" id="inputGroupSelect04" style="padding: 0 8px">
                                <option selected>Choose</option>
                                <option value="9">9</option>
                                <option value="12">12</option>
                                <option value="15">15</option>
                            </select>
                        </div>--%>
                    </div>
                </div>
                <hr/>
                <div class="listItem__container">

                    <div class="product-list">
                        <div class="product-list__container">
                            <%
                                for (Product p : list) {
                            %>

                            <div class="product-item" style="height: 385px" id="<%=p.getProductId()%>">
                                <div class="product-item__image">
                                    <img src="<%=p.getProductImageURL()%>">
                                </div>
                                <div class="product-item__content">
                                    <p><%=p.getProductName()%>
                                    </p>
                                    <%
                                        if (p.getProductSalePrice() == 0.0) {
                                    %>

                                    <p><strong>$<%=p.getProductPrice()%>
                                    </strong></p>

                                    <%
                                    } else {
                                    %>

                                    <p><strong>$<%=p.getProductSalePrice()%>
                                    </strong>
                                        <span class="price--line-through">$<%=p.getProductPrice()%></span>
                                    </p>

                                    <%
                                        }
                                    %>

                                    <ul class="star-rank">
                                        <%
                                            if (ratingStart == 0) {
                                                for (int i = 1; i <= 5; i++) {
                                        %>
                                        <li><i class="fas fa-star"></i></li>
                                        <%
                                            }
                                        } else {
                                            for (int i = 1; i <= ratingStart; i++) {
                                        %>
                                        <li><i class="fas fa-star"></i></li>
                                        <%
                                                }
                                            }
                                        %>
                                    </ul>
                                    <a class="add-to-cart__btn"
                                       href="<%=Utils.fullPath("AddCartFromProductDetailServlet?productDetailId="+p.getProductId())%>">add
                                        to cart</a>
                                </div>
                            </div>

                            <%
                                }
                            %>

                        </div>
                    </div>

                </div>
                <hr>

                <div class="show__page__container">
                    <%
                        ResultSet resultSetSize = (ResultSet) request.getAttribute("ps");
                        int counter = 0;
                        while (resultSetSize.next()) {
                            int size = new CategoryDAO().getCount(resultSetSize.getString(7));
                            int numPager = 1;
                            int show = 9;
                            if (size <= 9) {
                                numPager = 1;
                                show = size;
                            } else {
                                numPager = size / 9 + 1;
                            }
                            counter++;
                    %>
                    <div class="show__page">
                        <p>Showing 1 to <%=show%> of <%=size%>
                            (<%=numPager%> Pages)</p>
                    </div>
                    <div class="show__pagination">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-end">

                                <li>
                                    <a href="<%=Utils.fullPath("ListProductServlet?category="+resultSetSize.getString(7)+"&pages=1")%>"
                                       id="0" name="<%=1%>">First</a>
                                </li>
                                <%
                                    for (int i = 1; i <= numPager; i++) {
                                %>
                                <li>
                                    <a class="<%= (i+"").equals(request.getParameter("pages"))? "active" : ""%>"
                                       href="<%=Utils.fullPath("ListProductServlet?category="+resultSetSize.getString(7)+"&pages="+i)%>"
                                       id="<%=i%>" name="<%=i%>"><%=i%>
                                    </a></li>

                                <%
                                    }
                                %>
                                <li>
                                    <a href="<%=Utils.fullPath("ListProductServlet?category="+resultSetSize.getString(7)+"&pages="+numPager)%>"
                                       id="<%=numPager%>" name="<%=numPager%>">Last</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <%
                            if (counter == 1) {
                                break;
                            }
                        }
                    %>
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

<script>
    const productItem = document.querySelectorAll(".product-item");
    for (let i = 0; i < productItem.length; i++) {
        productItem[i].addEventListener("click", function () {
            window.location.href = "http://localhost:8080/final_project/ProductDetailServlet?productDetailId=" + productItem[i].getAttribute('id').trim();
        });
    }
</script>

<%--<script>

    console.log(window.location.search);
    const urlParams = new URLSearchParams(window.location.search);
    const pages = urlParams.get('pages');
    const pagesItem = document.querySelectorAll('.pagination');
    for (let i = 0; i < pagesItem.length; i++) {

        const pagesItemA = pagesItem[i].getElementsByTagName('a');
        for (let j = 0; j < pagesItemA.length; j++) {
            console.log(pagesItemA[j].getAttribute('name'));
        }
    }

</script>--%>

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