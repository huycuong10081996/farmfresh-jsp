<%@ page import="Model.Admin" %>
<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-image: url('img/header-bkg.jpg')">
    <div class="container-fluid">

        <button type="button" id="sidebarCollapse" class="btn btn-info" style="background-color: #7fba00; padding: 10px 15px">
            <i class="fas fa-bars"></i>
<%--
            <span>Toggle Sidebar</span>
--%>
        </button>
        <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="btn btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><%=admin.getAdminName()%>
                        </a>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
<%--
                            <a class="dropdown-item" href="#">Setting</a>
--%>
                            <a class="dropdown-item" href="<%=Utils.fullPath("AdminLogout")%>">Logout</a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>

