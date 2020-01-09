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
            <div class="d-flex justify-content-center">
                <p class="h5 text-primary createShowP">ORDERS MANAGER</p>
            </div>
        </div>

        <table class="table table-striped table-bordered" width="100%">
            <thead style="text-align: center">
            <tr>
<%--
                <th class="th-sm">Order Id</th>
--%>
                <th class="th-sm">User Name</th>
                <th class="th-sm">Status</th>
                <th class="th-sm">Create At</th>
                <th class="th-sm">Total Price</th>
                <th class="th-sm">Remove</th>
            </tr>
            </thead>
            <tbody id="tableProductBody">
            <%
                ResultSet resultSet = (ResultSet) request.getAttribute("adminOrder");
                while (resultSet.next()) {
                    String ordersId = resultSet.getString(1);
                    String userName = resultSet.getString(2);
                    int ordersStatus = resultSet.getInt(3);
                    String ordersCreateAt = resultSet.getString(4);
                    double ordersTotal = resultSet.getDouble(5);
            %>
            <tr>
              <%--  <td><%=ordersId%>
                </td>--%>
                <td><%=userName%>
                </td>
                <%
                    if (ordersStatus == 0) {
                %>
                <td>UNPAID_ORDER
                </td>
                <%
                } else if (ordersStatus == 1) {
                %>
                <td>PAID_ORDER
                </td>
                <%
                    }
                %>
                <td><%=ordersCreateAt%>
                </td>
                <td><%=ordersTotal%>
                </td>
                <td class="remove__order">
                    <div class="modal fade" id="<%="remove" + ordersId%>" tabindex="-1" role="dialog"
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
                                    <p class="text-center h4">Are you sure to delete this order?</p>

                                </div>
                                <div class="modal-footer d-flex justify-content-center deleteButtonsWrapper">
                                    <a href="<%=Utils.fullPath("RemoveOrderServlet?orderRemoveId=" + ordersId)%>"
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
                           data-target="#<%="remove" + ordersId%>" style="width: 97px; background-color: #ff3547; color: white !important">Delete<i
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
<%--
                <th class="th-sm">Order Id</th>
--%>
                <th class="th-sm">User Name</th>
                <th class="th-sm">Status</th>
                <th class="th-sm">Create At</th>
                <th class="th-sm">Total Price</th>
                <th class="th-sm">Remove</th>
            </tr>
            </tfoot>
        </table>
        <div class="show__page__container">
            <%
                int size = (int) request.getAttribute("orderSize");
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
                            <a href="<%=Utils.fullPath("AdminHomeProductServlet?pages=1")%>"><<
                            </a>
                        </li>
                        <%
                            for (int i = 1; i <= numPager; i++) {
                        %>
                        <li>
                            <a class="<%= (i+"").equals(request.getParameter("pages"))? "active__page" : ""%>"
                               href="<%=Utils.fullPath("AdminHomeProductServlet?pages="+i)%>"><%=i%>
                            </a></li>

                        <%
                            }
                        %>
                        <li>
                            <a href="<%=Utils.fullPath("AdminHomeProductServlet?pages="+numPager)%>"
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
