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
                    <li class="breadcrumb-item"><a class="color-green" href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item" aria-current="page">Vegetables</li>

                </ol>
            </nav>
        </div>
        <div class="main__category__container">

            <%@include file="menu-main.jsp" %>

            <div class="category__item__container">
                <div class="banner__main__wrapper">
                    <h3>VEGETABLES</h3>
                    <div class="image__banner__main">
                        <img src="img/bannermain.jpg" alt=""/>
                    </div>
                </div>

                <div class="refine__search__container">
                    <h4>Refine Search</h4>
                    <ul class="search__list" style="width: 30%">
                        <li><a href="">color</a></li>
                        <li><a href="">size</a></li>
                        <li><a href="">weight</a></li>
                    </ul>
                </div>


                <div class="shortItem__container">
                    <div class="gridview__icon">
                        <i class="fas fa-th-large"></i>
                        <i class="fa fa-th-list"></i>
                        <span>Product Compare(0)</span>
                    </div>
                    <div class="short__by">
                        <div class="short__by__default">
                            <span>Sort by</span>
                            <select class="custom-select" id="inputGroupSelect03">
                                <option selected>Choose...</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                        <div class="short__show">
                            <span>Show</span>
                            <select class="custom-select" id="inputGroupSelect03">
                                <option selected>Choose...</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                    </div>
                </div>
                <hr/>
                <div class="listItem__container">

                    <div class="product-list">
                        <div class="product-list__container">

                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>


                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>


                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>


                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>


                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>


                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>


                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>

                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>

                            <div class="product-item">
                                <div class="product-item__image">
                                    <img src="img/06-275x275.jpg" alt="Guava">
                                </div>

                                <div class="product-item__content">
                                    <p>Guava</p>
                                    <p><strong>$120</strong> <span class="price__line__through">$140</span></p>
                                    <ul class="star-rank">
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                        <li><i class="fas fa-star"></i></li>
                                    </ul>
                                    <a class="add-to-cart__btn" href="#">add to cart</a>
                                </div>
                            </div>
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