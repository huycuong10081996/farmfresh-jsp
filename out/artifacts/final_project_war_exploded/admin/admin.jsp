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
                    <form action="<%=Utils.fullPath("AdminHomeProductServlet?pages=1")%>" method="post" style="display: flex">
                        <input type="text" id="product_find" class="form-control" placeholder="Product Name..."
                               aria-label="Type something..." aria-describedby="button-addon2" name="findProduct">
                        <div class="input-group-append">
                            <button class="btn btn-info btn-rounded btn-sm" type="submit" id="button_find"
                                    onclick="">Find
                            </button>
                        </div>
                    </form>
                </div>

                <div class="d-flex justify-content-center">
                    <p class="h5 text-primary createShowP">PRODUCTS MANAGER</p>
                </div>
            </div>

            <%--<script>
                function findProduct() {
                    const inputElement = document.getElementById('find');
                    const valueInput = inputElement.value;
                }
            </script>--%>

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
                                    <%-- <div class="md-form mb-5">
                                         <input type="text" id="productId" name="productId" class="form-control validate"
                                                placeholder="ID" required="required">
                                     </div>--%>
                                    <div class="md-form mb-5">
                                        <input type="text" id="productName" class="form-control validate"
                                               placeholder="Name" name="productName"
                                               required="required">
                                    </div>

                                    <div class="md-form mb-5">
                                        <textarea type="text" id="productImage" class="form-control validate"
                                               placeholder="Image" name="productImage"
                                                  required="required"> </textarea>
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="text" id="productPrice" class="form-control validate"
                                               placeholder="Price" name="productPrice"
                                               required="required"
                                               pattern="^[0-9]{1,100}$"
                                               oninvalid="setCustomValidity('**Giá sản phẩm phải là ký tự số')"
                                               oninput="setCustomValidity('')"/>
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="text" id="productSalePrice" class="form-control validate"
                                               placeholder="Sale Price" name="productSalePrice"
                                               required="required"
                                               pattern="^[0-9]{1,100}$"
                                               oninvalid="setCustomValidity('**Giá sản phẩm phải là ký tự số')"
                                               oninput="setCustomValidity('')"/>
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="text" id="productCategoryId" class="form-control validate"
                                               placeholder="Category Id" name="productCategoryId"
                                               required="required">
                                    </div>

                                    <div class="md-form mb-5">
                                        <input type="number" min="1" id="productQuantity" class="form-control validate"
                                               placeholder="Quantity" name="productQuantity"
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
                    <a href="" class="btn btn-rounded btn-sm" data-toggle="modal" style="background-color: #7fba00; color: white !important"
                       data-target="#productAdd">Add new product<i class="fas fa-plus-square ml-1"></i></a>
                </div>

            </div>

            <table class="table table-striped table-bordered" width="100%" style="overflow: scroll">
                <thead style="text-align: center">
                <tr>
                    <%--
                                        <th class="th-sm">Id</th>
                    --%>
                    <th class="th-sm">Name</th>
                    <th class="th-sm">Image</th>
                    <th class="th-sm">Price</th>
                    <th class="th-sm">SalePrice</th>
                    <th class="th-sm">Category</th>
                    <th class="th-sm">CreateAt</th>
                    <th class="th-sm">Quantity</th>
                    <th class="th-sm">Status</th>
                    <th class="th-sm">Product Page</th>
                    <th class="th-sm">Edit</th>
                    <th class="th-sm">Remove</th>
                </tr>
                </thead>
                <tbody id="tableProductBody">

                <%
                    ResultSet resultSet = (ResultSet) request.getAttribute("productAdmin");
                    while (resultSet.next()) {
                        String productId = resultSet.getString(1);
                        String productName = resultSet.getString(2);
                        String productImage = resultSet.getString(3);
                        double productPrice = resultSet.getDouble(4);
                        double productSalePrice = resultSet.getDouble(5);
                        String productCategoryTitle = resultSet.getString(6);
                        String productCreateAt = resultSet.getString(8);
                        int productQuantity = resultSet.getInt(9);
                        String productDescription = resultSet.getString(10);
                        int productStatus = resultSet.getInt(11);
                        String productCategoryId = resultSet.getString(12);
                %>
                <tr>
                    <%-- <td style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 100px; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; border: none; margin: 0">
                         <%=productId%>
                     </td>--%>
                    <td><%=productName%>
                    </td>
                    <td><img src="<%=productImage%>" alt="" style="width: 100px"></td>
                    <td>$<%=productPrice%>
                    </td>
                    <%
                        if (productSalePrice != 0) {
                    %>
                    <td>$<%=productSalePrice%>
                    </td>
                    <%
                    } else {
                    %>
                    <td>Note sales promotion.</td>
                    <%
                        }
                    %>
                    <td><%=productCategoryTitle%>
                    </td>
                    <td><%=productCreateAt%>
                    </td>
                    <td><%=productQuantity%>
                    </td>
                    <%--<%
                        if (productDescription != null) {
                    %>
                    <td width="400px"><span
                            style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 50px;display: -webkit-box; -webkit-box-orient: vertical;-webkit-line-clamp: 2;"><%=productDescription%></span>
                    </td>
                    <%
                    } else {
                    %>
                    <td>This product no description.</td>
                    <%
                        }
                    %>--%>
                    <%
                        if (productStatus == -1) {
                    %>
                    <td>Out of quantity
                    </td>
                    <%
                    } else if (productStatus == 0) {
                    %>
                    <td>Disable
                    </td>
                    <%
                    } else if (productStatus == 1) {
                    %>
                    <td>Active
                    </td>
                    <%
                        }
                    %>
                    <td>
                        <div class="text-center">
                            <a class="btn btn-rounded btn-sm"
                               href="<%=Utils.fullPath("ProductDetailServlet?productDetailId=" + productId)%>"
                               style="width: 127px; background-color: #7fba00; color: white !important">Go to page
                                <i class="fas fa-plus-square ml-1"></i></a>
                        </div>
                    </td>
                    <td class="edit__product">
                        <div class="modal fade modalEditClass" id="<%=productId%>" role="dialog"
                             aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header text-center">
                                        <h4 class="modal-title w-100 font-weight-bold text-secondary ml-5">Edit
                                            Product</h4>
                                        <button type="button" class="close text-secondary" data-dismiss="modal"
                                                aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <form action="<%=Utils.fullPath("EditProductServlet?productIdEdit="+ productId)%>"
                                          method="post">
                                        <div class="modal-body mx-3">
                                            <div class="md-form mb-5" style="display: none">
                                                <input type="number" name="pageEdit"
                                                value="<%=request.getParameter("pages")%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" name="productNameEdit"
                                                       class="form-control validate"
                                                       placeholder="Name" required="required"
                                                       value="<%=productName%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" name="productImageEdit"
                                                       class="form-control validate"
                                                       placeholder="Image" required="required"
                                                       value="<%=productImage%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" name="productPriceEdit"
                                                       class="form-control validate"
                                                       placeholder="Price" required="required"
                                                       value="<%=productPrice%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text" name="productSalePriceEdit"
                                                       class="form-control validate"
                                                       placeholder="Sale Price" required="required"
                                                       value="<%=productSalePrice%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="text"
                                                       name="productCategoryIdEdit"
                                                       class="form-control validate"
                                                       placeholder="Category" required="required"
                                                       value="<%=productCategoryId%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="number" min="1"
                                                       name="productQuantityEdit"
                                                       class="form-control validate"
                                                       placeholder="Quantity" required="required"
                                                       value="<%=productQuantity%>">
                                            </div>

                                            <div class="md-form mb-5">
                                                <textarea name="productDescriptionEdit" id="<%=productId + "edit"%>"
                                                          class="form-control validate"
                                                          cols="30" rows="10"
                                                          placeholder="Description"><%=productDescription%></textarea>
                                            </div>

                                            <div class="md-form mb-5">
                                                <input type="number" min="-1" max="1"
                                                       name="productStatusEdit"
                                                       class="form-control"
                                                       placeholder="Status" required="required"
                                                       value="<%=productStatus%>">
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
                            <a href="#" class="btn btn-info btn-rounded btn-sm" data-toggle="modal"
                               data-target="#<%=productId%>" style="width: 85px">Edit<i
                                    class="fas fa-plus-square ml-1"></i></a>
                        </div>
                    </td>

                    <td class="remove__product">
                        <div class="modal fade" id="<%="remove" + productId%>" tabindex="-1" role="dialog"
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
                                        <a href="<%=Utils.fullPath("DeleteProductServlet?productDeleteId=" + productId)%>"
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
                               data-target="#<%="remove" + productId%>"
                               style="width: 97px; background-color: #ff3547; color: white !important">Delete<i
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
                                        <th class="th-sm">Id</th>
                    --%>
                    <th class="th-sm">Name</th>
                    <th class="th-sm">Image</th>
                    <th class="th-sm">Price</th>
                    <th class="th-sm">SalePrice</th>
                    <th class="th-sm">Category</th>
                    <th class="th-sm">CreateAt</th>
                    <th class="th-sm">Quantity</th>
                    <th class="th-sm">Status</th>
                    <th class="th-sm">Product Page</th>
                    <th class="th-sm">Edit</th>
                    <th class="th-sm">Remove</th>
                </tr>
                </tfoot>
            </table>

            <div class="show__page__container">
                <%
                    int size = (int) request.getAttribute("size");
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

    const ids = document.getElementsByTagName("textarea");
    for (i = 0; i < ids.length; i++) {
        let editor = '';
        let current = ids[i];
        $(document).ready(function () {
            editor = CKEDITOR.replace(current);
            CKFinder.setupCKEditor(editor, '<%=request.getContextPath()%>/admin/ckfinder/');
        });
    }

    /*$.fn.modal.Constructor.prototype.enforceFocus = function() {
        const modal_this = this;
        $(document).on('focusin.modal', function (e) {
            if (modal_this.$element[0] !== e.target && !modal_this.$element.has(e.target).length
                && !$(e.target.parentNode).hasClass('cke_dialog_ui_input_select')
                && !$(e.target.parentNode).hasClass('cke_dialog_ui_input_text')) {
                modal_this.$element.focus()
            }
        })
    };*/

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