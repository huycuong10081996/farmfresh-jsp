<%@ page import="vn.edu.nlu.fit.Utils.Utils" %>
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
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/category.css"/>
</head>

<body>
<%@ include file="header.jsp" %>

<main>
    <section class="register__title">
        <div class="container">
            <div class="breadcrumb__container row align-items-center">
                <div class="breadcrumb__icon">
                    <i class="fa fa-home"></i>
                </div>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb non-bg">
                        <li class="breadcrumb-item"><a class="color-green" href="<%=Utils.fullPath("HomeServlet")%>">Home</a>
                        </li>
                        <li class="breadcrumb-item" aria-current="page">Login</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>

    <section class="categories__menu__wrapper">
        <div class="container">
            <div class="register__wrapper row">
                <%@ include file="nav-menu.jsp" %>

                <div class="login__content__wrapper row justify-content-between">
                    <div class="new__customer">
                        <form action="" class="new__customer__form">
                            <div>
                                <h5>New Customer</h5>
                            </div>
                            <div>
                                <p style="color: #5f5f5f;" class="text__level2">Register Account</p>
                            </div>
                            <div>
                                <p style="color: #5f5f5f;">By creating an account you will be able to shop faster,
                                    be
                                    up to date on an order's
                                    status, and keep track of the orders you have previously made.
                                </p>
                            </div>
                            <div class="button__level2">
                                <a href="register.jsp">Continue</a>
                            </div>
                        </form>
                    </div>

                    <div class="returning__customer">
                        <form action="<%=Utils.fullPath("LoginServlet")%>" class="returning__customer__form"
                              method="post">
                            <div>
                                <h5>Returning Customer</h5>
                            </div>
                            <div>
                                <p style="color: #5f5f5f;" class="text__level2">I am a returning Customer</p>
                            </div>

                            <%
                                String emailValue = request.getParameter("emailLogin");
                                if (emailValue != null) {
                            %>
                            <div>
                                <p>Email Address</p>
                                <input type="text" name="emailLogin" required="required" id="emailLogin" placeholder="E-Mail Address..."
                                       value='<%=emailValue%>'/>
                            </div>
                            <%
                                } else {
                            %>

                            <div>
                                <p>Email Address</p>
                                <input type="text" name="emailLogin" required="required" id="" placeholder="E-Mail Address..."/>
                            </div>
                            <%
                                }
                            %>
                            <%
                                String errEmail = (String) request.getAttribute("errEmail");
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
                                <input type="password" name="passLogin" id="passLogin" required="required" placeholder="Password...">
                            </div>
                            <%
                                String errPass = (String) request.getAttribute("errPassword");
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
    </section>
</main>

<%@ include file="footer.jsp" %>

<%@ include file="scroll-to-top.jsp" %>

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
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

<script>
    AOS.init();
</script>
</body>

</html>