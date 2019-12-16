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
                        <li class="breadcrumb-item"><a class="color-green" href="<%=Utils.fullPath("HomeServlet")%>">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">Register</li>
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
                        <h2>REGISTER ACCOUNT</h2>
                        <p>If you already have an account with us, please login at the login page.</p>
                    </div>
                    <form action="<%=Utils.fullPath("RegisterServlet")%>" method="post">
                        <div class="register__title">
                            <h5>Your Personal Details</h5>
                        </div>

                        <div class="information">

                            <div>
                                <label><span>*</span>First Name</label>
                                <input type="text" name="firstNameRegister" required="required" placeholder="First Name" pattern="[A-Za-z. ]{3,30}" oninvalid="setCustomValidity('**First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.')" oninput="setCustomValidity('')"/>
                            </div>

                            <%
                                String errFirstName = (String) request.getAttribute("errFirstName");
                                if (errFirstName != null) {
                            %>

                            <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errFirstName%></span>
                            </div>

                            <%
                                }
                            %>

                            <div>
                                <label><span>*</span>Last Name</label>
                                <input type="text" name="lastNameRegister" required="required" placeholder="Last Name" pattern="[A-Za-z. ]{3,30}" oninvalid="setCustomValidity('**Last Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.')" oninput="setCustomValidity('')"/>
                            </div>

                            <%
                                String errLastName = (String) request.getAttribute("errLastName");
                                if (errLastName != null) {
                            %>

                            <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">

                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errLastName%></span>
                            </div>

                            <%
                                }
                            %>

                            <div>
                                <label><span>*</span>E-Mail</label>
                                <input type="text" name="emailRegister" required="required" placeholder="E-Mail" <%--pattern="/^[-a-z0-9~!$%^&*_=+}{'?]+(\.[-a-z0-9~!$%^&*_=+}{'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i" oninvalid="setCustomValidity('**Địa chỉ email không hợp lệ, phải có một và chỉ một ký tự @.')" oninput="setCustomValidity('')"--%>/>
                            </div>

                            <%
                                String errEmail = (String) request.getAttribute("errEmailRegister");
                                if (errEmail != null) {
                            %>

                            <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">

                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errEmail%></span>
                            </div>

                            <%
                                }
                            %>

                            <div>
                                <label><span>*</span>Telephone</label>
                                <input type="text" name="phoneRegister" required="required" placeholder="Telephone" pattern="^[0-9]{9,11}$" oninvalid="setCustomValidity('**Số điện thoại phải là ký tự số và tối thiểu 9 ký tự và tối đa 11 ký tự.')" oninput="setCustomValidity('')"/>
                            </div>

                            <%
                                String errPhone = (String) request.getAttribute("errPhone");
                                if (errPhone != null) {
                            %>

                            <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">

                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errPhone%></span>
                            </div>

                            <%
                                }
                            %>

                            <div class="register__title">
                                <h5>Your Password</h5>
                            </div>

                            <div class="information">
                                <div>
                                    <label><span>*</span>Password</label>
                                    <input type="password" name="passwordRegister" required="required" placeholder="Password" pattern="^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$" oninvalid="setCustomValidity('**Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số. ')" oninput="setCustomValidity('')"/>
                                </div>

                                <%
                                    String errPass = (String) request.getAttribute("errPassRegister");
                                    if (errPass != null) {
                                %>

                                <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">

                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errPass%></span>
                                </div>

                                <%
                                    }
                                %>

                                <div>
                                    <label><span>*</span>Password Confirm</label>
                                    <input type="password" name="passwordConfirmRegister" required="required" placeholder="Password Confirm">
                                </div>

                                <%
                                    String errPassConfirm = (String) request.getAttribute("errPassConfirmRegister");
                                    if (errPassConfirm != null) {
                                %>

                                <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">

                                <span>
                                    <i class="fas fa-exclamation-circle" aria-hidden="true"
                                       style="height: 100%; padding: 5px;text-align: start"></i><%=errPassConfirm%></span>
                                </div>

                                <%
                                    }
                                %>

                            </div>

                            <div class="bottom__register">
                                <div class="pull__right">
                                    I have read and agree to the
                                    <a href="privacy-policy.jsp">Privacy Policy</a>
                                    &nbsp;
                                    <input type="checkbox" required="required" oninvalid="setCustomValidity('Xin vui lòng chấp nhận điều khoản của chúng tôi nếu bạn muốn tiếp tục')" oninput="setCustomValidity('')"/>
                                    &nbsp;
                                    <button class="continue__button" type="submit">
                                        Continue
                                    </button>
                                </div>
                            </div>

                        </div>
                    </form>


                </div>
            </div>
        </div>
    </section>
</main>

<%@ include file="footer.jsp" %>

<%@ include file="scroll-to-top.jsp"%>

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