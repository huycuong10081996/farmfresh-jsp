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
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/admin.css">
</head>

<body>
    <header>
        <section class="header__admin">
            <div class="container full__height">
                <div class="row admin__header__wrapper align-items-center">
                    <div class="admin__logo col-lg-6">
                        <img src="img/logo.png" alt="">
                    </div>

                    <div class="admin__role col-lg-6">
                        <div><i class="fas fa-user"></i>
                            Admin
                            <i class="fas fa-angle-down"></i>

                            <ul class="admin__user__menu">
                                <li>Log out</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </header>

    <main>
        <section class="admin__content__wrapper">
            <div class="container">
                <div class="admin__content row">

                    <div class="tab col-lg-3 none__padding">
                        <button class="tablinks" onclick="openCity(event, 'Dashboard')"><i
                                class="fas fa-home"></i>&nbsp;&nbsp;Dashboard</button>
                        <button class="tablinks"><i class="fas fa-tag"></i>&nbsp;&nbsp;Products Management</button>

                        <button class="tablinks active" onclick="openCity(event, 'ProductList')">Products List</button>

                        <button class="tablinks" onclick="openCity(event, 'Paris')">Categories List</button>

                        <button class="tablinks" onclick="openCity(event, 'AccountsManagement')">
                            <i class="fas fa-user-friends"></i>&nbsp;&nbsp;Accounts Management
                        </button>

                        <button class="tablinks" onclick="openCity(event, 'Tokyo')">
                            <i class="fas fa-receipt"></i>&nbsp;&nbsp;Orders Management
                        </button>

                        <button class="tablinks" onclick="openCity(event, 'Tokyo')">
                            <i class="fas fa-chart-pie"></i>&nbsp;&nbsp;Report
                        </button>
                    </div>
                    <div class="content__admin col-lg-9 none__padding">
                        <div id="Dashboard" class="tabcontent">
                            <h3>Dashboard Home</h3>
                            <p></p>
                        </div>

                        <div id="ProductList" class="tabcontent active">
                            <h3>Products List</h3>
                            <div class="search__wrapper">
                                <h4>Advanced search</h4>
                                <div class="search__container row">
                                    <div class="search__label col-lg-4">
                                        <p class="" for="">Title</p>
                                        <input class="" id="myInput" onkeyup="myFunction()"
                                            placeholder="Search for names.." type="text">
                                    </div>

                                    <div class="search__label col-lg-4">
                                        <p class="" for="">Category</p>
                                        <select id="categories" onchange="myFunction()"
                                            class="browser-default custom-select"
                                            aria-label="Example select with button addon">
                                            <option value="Organic Fruits">Organic Foods</option>
                                            <option value="Chemical Free">Chemical Free</option>
                                            <option value="Fruits">Fruits</option>
                                            <option value="Nursery">Nursery</option>
                                            <option value="Vegetables">Vegetables</option>
                                        </select>
                                    </div>

                                    <div class="search__label col-lg-4">
                                        <p class="" for="">Status</p>
                                        <select id="status" onchange="myFunction()"
                                            class="browser-default custom-select"
                                            aria-label="Example select with button addon">
                                            <option value="Active">Active</option>
                                            <option value="Disable">Disable</option>
                                            <option value="Will Available">Will Available</option>
                                        </select>
                                    </div>
                                </div>

                            </div>

                            <div class="result">

                                <table class="myTable">
                                    <tr class="header__table">
                                        <th>Id</th>
                                        <th>Name</th>
                                        <th>Category</th>
                                        <th>Price</th>
                                        <th>Sale Price</th>
                                        <th>Status</th>
                                    </tr>
                                    <tbody id="myTable">
                                        <tr>
                                            <td>123456</td>
                                            <td>Guava</td>
                                            <td>Organic Foods</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Active</td>
                                        </tr>
                                        <tr>
                                            <td>012321</td>
                                            <td>Strawberry</td>
                                            <td>Fruits</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Disable</td>
                                        </tr>
                                        <tr>
                                            <td>123662</td>
                                            <td>Vegetables</td>
                                            <td>Vegetables</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Disable</td>
                                        </tr>
                                        <tr>
                                            <td>123456</td>
                                            <td>Guava</td>
                                            <td>Organic Foods</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Active</td>
                                        </tr>
                                        <tr>
                                            <td>123456</td>
                                            <td>Guava</td>
                                            <td>Organic Foods</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Active</td>
                                        </tr>
                                        <tr>
                                            <td>012321</td>
                                            <td>Strawberry</td>
                                            <td>Fruits</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Disable</td>
                                        </tr>
                                        <tr>
                                            <td>123662</td>
                                            <td>Vegetables</td>
                                            <td>Vegetables</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Disable</td>
                                        </tr>

                                        <tr>
                                            <td>123456</td>
                                            <td>Guava</td>
                                            <td>Organic Foods</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Active</td>
                                        </tr>
                                        <tr>
                                            <td>012321</td>
                                            <td>Strawberry</td>
                                            <td>Fruits</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Disable</td>
                                        </tr>
                                        <tr>
                                            <td>123662</td>
                                            <td>Vegetables</td>
                                            <td>Vegetables</td>
                                            <td>120000</td>
                                            <td>110000</td>
                                            <td>Disable</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                        <div id="AccountsManagement" class="tabcontent">
                            <h3>Account Management</h3>
                            <p></p>
                        </div>

                        <div id="Tokyo" class="tabcontent">
                            <h3>Order Management</h3>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer></footer>
    <!-- Javascript -->
    <script src="js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>

    <script src="js/admin.js"></script>
</body>

</html>