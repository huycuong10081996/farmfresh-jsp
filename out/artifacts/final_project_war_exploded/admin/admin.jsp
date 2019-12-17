<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utils.Utils" %>
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
<div class="wrapper">
    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header custom__sidebar">
            <img src="img/logo.png" alt="">
        </div>

        <ul class="list-unstyled components">
            <p>Farm Fresh</p>
            <li class="">
                <a href="<%=Utils.fullPath("AdminHomeProductServlet")%>" data-toggle="collapse" aria-expanded="false">Home</a>
            </li>
            <li>
                <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false"
                   class="dropdown-toggle">Pages</a>
                <ul class="collapse list-unstyled" id="pageSubmenu">
                    <li class="active">
                        <a href="<%=Utils.fullPath("AdminHomeProductServlet")%>">Product</a>
                    </li>
                    <li>
                        <a href="#">User</a>
                    </li>

                </ul>
            </li>

            <li>
                <a href="#">Contact</a>
            </li>
        </ul>

        <ul class="list-unstyled CTAs">
            <li>
                <a href="http://localhost:8080/final-project/HomeSerlet" class="article">Back to article</a>
            </li>
        </ul>
    </nav>

    <!-- Page Content  -->
    <div id="content">

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">

                <button type="button" id="sidebarCollapse" class="btn btn-info">
                    <i class="fas fa-align-left"></i>
                    <span>Toggle Sidebar</span>
                </button>
                <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-align-justify"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item">
                            <div class="dropdown">
                                <a class="btn btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Admin
                                </a>

                                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                    <a class="dropdown-item" href="#">Setting</a>
                                    <a class="dropdown-item" href="#">Logout</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Product -->
        <div class="wrapper-editor" id="page1">

            <div class="block my-4">

                <div class="input-group mb-3 col-lg-5">
                    <input type="text" id="product_find" class="form-control" placeholder="Product Name..."
                           aria-label="Type something..." aria-describedby="button-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-info btn-rounded btn-sm" type="button" id="button_find"
                                onclick="">Find
                        </button>
                    </div>
                </div>

                <div class="d-flex justify-content-center">
                    <p class="h5 text-primary createShowP">PRODUCTS MANAGER</p>
                </div>
            </div>

            <script>
                function findProduct() {
                    const inputElement = document.getElementById('find');
                    const valueInput = inputElement.value;
                }
            </script>

            <div class="row d-flex justify-content-center modalWrapper">
                <div class="modal fade addNewInputs" id="productAdd" tabindex="-1" role="dialog"
                     aria-labelledby="modalAdd" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-bold text-primary ml-5">ADD NEW
                                    PRODUCT</h4>
                                <button type="button" class="close text-primary" data-dismiss="modal"
                                        aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <form action="<%=Utils.fullPath("AddProductServlet")%>" method="post">
                                <div class="modal-body mx-3">
                                    <div class="md-form mb-5">
                                        <input type="text" id="productId" name="productId" class="form-control validate"
                                               placeholder="ID" required="required">
                                    </div>
                                    <div class="md-form mb-5">
                                        <input type="text" id="productName" class="form-control validate"
                                               placeholder="Name" name="productName" required="required"
                                               required="required">
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="text" id="productImage" class="form-control validate"
                                               placeholder="Image" name="productImage" required="required"
                                               required="required">
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="text" id="productPrice" class="form-control validate"
                                               placeholder="Price" name="productPrice" required="required"
                                               required="required"
                                               pattern="^[0-9]{1,100}$"
                                               oninvalid="setCustomValidity('**Giá sản phẩm phải là ký tự số')"
                                               oninput="setCustomValidity('')"/>
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="text" id="productSalePrice" class="form-control validate"
                                               placeholder="Sale Price" name="productSalePrice" required="required"
                                               required="required"
                                               pattern="^[0-9]{1,100}$"
                                               oninvalid="setCustomValidity('**Giá sản phẩm phải là ký tự số')"
                                               oninput="setCustomValidity('')"/>
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="text" id="productCategoryId" class="form-control validate"
                                               placeholder="Category Id" name="productCategoryId" required="required"
                                               required="required">
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="number" min="1" id="productQuantity" class="form-control validate"
                                               placeholder="Quantity" name="productQuantity" required="required"
                                               required="required">
                                    </div>

                                    <div class="md-form mb-5">
                                    <textarea class="form-control validate" id="productDescription" cols="30"
                                              rows="10" placeholder="Description" name="productDescription"></textarea>
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="number" min="-1" max="1" id="productStatus"
                                               class="form-control validate"
                                               placeholder="Status" name="productStatus" required="required">
                                    </div>

                                </div>
                                <div class="modal-footer d-flex justify-content-center buttonAddFormWrapper">
                                    <button class="btn btn-outline-primary btn-block buttonAdd" type="submit">
                                        ADD PRODUCT
                                        <i class="fas fa-paper-plane-o ml-1"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>


                <div class="text-center">
                    <a href="" class="btn btn-info btn-rounded btn-sm" data-toggle="modal"
                       data-target="#productAdd">Add<i class="fas fa-plus-square ml-1"></i></a>
                </div>

            </div>

            <table id="dt-more-columns" onclick="addRowHandlers()" class="table table-striped table-bordered"
                   cellspacing="0" width="100%">
                <thead style="text-align: center">
                <tr>
                    <th class="th-sm">Id</th>
                    <th class="th-sm">Name</th>
                    <th class="th-sm">Image</th>
                    <th class="th-sm">Price</th>
                    <th class="th-sm">SalePrice</th>
                    <th class="th-sm">Category</th>
                    <th class="th-sm">CreateAt</th>
                    <th class="th-sm">Quantity</th>
                    <th class="th-sm">Description</th>
                    <th class="th-sm">Status</th>
                    <th class="th-sm">Edit</th>
                    <th class="th-sm">Remove</th>
                </tr>
                </thead>
                <tbody id="tableProductBody">
                <%
                    ResultSet resultSet = (ResultSet) request.getAttribute("productAdmin");
                    while (resultSet.next()) {
                %>
                <tr>
                    <td style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100px; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; border: none; margin: 0">
                        <%=resultSet.getString(1)%>
                    </td>
                    <td><%=resultSet.getString(2)%>
                    </td>
                    <td><img src="<%=resultSet.getString(3)%>" alt="" style="width: 100px"></td>
                    <td>$<%=resultSet.getDouble(4)%>
                    </td>
                    <%
                        if (resultSet.getDouble(5) != 0) {
                    %>
                    <td>$<%=resultSet.getDouble(5)%>
                    </td>
                    <%
                    } else {
                    %>
                    <td>Note sales promotion.</td>
                    <%
                        }
                    %>
                    <td><%=resultSet.getString(6)%>
                    </td>
                    <td><%=resultSet.getString(8)%>
                    </td>
                    <td><%=resultSet.getInt(9)%>
                    </td>
                    <%
                        if (resultSet.getString(10) != null) {
                    %>
                    <td width="400px"><span
                            style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 50px;display: -webkit-box; -webkit-box-orient: vertical;-webkit-line-clamp: 2;"><%=resultSet.getString(10)%></span>
                    </td>
                    <%
                    } else {
                    %>
                    <td>This product no description.</td>
                    <%
                        }
                    %>
                    <%
                        if (resultSet.getInt(11) == -1) {
                    %>
                    <td>Out of quantity
                    </td>
                    <%
                    } else if (resultSet.getInt(11) == 0) {
                    %>
                    <td>Disable
                    </td>
                    <%
                    } else if (resultSet.getInt(11) == 1) {
                    %>
                    <td>Active
                    </td>
                    <%
                        }
                    %>
                    <td class="edit__product">
                        <div class="modal fade modalEditClass" id="productEdit" tabindex="-1" role="dialog"
                             aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header text-center">
                                        <h4 class="modal-title w-100 font-weight-bold text-secondary ml-5">Edit
                                            form</h4>
                                        <button type="button" class="close text-secondary" data-dismiss="modal"
                                                aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="<%=Utils.fullPath("EditProductServlet?productIdEdit="+ resultSet.getString(1))%>" method="post">
                                        <div class="modal-body mx-3">
                                            <div class="md-form mb-5">
                                                <input type="text" id="productNameEdit" name="productNameEdit" class="form-control validate"
                                                       placeholder="Name" required="required" value="<%=resultSet.getString(2)%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" id="productImageEdit" name="productImageEdit" class="form-control validate"
                                                       placeholder="Image" required="required" value="<%=resultSet.getString(3)%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" id="productPriceEdit" name="productPriceEdit" class="form-control validate"
                                                       placeholder="Price" required="required" value="<%=resultSet.getDouble(4)%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" id="productSalePriceEdit" name="productSalePriceEdit"
                                                       class="form-control validate"
                                                       placeholder="Sale Price" required="required" value="<%=resultSet.getDouble(5)%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" id="productCategoryIdEdit" name="productCategoryIdEdit"
                                                       class="form-control validate"
                                                       placeholder="Category" required="required" value="<%=resultSet.getString(12)%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="number" min="1" id="productQuantityEdit" name="productQuantityEdit"
                                                       class="form-control validate"
                                                       placeholder="Quantity" required="required" value="<%=resultSet.getInt(9)%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <textarea name="productDescriptionEdit" class="form-control validate"
                                                          id="productDescriptionEdit" cols="30" rows="10"
                                                          placeholder="Description" <%--required="required"--%> <%--value=""--%>><%=resultSet.getString(10)%></textarea>
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="number" min="-1" max="1" id="productStatusEdit" name="productStatusEdit"
                                                       class="form-control"
                                                       placeholder="Status" required="required" value="<%=resultSet.getInt(11)%>">
                                            </div>
                                            <div class="modal-footer d-flex justify-content-center editInsideWrapper">
                                                <button class="btn btn-outline-secondary btn-block editInside"
                                                        type="submit">
                                                    EDIT PRODUCT
                                                    <i class="fas fa-paper-plane-o ml-1"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="text-center">
                            <a href="" class="btn btn-info btn-rounded btn-sm" data-toggle="modal"
                               data-target="#productEdit" style="width: 85px">Edit<i
                                    class="fas fa-plus-square ml-1"></i></a>
                        </div>
                    </td>
                    <td class="remove__product">
                        <div class="modal fade" id="productDelete" tabindex="-1" role="dialog"
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
                                        <p class="text-center h4">Are you sure to delete selected row?</p>

                                    </div>
                                    <div class="modal-footer d-flex justify-content-center deleteButtonsWrapper">
                                        <button type="button" class="btn btn-danger btnYesClass" id="yesDeleteProduct"
                                                data-dismiss="modal" type="submit">Yes
                                        </button>
                                        <button type="button" class="btn btn-primary btnNoClass" id="noDeleteProduct"
                                                data-dismiss="modal">No
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="text-center">
                            <a href="" class="btn btn-info btn-rounded btn-sm" data-toggle="modal"
                               data-target="#productDelete" style="width: 97px">Delete<i
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
                    <th class="th-sm">Name</th>
                    <th class="th-sm">Image</th>
                    <th class="th-sm">Price</th>
                    <th class="th-sm">SalePrice</th>
                    <th class="th-sm">Category</th>
                    <th class="th-sm">CreateAt</th>
                    <th class="th-sm">Quantity</th>
                    <th class="th-sm">Description</th>
                    <th class="th-sm">Status</th>
                    <th class="th-sm">Edit</th>
                    <th class="th-sm">Remove</th>
                </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>
<!-- jQuery CDN - Slim version (=without AJAX) -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>
<!-- Popper.JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
        integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous">
</script>
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

<script src="libs/MDB-Free/js/mdb.min.js"></script>

<!--
<script>
    $('#dt-more-columns').mdbEditor({
        modalEditor: true,
        headerLength: 7,
    });
    $('.dataTables_length').addClass('bs-select');
</script>
-->
<%--<script>
    function addRowHandlers() {
        var table = document.getElementById("dt-more-columns");
        var rows = table.getElementsByTagName("tr");
        for (i = 0; i < rows.length; i++) {
            var currentRow = table.rows[i];
            var createClickHandler = function (row) {
                return function () {
                    //row.style.backgroundColor = "red";
                    var cell = row.getElementsByTagName("td")[0];
                    var id = cell.innerHTML;
                    alert("id:" + id);
                };
            };
            currentRow.onclick = createClickHandler(currentRow);
        }
    }
</script>--%>


<script>
    function addField(n) {
        var tr = n.parentNode.parentNode.cloneNode(true);
        document.getElementById('dt-more-columns').appendChild(tr);
    }
</script>

<script>

</script>
</body>

</html>