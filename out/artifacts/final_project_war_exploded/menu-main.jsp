<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="vn.edu.nlu.fit.Utils.Utils" %><%--
  Created by IntelliJ IDEA.
  User: nhath
  Date: 11/22/2019
  Time: 3:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

                <li><a href="<%=Utils.fullPath("ListProductServlet?category="+resultSet.getString(1))%>">
                    <%=resultSet.getString(2)
                    %>
                </a></li>

                <%
                    }
                %>
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


</body>
</html>
