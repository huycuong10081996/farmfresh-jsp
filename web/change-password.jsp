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
    <link rel="stylesheet" href="css/category.css"/>
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="css/footer.css">
</head>

<body>
<%@ include file="header.jsp" %>

<main>
    <section class="register__title__wrapper">
        <div class="container">
            <div class="breadcrumb__container row align-items-center">
                <div class="breadcrumb__icon">
                    <i class="fa fa-home"></i>
                </div>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb non-bg">
                        <li class="breadcrumb-item"><a class="color-green" href="<%=Utils.fullPath("HomeServlet")%>">Home</a>
                        </li>
                        <li class="breadcrumb-item" aria-current="page">Change Password</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>

    <section class="categories__menu__wrapper">
        <div class="container">
            <div class="register__wrapper row">
                <%@ include file="nav-menu.jsp" %>

                <div class="register__content__wrapper">
                    <div class="register__header">
                        <h2 style="margin-top: 8px">CHANGE YOUR PASSWORD</h2>
                    </div>
                    <%
                        if (u != null) {
                    %>
                    <form action="<%=Utils.fullPath("UserPasswordUpdateServlet")%>" method="post">
                        <div class="register__title">
                            <h5>Your Password</h5>
                        </div>

                        <div class="information">

                            <%
                                String errPass = (String) request.getAttribute("errPasswordUpdate");
                                if (errPass != null) {
                            %>
                            <div>
                                <label><span>*</span>Password Confirm</label>
                                <input type="password" name="passwordUpdate" placeholder="Password" value="<%=u.getUserPassword()%>">
                            </div>
                            <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errPass%></span>
                            </div>
                            <%
                            } else {
                            %>
                            <div>
                                <label><span>*</span>Password</label>
                                <input type="password" name="passwordUpdate" placeholder="Password" value="<%=u.getUserPassword()%>">
                            </div>
                            <%
                                }
                            %>

                            <%
                                String errPassConfirm = (String) request.getAttribute("errPassConfirmUpdate");
                                if (errPassConfirm != null) {
                            %>
                            <div>
                                <label><span>*</span>Password Confirm</label>
                                <input type="password" name="passwordConfirmUpdate" placeholder="Password Confirm">
                            </div>
                            <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errPassConfirm%></span>
                            </div>
                            <%
                                } else {
                            %>
                            <div>
                                <label><span>*</span>Password Confirm</label>
                                <input type="password" name="passwordConfirmUpdate" placeholder="Password Confirm">
                            </div>
                            <%
                                }
                            %>

                            <div class="bottom__register">
                                <div class="pull__right" style="width:100%;display: flex;justify-content: space-between">

                                    <div class="step2__btn">
                                        <a href="my-account.jsp" class="continue">Back</a>
                                    </div>

                                    <button type="submit" class="continue__button">
                                        Continue
                                    </button>
                                </div>
                            </div>

                        </div>
                    </form>
                    <%
                    } else {
                    %>
                    <div class="message__review"
                         style=" display: flex; justify-content: center; align-items: center; padding: 20px 0 0 0">
                        <h4 style=" font-weight: 600">You need to <a href="login.jsp" style=" font-weight: 600">log
                            in</a>.</h4>
                    </div>
                    <%
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