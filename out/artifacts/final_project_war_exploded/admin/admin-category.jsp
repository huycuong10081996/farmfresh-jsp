<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utils.Utils" %>
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

        <div class="block my-4">

            <div class="input-group mb-3 col-lg-5">
                <form action="<%=Utils.fullPath("AdminHomeCategoryServlet?pages=1")%>" method="post" style="display: flex">
                    <input type="text" id="product_find" class="form-control" placeholder="Product Name..."
                           aria-label="Type something..." aria-describedby="button-addon2" name="findCategory">
                    <div class="input-group-append">
                        <button class="btn btn-info btn-rounded btn-sm" type="submit" id="button_find"
                                onclick="">Find
                        </button>
                    </div>
                </form>
            </div>

            <div class="d-flex justify-content-center">
                <p class="h5 text-primary createShowP">CATEGORIES MANAGER</p>
            </div>
        </div>

        <div class="row d-flex justify-content-center modalWrapper">
            <div class="modal fade addNewInputs" id="categoryAdd" tabindex="-1" role="dialog"
                 aria-labelledby="modalAdd" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header text-center">
                            <h4 class="modal-title w-100 font-weight-bold text-primary ml-5">ADD NEW
                                CATEGORY</h4>
                            <button type="button" class="close text-primary" data-dismiss="modal"
                                    aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="<%=Utils.fullPath("AddCategoryServlet")%>" method="post">
                            <div class="modal-body mx-3">
                                <div class="md-form mb-5">
                                    <input type="text" id="categoryId" class="form-control validate"
                                           placeholder="Category Id" name="categoryId" required="required"
                                           pattern="[A-Za-z0-9. ]{3,20}"
                                           oninvalid="setCustomValidity('**Id phải tối thiểu 3 ký tự, tối đa 20 ký tự, không có ký tự đặc biệt.')"
                                           oninput="setCustomValidity('')"/>
                                </div>

                                <%
                                    String errCategoryId = (String) request.getAttribute("errCategoryId");
                                    if (errCategoryId != null) {
                                %>
                                <div class="md-form mb-5">
                                    <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                        <span><%=errCategoryId%></span>
                                    </div>
                                </div>
                                <%
                                    }
                                %>

                                <div class="md-form mb-5">
                                    <input type="text" id="categoryTitle" class="form-control validate"
                                           placeholder="Category Title" name="categoryTitle" required="required"
                                           pattern="[A-Za-z. ]{3,30}"
                                           oninvalid="setCustomValidity('**Category Title phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.')"
                                           oninput="setCustomValidity('')"/>
                                </div>

                                <%
                                    String errCategoryTitle = (String) request.getAttribute("errCategoryTitle");
                                    if (errCategoryTitle != null) {
                                %>
                                <div class="md-form mb-5">
                                    <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                        <span><%=errCategoryTitle%></span>
                                    </div>
                                </div>
                                <%
                                    }
                                %>

                            </div>
                            <div class="modal-footer d-flex justify-content-center buttonAddFormWrapper">
                                <button class="btn btn-outline-primary btn-block buttonAdd" type="submit">
                                    ADD CATEGORY
                                    <i class="fas fa-paper-plane-o ml-1"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="text-center">
                <a href="" class="btn btn-rounded btn-sm" data-toggle="modal" style="background-color: #7fba00; color: white !important"
                   data-target="#categoryAdd">Add new category<i class="fas fa-plus-square ml-1"></i></a>
            </div>
        </div>

        <table class="table table-striped table-bordered" width="100%">
            <thead style="text-align: center">
            <tr>
                <th class="th-sm">Id</th>
                <th class="th-sm">Title</th>
                <th class="th-sm">Create By</th>
                <%--
                                <th class="th-sm">Product Quantity</th>
                --%>
                <th class="th-sm">Edit</th>
                <th class="th-sm">Remove</th>
            </tr>
            </thead>
            <tbody id="tableProductBody">
            <%
                ResultSet resultSet = (ResultSet) request.getAttribute("adminCategory");
                while (resultSet.next()) {
                    String categoryId = resultSet.getString(1);
                    String categoryTitle = resultSet.getString(2);
                    String categoryCreateBy = resultSet.getString(3);
/*
                    int productCategoryQuantity = resultSet.getInt(4);
*/
            %>
            <tr>
                <td><%=categoryId%>
                </td>
                <td><%=categoryTitle%>
                </td>
                <td><%=categoryCreateBy%>
                </td>
                <%--<td><%=productCategoryQuantity%>
                </td>--%>
                <td class="edit__user">
                    <div class="modal fade modalEditClass" id="<%=categoryId%>" tabindex="-1" role="dialog"
                         aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header text-center">
                                    <h4 class="modal-title w-100 font-weight-bold text-secondary ml-5">Edit
                                        Category</h4>
                                    <button type="button" class="close text-secondary" data-dismiss="modal"
                                            aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="<%=Utils.fullPath("UpdateCategoryServlet?categoryEditId=" + categoryId)%>"
                                      method="post">
                                    <div class="modal-body mx-3">
                                        <div class="md-form mb-5" style="display: none">
                                            <input type="number" name="pageCategoryEdit"
                                                   value="<%=request.getParameter("pages")%>">
                                        </div>

                                        <div class="md-form mb-5">
                                            <input type="text" name="categoryTitleEdit"
                                                   class="form-control validate"
                                                   placeholder="Last Name" required="required"
                                                   value="<%=categoryTitle%>"
                                                   pattern="[A-Za-z. ]{3,30}"
                                                   oninvalid="setCustomValidity('**Category Title phải tối thiểu 3 ký tự, tối đa 30 ký tự, không có số, không có ký tự đặc biệt.')"
                                                   oninput="setCustomValidity('')">
                                        </div>

                                        <%
                                            String errCategoryTitleEdit = (String) request.getAttribute("errCategoryTitleEdit");
                                            if (errCategoryTitleEdit != null) {
                                        %>
                                        <div class="md-form mb-5">
                                            <div style="display: flex;justify-content: left;align-items: center;color: #DB3c31;background: #f5f7f7;padding: 5px">
                                                <span><%=errCategoryTitleEdit%></span>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>

                                        <div class="modal-footer d-flex justify-content-center editInsideWrapper">
                                            <button class="btn btn-outline-secondary btn-block editInside"
                                                    type="submit">
                                                EDIT CATEGORY
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
                           data-target="#<%=categoryId%>" style="width: 85px">Edit<i
                                class="fas fa-plus-square ml-1"></i></a>
                    </div>
                </td>

                <td class="remove__user">
                    <div class="modal fade" id="<%="remove" + categoryId%>" tabindex="-1" role="dialog"
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
                                    <p class="text-center h4">Are you sure to delete this category?</p>

                                </div>
                                <div class="modal-footer d-flex justify-content-center deleteButtonsWrapper">
                                    <a href="<%=Utils.fullPath("RemoveCategoryServlet?categoryRemoveId=" + categoryId)%>"
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
                           data-target="#<%="remove" + categoryId%>" style="width: 97px; background-color: #ff3547; color: white !important">Delete<i
                                class="fas fa-plus-square ml-1"></i></a>
                    </div>
                </td>
            </tr>
            <%
                }
            %>
            </tbody>
            <tfoot style="text-align: center">
            <tr>
                <th class="th-sm">Id</th>
                <th class="th-sm">Title</th>
                <th class="th-sm">Create By</th>
                <%--
                                <th class="th-sm">Product Quantity</th>
                --%>
                <th class="th-sm">Edit</th>
                <th class="th-sm">Remove</th>
            </tr>
            </tfoot>
        </table>

        <div class="show__page__container">
            <%
                int size = (int) request.getAttribute("categorySize");
                String pPage = request.getParameter("pages");
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
                            <a href="<%=Utils.fullPath("AdminHomeCategoryServlet?pages=1")%>"><<
                            </a>
                        </li>
                        <%
                            for (int i = 1; i <= numPager; i++) {
                        %>
                        <li>
                            <a class="<%= (i+"").equals(request.getParameter("pages"))? "active__page" : ""%>"
                               href="<%=Utils.fullPath("AdminHomeCategoryServlet?pages="+i)%>"><%=i%>
                            </a></li>

                        <%
                            }
                        %>
                        <li>
                            <a href="<%=Utils.fullPath("AdminHomeCategoryServlet?pages="+numPager)%>"
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
<!-- jQuery CDN - Slim version (=without AJAX) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>
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