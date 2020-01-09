<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utils.Utils" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="vn.edu.nlu.fit.DB.ConnectionDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <!-- Scrollbar Custom CSS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
            integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous">
    </script>

    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
            integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous">
    </script>

    <script src="admin/ckeditor/ckeditor.js"></script>
    <script src="admin/ckfinder/ckfinder.js"></script>

    <link rel="stylesheet" href="admin/libs/MDB-Free/css/mdb.min.css">
    <link rel="stylesheet" href="admin/libs/MDB-Free/css/bootstrap.min.css">
    <link rel="stylesheet" href="admin/libs/MDB-Free/css/mdb.lite.min.css">
    <link rel="stylesheet" href="admin/libs/MDB-Free/css/style.css">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" href="admin/css/admin.css">
    <title>Document</title>
</head>

<body>
<%
    Admin admin = (Admin) session.getAttribute("admin");
    if (admin != null) {
%>
<div class="wrapper">

    <%@include file="slide-bar.jsp" %>
    <!-- Page Content  -->
    <div id="content">
        <%@include file="nav-bar.jsp" %>
        <!-- Product -->
        <div class="wrapper-editor">

            <div class="block my-4">

                <div class="input-group mb-3 col-lg-5">
                    <form action="<%=Utils.fullPath("AdminHomeAdminServlet?pages=1")%>" method="post" style="display: flex">
                        <input type="text" id="admin_find" class="form-control" placeholder="Admin Name..."
                               aria-label="Type something..." aria-describedby="button-addon2" name="findAdmin">
                        <div class="input-group-append">
                            <button class="btn btn-info btn-rounded btn-sm" type="submit" id="button_find"
                                    onclick="">Find
                            </button>
                        </div>
                    </form>
                </div>

                <div class="d-flex justify-content-center">
                    <p class="h5 text-primary createShowP">ADMINS MANAGER</p>
                </div>
            </div>

            <div class="row d-flex justify-content-center modalWrapper">
                <div class="modal fade addNewInputs" id="adminAdd" tabindex="-1" role="dialog"
                     aria-labelledby="modalAdd" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-bold text-primary ml-5">ADD NEW
                                    ADMIN</h4>
                                <button type="button" class="close text-primary" data-dismiss="modal"
                                        aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="<%=Utils.fullPath("AddAdminServlet")%>" method="post">
                                <div class="modal-body mx-3">

                                    <div class="md-form mb-5">
                                        <input type="text" id="adminName" class="form-control validate"
                                               placeholder="Admin Name" name="adminName" required="required"
                                               pattern="[A-Za-z. ]{3,30}"
                                               oninvalid="setCustomValidity('**First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.')"
                                               oninput="setCustomValidity('')"/>
                                    </div>

                                    <%
                                        String errName = (String) request.getAttribute("errAdminNameAdd");
                                        if (errName != null) {
                                    %>
                                    <div class="md-form mb-5">
                                        <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                            <span><%=errName%></span>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    %>

                                    <div class="md-form mb-5">
                                        <input type="email" id="adminEmail" class="form-control validate"
                                               placeholder="Email Address" name="adminEmail" required="required">
                                    </div>
                                    <%
                                        String errEmail = (String) request.getAttribute("errAdminEmailAdd");
                                        if (errEmail != null) {
                                    %>
                                    <div class="md-form mb-5">
                                        <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                            <span><%=errEmail%></span>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    %>

                                    <div class="md-form mb-5">
                                        <input type="password" id="adminPassword" class="form-control validate"
                                               placeholder="Password" name="adminPassword"
                                               required="required"
                                               pattern="^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$"
                                               oninvalid="setCustomValidity('**Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số. ')"
                                               oninput="setCustomValidity('')"/>
                                    </div>

                                    <%
                                        String errPass = (String) request.getAttribute("errAdminPassAdd");
                                        if (errPass != null) {
                                    %>
                                    <div class="md-form mb-5">
                                        <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                            <span><%=errPass%></span>
                                        </div>
                                    </div>
                                    <%
                                        }
                                    %>

                                    <select class="custom-select" name="adminPermission" style="padding: 0 8px" required>
                                        <option selected value="0">Choose</option>
                                        <option value="1">Root</option>
                                        <option value="0">Admin</option>
                                    </select>

                                </div>
                                <div class="modal-footer d-flex justify-content-center buttonAddFormWrapper">
                                    <button class="btn btn-outline-primary btn-block buttonAdd" type="submit">
                                        ADD ADMIN
                                        <i class="fas fa-paper-plane-o ml-1"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <div class="text-center">
                    <a href="" class="btn btn-rounded btn-sm" data-toggle="modal" style="background-color: #7fba00; color: white !important"
                       data-target="#adminAdd">Add new admin<i class="fas fa-plus-square ml-1"></i></a>
                </div>

            </div>

            <table class="table table-striped table-bordered" width="100%" style="overflow: scroll">
                <thead style="text-align: center">
                <tr>
                    <th class="th-sm">Name</th>
                    <th class="th-sm">Email</th>
                    <th class="th-sm">Permission</th>
                    <%
                        if (admin.getPermission() == 1) {
                    %>
                    <th class="th-sm">Edit</th>
                    <th class="th-sm">Delete</th>
                    <%
                        }
                    %>
                </tr>
                </thead>
                <tbody id="tableProductBody">

                <%
                    ResultSet resultSet = (ResultSet) request.getAttribute("adminList");
                    while (resultSet.next()) {
                        String adminId = resultSet.getString(1);
                        String adminName = resultSet.getString(2);
                        String adminPass = resultSet.getString(3);
                        String adminEmail = resultSet.getString(5);
                        int adminPermission = resultSet.getInt(4);
                %>

                <tr>
                    <td><%=adminName%></td>
                    <td><%=adminEmail%></td>
                    <%
                        if (adminPermission == 0) {
                    %>
                    <td>Admin</td>
                    <%
                        } else if (adminPermission == 1) {
                    %>
                    <td>Root</td>
                    <%
                        }
                    %>
                    <%
                        if (admin.getPermission() == 1) {
                    %>
                    <td class="edit__product">
                        <div class="modal fade modalEditClass" id="<%=adminId%>" role="dialog"
                             aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header text-center">
                                        <h4 class="modal-title w-100 font-weight-bold text-secondary ml-5">Edit
                                            Admin</h4>
                                        <button type="button" class="close text-secondary" data-dismiss="modal"
                                                aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="<%=Utils.fullPath("EditAdminServlet?adminIdEdit=" + adminId)%>"
                                          method="post">
                                        <div class="modal-body mx-3">
                                            <div class="md-form mb-5" style="display: none">
                                                <input type="number" name="pageAdminEdit"
                                                       value="<%=request.getParameter("pages")%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" id="adminNameEdit" class="form-control validate"
                                                       placeholder="Admin Name" name="adminNameEdit" required="required"
                                                       pattern="[A-Za-z. ]{3,30}" value="<%=adminName%>"
                                                       oninvalid="setCustomValidity('**First Name phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>

                                            <%--<%
                                                String errNameEdit = (String) request.getAttribute("errAdminNameEdit");
                                                if (errNameEdit != null) {
                                            %>
                                            <div class="md-form mb-5">
                                                <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                                    <span><%=errNameEdit%></span>
                                                </div>
                                            </div>
                                            <%
                                                }
                                            %>--%>

                                            <div class="md-form mb-5">
                                                <input type="email" id="adminEmailEdit" class="form-control validate"
                                                       placeholder="Email Address" name="adminEmailEdit" required="required" value="<%=adminEmail%>">
                                            </div>

                                          <%--  <%
                                                String errEmailEdit = (String) request.getAttribute("errAdminEmailEdit");
                                                if (errEmailEdit != null) {
                                            %>
                                            <div class="md-form mb-5">
                                                <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                                    <span><%=errEmailEdit%></span>
                                                </div>
                                            </div>
                                            <%
                                                }
                                            %>--%>

                                            <div class="md-form mb-5">
                                                <input type="password" id="adminPasswordEdit" class="form-control validate"
                                                       placeholder="Password" name="adminPasswordEdit"
                                                       required="required" value="<%=adminPass%>"
                                                       pattern="^(?=.*?[A-Za-z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$"
                                                       oninvalid="setCustomValidity('**Password phải có ít nhất một ký tự viết hoa, một ký tự đặc biệt, một ký tự số. ')"
                                                       oninput="setCustomValidity('')"/>
                                            </div>

                                         <%--   <%
                                                String errPassEdit = (String) request.getAttribute("errAdminPassEdit");
                                                if (errPassEdit != null) {
                                            %>
                                            <div class="md-form mb-5">
                                                <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                                    <span><%=errPassEdit%></span>
                                                </div>
                                            </div>
                                            <%
                                                }
                                            %>--%>

                                            <select class="custom-select" name="adminPermissionEdit" style="padding: 0 8px" required>
                                                <option selected value="0">Choose</option>
                                                <option value="1">Root</option>
                                                <option value="0">Admin</option>
                                            </select>

                                            <div class="modal-footer d-flex justify-content-center editInsideWrapper">
                                                <button class="btn btn-outline-secondary btn-block editInside"
                                                        type="submit">
                                                    EDIT ADMIN
                                                    <i class="fas fa-paper-plane-o ml-1"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="text-center">
                            <a href="#" class="btn btn-info btn-rounded btn-sm" data-toggle="modal"
                               data-target="#<%=adminId%>" style="width: 85px">Edit<i
                                    class="fas fa-plus-square ml-1"></i></a>
                        </div>
                    </td>

                    <td class="remove__product">
                        <div class="modal fade" id="<%="remove" + adminId%>" tabindex="-1" role="dialog"
                             aria-labelledby="modalDelete1"
                             aria-hidden="true">

                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header text-center">
                                        <h4 class="modal-title w-100 font-weight-bold ml-5 text-danger">Delete</h4>
                                        <button type="button" class="close text-danger" data-dismiss="modal"
                                                aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body mx-3">
                                        <p class="text-center h4">Are you sure to delete this product?</p>

                                    </div>
                                    <div class="modal-footer d-flex justify-content-center deleteButtonsWrapper">
                                        <a href="<%=Utils.fullPath("DeleteAdminServlet?adminDeleteId=" + adminId)%>"
                                           class="btn btn-danger btnYesClass">Yes
                                        </a>
                                        <button type="button" class="btn btn-primary btnNoClass" id="noDeleteProduct"
                                                data-dismiss="modal">No
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-center">
                            <a href="#" class="btn btn-rounded btn-sm" data-toggle="modal"
                               data-target="#<%="remove" + adminId%>"
                               style="width: 97px; background-color: #ff3547; color: white !important">Delete<i
                                    class="fas fa-plus-square ml-1"></i></a>
                        </div>
                    </td>

                    <%
                        }
                    %>
                </tr>
                <%
                    }
                %>
                </tbody>
                <tfoot style="text-align: center">
                <tr>
                    <th class="th-sm">Name</th>
                    <th class="th-sm">Email</th>
                    <th class="th-sm">Permission</th>
                    <%
                        if (admin.getPermission() == 1) {
                    %>
                    <th class="th-sm">Edit</th>
                    <th class="th-sm">Delete</th>
                    <%
                        }
                    %>
                </tr>
                </tfoot>
            </table>

            <div class="show__page__container">
                <%
                    int size = (int) request.getAttribute("adminSize");
                    resultSet.beforeFirst();
                    while (resultSet.next()) {
                        int counter = 0;
                        int numPager = 1;
                        int show = 9;
                        if (size <= 9) {
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
                                <a href="<%=Utils.fullPath("AdminHomeAdminServlet?pages=1")%>"><<
                                </a>
                            </li>
                            <%
                                for (int i = 1; i <= numPager; i++) {
                            %>
                            <li>
                                <a class="<%= (i+"").equals(request.getParameter("pages"))? "active__page" : ""%>"
                                   href="<%=Utils.fullPath("AdminHomeAdminServlet?pages="+i)%>"><%=i%>
                                </a></li>

                            <%
                                }
                            %>
                            <li>
                                <a href="<%=Utils.fullPath("AdminHomeAdminServlet?pages="+numPager)%>"
                                   id="<%=numPager%>">
                                    >>
                                </a>
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
</div>

<!-- jQuery CDN - Slim version (=without AJAX) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>
<!-- Popper.JS -->
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous">
</script>--%>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
        integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous">
</script>
<!-- jQuery Custom Scroller CDN -->
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js">
</script>

<script>

    $(document).ready(function () {
        $("#sidebar").mCustomScrollbar({
            theme: "minimal"
        });

        $('#sidebarCollapse').on('click', function () {
            $('#sidebar, #content').toggleClass('active');
            $('.collapse.in').toggleClass('in');
            $('a[aria-expanded=true]').attr('aria-expanded', 'false');
        });
    });
</script>
<%
    } else {
        response.sendRedirect("loginAdmin.jsp");
    }
%>
</body>
</html>