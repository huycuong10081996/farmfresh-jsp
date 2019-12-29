<!-- Sidebar  -->
<nav id="sidebar">
    <div class="sidebar-header custom__sidebar">
        <img src="img/logo.png" alt="">
    </div>

    <ul class="list-unstyled components">
        <p>Farm Fresh</p>
        <li class="">
            <a href="<%=Utils.fullPath("AdminHomeProductServlet?pages=1")%>" data-toggle="collapse" aria-expanded="false">Home</a>
        </li>
        <li>
            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false"
               class="dropdown-toggle">Pages</a>
            <ul class="collapse list-unstyled" id="pageSubmenu">
                <li class="active">
                    <a href="<%=Utils.fullPath("AdminHomeProductServlet?pages=1")%>">Products</a>
                </li>
                <li>
                    <a href="<%=Utils.fullPath("AdminHomeUserServlet")%>">Users</a>
                </li>
                <li>
                    <a href="<%=Utils.fullPath("AdminHomeCategoryServlet")%>">Categories</a>
                </li>
                <li>
                    <a href="<%=Utils.fullPath("AdminHomeOrderServlet")%>">Orders</a>
                </li>
                <li>
                    <a href="<%=Utils.fullPath("AdminHomeItemServlet")%>">Order Items</a>
                </li>
            </ul>
        </li>
        <%--<li>
            <a href="#">Contact</a>
        </li>--%>
    </ul>

    <ul class="list-unstyled CTAs">
        <li>
            <a href="http://localhost:8080/final_project/HomeServlet" class="article" style="background-color: #7fba00 !important;">Back to website</a>
        </li>
    </ul>
</nav>
