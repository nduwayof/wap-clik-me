<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>MumBook || Users</title>
    <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
    <meta content="Fabrice Nduwayo" name="author" />
    <link rel="shortcut icon" href="resources/assets/images/favicon.ico">

    <link href="resources/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="resources/assets/css/metismenu.min.css" rel="stylesheet" type="text/css">
    <link href="resources/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="resources/assets/css/style.css" rel="stylesheet" type="text/css">

</head>

<body>
<%
    Object object = session.getAttribute("admin");
    if(object == null){
        response.sendRedirect("/admin-login");
    }
%>
<div class="header-bg">
    <header id="topnav">
        <div class="topbar-main">
            <div class="container-fluid">
                <div>
                    <a href="/admin-dashboard" class="logo">
                        <span class="logo-light">
                            <i class="mdi mdi-camera-control"></i> MumBook
                        </span>
                    </a>
                </div>
                <div class="menu-extras topbar-custom navbar p-0">
                    <ul class="navbar-right ml-auto list-inline float-right mb-0">
                        <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                            <a class="nav-link waves-effect" href="/admin-dashboard" id="btn-fullscreen">
                                <i class="mdi mdi-arrow-expand-all noti-icon"></i>
                            </a>
                        </li>
                        <li class="dropdown notification-list list-inline-item">
                            <div class="dropdown notification-list nav-pro-img">
                                <a class="dropdown-toggle nav-link arrow-none nav-user" data-toggle="dropdown" href="javascript:void(0)" role="button" aria-haspopup="false" aria-expanded="false">
                                    <img src="resources/assets/images/users/user-4.jpg" alt="user" class="rounded-circle">
                                </a>
                                <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                    <a class="dropdown-item text-danger" href="/admin-logout"><i class="mdi mdi-power text-danger"></i> Logout</a>
                                </div>
                            </div>
                        </li>
                        <li class="menu-item dropdown notification-list list-inline-item">
                            <a class="navbar-toggle nav-link">
                                <div class="lines">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="navbar-custom">
            <div class="container-fluid">
                <div id="navigation">
                    <ul class="navigation-menu">
                        <li class="has-submenu">
                            <a href="/admin-dashboard"><i class="icon-accelerator"></i> Dashboard</a>
                        </li>
                        <li class="has-submenu">
                            <a href="/users"><i class="icon-profile"></i> Users</a>
                        </li>
                        <li class="has-submenu">
                            <a href="/advertisements"><i class="icon-paper-pen"></i> Advertisements</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </header>
</div>

<div class="wrapper">
    <div class="container-fluid">
        <div class="page-title-box">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <h4 class="page-title">List of advertise</h4>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="/admin-dashboard">MumBook</a></li>
                        <li class="breadcrumb-item"><a href="javascript:void(0);">Users</a></li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card m-b-30">
                    <div class="card-body">
                        <div class="btn-group ">
                            <button class="btn btn-primary" id="user_form">
                                <i class="fa fa-plus-circle"></i>
                                New Advertise
                            </button>

                        </div>
                        <form action="/advertisement.jsp" method="post">
                        <div class="search">
                            <input type="submit" value="search" id="searchfname">
                            <input type="text" placeholder="enter name" name="firstname">
                            <input type="text" placeholder="" name="myname"></div>
                        <div class="table-responsive">
                            <table class="table table-striped mb-0">

                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>Gender</th>
                                    <th>status</th>
                                </tr>
                                </thead>
                                <tbody>

                            </table>
                        </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    © 2019 MumBook <span class="d-none d-sm-inline-block"></span>.
</footer>
<script src="resources/assets/js/jquery.min.js"></script>
<script src="resources/assets/js/bootstrap.bundle.min.js"></script>
<script src="resources/assets/js/jquery.slimscroll.js"></script>
<script src="resources/assets/js/waves.min.js"></script>
<script src="resources/assets/js/app.js"></script>
</body>
</html>