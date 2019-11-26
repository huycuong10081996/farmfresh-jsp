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
                    <li class="breadcrumb-item"><a class="color-green" href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item" aria-current="page"><%=resultSetProduct.getString(6)%></li>

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
                                <a href="<%=Utils.fullPath("ListProductServlet?category="+resultSet.getString(1))%>">
                                    <%=resultSet.getString(2)%>
                                </a>
                            </li>
                            <%
                                }
                            %>
                            <!---------------------------------------------------->
                        </ul>
                    </div>
                </div>
                <div class="search__by__refine">
                    <div class="search__title hvr-bounce-to-right">
                        <h3>REFINE SEARCH</h3>
                    </div>
                    <div class=" list__search">
                        <div class="title">
                            <h4>COLOR</h4>
                        </div>
                        <div class="list__item">
                            <form action="">
                                <input type="checkbox"/> Green <br/>
                                <input type="checkbox"/> Blue <br/>
                                <input type="checkbox"/> Yellow <br/>
                                <input type="checkbox"/> Black <br/>
                            </form>
                        </div>
                    </div>
                    <div class="list__search">
                        <div class="title">
                            <h4>SIZE</h4>
                        </div>
                        <div class="list__item">
                            <form action="">
                                <input type="checkbox"/> Small <br/>
                                <input type="checkbox"/> Medium <br/>
                                <input type="checkbox"/> Large <br/>
                            </form>
                        </div>
                    </div>
                    <div class="list__search">
                        <div class="title">
                            <h4>WEIGHT</h4>
                        </div>
                        <div class="list__item">
                            <form action="">
                                <input type="checkbox"/> 5(9) <br/>
                                <input type="checkbox"/> 12(9) <br/>
                                <input type="checkbox"/> 32(9) <br/>
                            </form>
                        </div>
                    </div>
                    <div class="button__search">
                        <a href="">Refine Search</a>
                    </div>
                </div>
                <div class="banner__container">
                    <img src="img/left-banner.jpg" alt=""/>
                </div>
                <div class="specials__container">
                    <div class="search__title">
                        <h3>SPECIALS</h3>
                    </div>
                    <div class="product-list">
                        <ul>
                            <li>
                                <div class="product-item">
                                    <div class="image">
                                        <img src="img/dudu.jpg" alt=""/>
                                    </div>
                                    <div class="content__wrapper">
                                        <div class="content">
                                            <span class="hover">Exercitat Virginia</span>
                                            <div class="price">
                                                <div class="price__sale">
                                                    <span>$100</span>
                                                </div>
                                                <div class="price__cost">
                                                    <span>$119</span>
                                                </div>
                                            </div>
                                            <a class="hover">Add To Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="product-item">
                                    <div class="image">
                                        <img src="img/dudu.jpg" alt=""/>
                                    </div>
                                    <div class="content__wrapper">
                                        <div class="content">
                                            <span class="hover">Exercitat Virginia</span>
                                            <div class="price">
                                                <div class="price__sale">
                                                    <span>$100</span>
                                                </div>
                                                <div class="price__cost">
                                                    <span>$119</span>
                                                </div>
                                            </div>
                                            <a class="hover">Add To Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="product-item">
                                    <div class="image">
                                        <img src="img/dudu.jpg" alt=""/>
                                    </div>
                                    <div class="content__wrapper">
                                        <div class="content">
                                            <span class="hover">Exercitat Virginia</span>
                                            <div class="price">
                                                <div class="price__sale">
                                                    <span>$100</span>
                                                </div>
                                                <div class="price__cost">
                                                    <span>$119</span>
                                                </div>
                                            </div>
                                            <a class="hover">Add To Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </li>
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

                <div class="refine__search__container">
                    <h4>Refine Search</h4>
                    <ul class="search__list">
                        <li><a href="">healthful food (15)</a></li>
                        <li><a href="">Superfood (15)</a></li>
                        <li><a href="">lite food (15)</a></li>
                    </ul>
                </div>


                <div class="shortItem__container">

                    <div class="short__by">
                        <div class="short__by__default">
                            <span>Sort by</span>
                            <select class="custom-select" id="inputGroupSelect03">
                                <option value="name" selected>Name</option>
                                <option value="price">Price</option>
                            </select>
                        </div>
                        <div class="short__show">
                            <span>Show</span>
                            <select class="custom-select" id="inputGroupSelect04">
                                <option value="9" selected>9</option>
                                <option value="12">12</option>
                                <option value="15">15</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="listItem__container">

                    <div class="product-list">
                        <div class="product-list__container">

                            <%
                                resultSetProduct.beforeFirst();
                                while (resultSetProduct.next()) {
                            %>
                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="<%=resultSetProduct.getString(3)%>">
                                </div>

                                <div class="product-item__content">
                                    <p><%=resultSetProduct.getString(2)%>
                                    </p>
                                    <p><strong>$<%=resultSetProduct.getString(5)%>
                                    </strong>
                                        <span class="price__line__through">$<%=resultSetProduct.getString(4)%></span>
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
                                }
                            %>

                        </div>
                    </div>

                </div>
                <hr>
                <div class="show__page__container">
                    <div class="show__page">
                        <p>Showing 1 to 9 of 14 (2 Pages)</p>
                    </div>
                    <div class="show__pagination">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination justify-content-end">
                                <li><a href="">Previous</a></li>
                                <li><a href="" class="color-green">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">Next</a></li>
                            </ul>
                        </nav>
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
<script src="js/categories.js"></script>
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