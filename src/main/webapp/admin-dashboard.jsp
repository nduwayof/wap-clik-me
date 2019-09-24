<%--
  Created by IntelliJ IDEA.
  User: nduwayofabrice
  Date: 2019-09-23
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>MumBook || Dashboard</title>
    <meta content="Responsive admin theme build on top of Bootstrap 4" name="description" />
    <meta content="Fabrice Nduwayo" name="author" />
    <link rel="shortcut icon" href="resources/assets/images/favicon.ico">
    <link rel="stylesheet" href="resources/assets/css/morris.css">
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
                        <!-- full screen -->
                        <li class="dropdown notification-list list-inline-item d-none d-md-inline-block">
                            <a class="nav-link waves-effect" href="/admin-dashboard" id="btn-fullscreen">
                                <i class="mdi mdi-arrow-expand-all noti-icon"></i>
                            </a>
                        </li>

                        <!-- notification -->
                        <li class="dropdown notification-list list-inline-item">
                            <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="/admin-dashboard" role="button" aria-haspopup="false" aria-expanded="false">
                                <i class="mdi mdi-bell-outline noti-icon"></i>
                                <span class="badge badge-pill badge-danger noti-icon-badge">3</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-animated dropdown-menu-lg px-1">
                                <!-- item-->
                                <h6 class="dropdown-item-text">
                                    Notifications
                                </h6>
                                <div class="slimscroll notification-item-list">
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                        <div class="notify-icon bg-success"><i class="mdi mdi-cart-outline"></i></div>
                                        <p class="notify-details"><b>Your order is placed</b><span class="text-muted">Dummy text of the printing and typesetting industry.</span></p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-danger"><i class="mdi mdi-message-text-outline"></i></div>
                                        <p class="notify-details"><b>New Message received</b><span class="text-muted">You have 87 unread messages</span></p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-info"><i class="mdi mdi-filter-outline"></i></div>
                                        <p class="notify-details"><b>Your item is shipped</b><span class="text-muted">It is a long established fact that a reader will</span></p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-success"><i class="mdi mdi-message-text-outline"></i></div>
                                        <p class="notify-details"><b>New Message received</b><span class="text-muted">You have 87 unread messages</span></p>
                                    </a>

                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-warning"><i class="mdi mdi-cart-outline"></i></div>
                                        <p class="notify-details"><b>Your order is placed</b><span class="text-muted">Dummy text of the printing and typesetting industry.</span></p>
                                    </a>

                                </div>
                                <!-- All-->
                                <a href="javascript:void(0);" class="dropdown-item text-center notify-all text-primary">
                                    View all <i class="fi-arrow-right"></i>
                                </a>
                            </div>
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
                            <a href="/list-users"><i class="icon-profile"></i> Users</a>
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
                    <h4 class="page-title">Dashboard</h4>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-right">
                        <li class="breadcrumb-item"><a href="javascript:void(0);">MumBook</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <div class="card-heading p-4">
                        <div class="mini-stat-icon float-right">
                            <i class="mdi mdi-cube-outline bg-primary  text-white"></i>
                        </div>
                        <div>
                            <h5 class="font-16">Active Sessions</h5>
                        </div>
                        <h3 class="mt-4">43,225</h3>
                        <div class="progress mt-4" style="height: 4px;">
                            <div class="progress-bar bg-primary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="text-muted mt-2 mb-0">Previous period<span class="float-right">75%</span></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <div class="card-heading p-4">
                        <div class="mini-stat-icon float-right">
                            <i class="mdi mdi-briefcase-check bg-success text-white"></i>
                        </div>
                        <div>
                            <h5 class="font-16">Total Revenue</h5>
                        </div>
                        <h3 class="mt-4">$73,265</h3>
                        <div class="progress mt-4" style="height: 4px;">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 88%" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="text-muted mt-2 mb-0">Previous period<span class="float-right">88%</span></p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <div class="card-heading p-4">
                        <div class="mini-stat-icon float-right">
                            <i class="mdi mdi-tag-text-outline bg-warning text-white"></i>
                        </div>
                        <div>
                            <h5 class="font-16">Average Price</h5>
                        </div>
                        <h3 class="mt-4">447</h3>
                        <div class="progress mt-4" style="height: 4px;">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 68%" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="text-muted mt-2 mb-0">Previous period<span class="float-right">68%</span></p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="card">
                    <div class="card-heading p-4">
                        <div class="mini-stat-icon float-right">
                            <i class="mdi mdi-buffer bg-danger text-white"></i>
                        </div>
                        <div>
                            <h5 class="font-16">Add to Card</h5>
                        </div>
                        <h3 class="mt-4">86%</h3>
                        <div class="progress mt-4" style="height: 4px;">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <p class="text-muted mt-2 mb-0">Previous period<span class="float-right">82%</span></p>
                    </div>
                </div>
            </div>

        </div>

        <div class="row">
            <div class="col-xl-8">
                <div class="card m-b-30">
                    <div class="card-body">
                        <h4 class="mt-0 header-title mb-4">Area Chart</h4>
                        <div id="morris-area-example" class="morris-charts morris-chart-height"></div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4">
                <div class="card m-b-30">
                    <div class="card-body">
                        <h4 class="mt-0 header-title mb-4">Donut Chart</h4>
                        <div id="morris-donut-example" class="morris-charts morris-chart-height"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-4">
                <div class="card m-b-30">
                    <div class="card-body">
                        <h4 class="mt-0 header-title mb-4">Friends Suggestions</h4>
                        <div class="friends-suggestions">
                            <a href="/admin-dashboard" class="friends-suggestions-list">
                                <div class="border-bottom position-relative">
                                    <div class="float-left mb-0 mr-3">
                                        <img src="resources/assets/images/users/user-2.jpg" alt="" class="rounded-circle thumb-md">
                                    </div>
                                    <div class="suggestion-icon float-right mt-2 pt-1">
                                        <i class="mdi mdi-plus"></i>
                                    </div>

                                    <div class="desc">
                                        <h5 class="font-14 mb-1 pt-2 text-dark">Ralph Ramirez</h5>
                                        <p class="text-muted">3 Friend suggest</p>
                                    </div>
                                </div>
                            </a>

                            <a href="/admin-dashboard" class="friends-suggestions-list">
                                <div class="border-bottom position-relative">
                                    <div class="float-left mb-0 mr-3">
                                        <img src="resources/assets/images/users/user-3.jpg" alt="" class="rounded-circle thumb-md">
                                    </div>
                                    <div class="suggestion-icon float-right mt-2 pt-1">
                                        <i class="mdi mdi-plus"></i>
                                    </div>

                                    <div class="desc">
                                        <h5 class="font-14 mb-1 pt-2 text-dark">Patrick Beeler</h5>
                                        <p class="text-muted">17 Friend suggest</p>
                                    </div>
                                </div>
                            </a>

                            <a href="/admin-dashboard" class="friends-suggestions-list">
                                <div class="border-bottom position-relative">
                                    <div class="float-left mb-0 mr-3">
                                        <img src="resources/assets/images/users/user-4.jpg" alt="" class="rounded-circle thumb-md">
                                    </div>
                                    <div class="suggestion-icon float-right mt-2 pt-1">
                                        <i class="mdi mdi-plus"></i>
                                    </div>

                                    <div class="desc">
                                        <h5 class="font-14 mb-1 pt-2 text-dark">Victor Zamora</h5>
                                        <p class="text-muted">12 Friend suggest</p>
                                    </div>
                                </div>
                            </a>

                            <a href="/admin-dashboard" class="friends-suggestions-list">
                                <div class="border-bottom position-relative">
                                    <div class="float-left mb-0 mr-3">
                                        <img src="resources/assets/images/users/user-5.jpg" alt="" class="rounded-circle thumb-md">
                                    </div>
                                    <div class="suggestion-icon float-right mt-2 pt-1">
                                        <i class="mdi mdi-plus"></i>
                                    </div>

                                    <div class="desc">
                                        <h5 class="font-14 mb-1 pt-2 text-dark">Bryan Lacy</h5>
                                        <p class="text-muted">18 Friend suggest</p>
                                    </div>
                                </div>
                            </a>

                            <a href="/admin-dashboard" class="friends-suggestions-list">
                                <div class="position-relative">
                                    <div class="float-left mb-0 mr-3">
                                        <img src="resources/assets/images/users/user-6.jpg" alt="" class="rounded-circle thumb-md">
                                    </div>
                                    <div class="suggestion-icon float-right mt-2 pt-1">
                                        <i class="mdi mdi-plus"></i>
                                    </div>

                                    <div class="desc">
                                        <h5 class="font-14 mb-1 pt-2 text-dark">James Sorrells</h5>
                                        <p class="text-muted mb-1">6 Friend suggest</p>
                                    </div>
                                </div>
                            </a>

                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4">
                <div class="card m-b-30">
                    <div class="card-body">
                        <h4 class="mt-0 header-title mb-4">Sales Analytics</h4>
                        <div id="morris-line-example" class="morris-chart" style="height: 360px"></div>

                    </div>
                </div>

            </div>

            <div class="col-xl-4">
                <div class="card m-b-30">
                    <div class="card-body">

                        <h4 class="mt-0 header-title mb-4">Recent Activity</h4>
                        <ol class="activity-feed mb-0">
                            <li class="feed-item">
                                <div class="feed-item-list">
                                    <p class="text-muted mb-1">Now</p>
                                    <p class="font-15 mt-0 mb-0">Andrei Coman posted a new article: <b class="text-primary">Forget UX Rowland</b></p>
                                </div>
                            </li>
                            <li class="feed-item">
                                <p class="text-muted mb-1">Yesterday</p>
                                <p class="font-15 mt-0 mb-0">Andrei Coman posted a new article: <b class="text-primary">Designer Alex</b></p>
                            </li>
                            <li class="feed-item">
                                <p class="text-muted mb-1">2:30PM</p>
                                <p class="font-15 mt-0 mb-0">Zack Wetass, <b class="text-primary"> Developer Moreno</b></p>
                            </li>
                            <li class="feed-item pb-1">
                                <p class="text-muted mb-1">12:48 PM</p>
                                <p class="font-15 mt-0 mb-2">Zack Wetass, <b class="text-primary">UX Murphy</b></p>
                            </li>

                        </ol>

                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-12">
                <div class="card m-b-30">
                    <div class="card-body">
                        <h4 class="mt-0 header-title mb-4">Active Deals</h4>
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">Name</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Amount</th>
                                    <th scope="col">Contact</th>
                                    <th scope="col">Location</th>
                                    <th scope="col" colspan="2">Date</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Philip Smead</td>
                                    <td><span class="badge badge-success">Delivered</span></td>
                                    <td>$9,420,000</td>
                                    <td>
                                        <div>
                                            <img src="resources/ssets/images/users/user-2.jpg" alt="" class="thumb-md rounded-circle mr-2"> Philip Smead
                                        </div>
                                    </td>
                                    <td>Houston, TX 77074</td>
                                    <td>15/1/2018</td>

                                    <td>
                                        <div>
                                            <a href="/admin-dashboard" class="btn btn-primary btn-sm">Edit</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Brent Shipley</td>
                                    <td><span class="badge badge-warning">Pending</span></td>
                                    <td>$3,120,000</td>
                                    <td>
                                        <div>
                                            <img src="resources/assets/images/users/user-3.jpg" alt="" class="thumb-md rounded-circle mr-2"> Brent Shipley
                                        </div>
                                    </td>
                                    <td>Oakland, CA 94612</td>
                                    <td>16/1/2019</td>

                                    <td>
                                        <div>
                                            <a href="/admin-dashboard" class="btn btn-primary btn-sm">Edit</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Robert Sitton</td>
                                    <td><span class="badge badge-success">Delivered</span></td>
                                    <td>$6,360,000</td>
                                    <td>
                                        <div>
                                            <img src="resources/assets/images/users/user-4.jpg" alt="" class="thumb-md rounded-circle mr-2"> Robert Sitton
                                        </div>
                                    </td>
                                    <td>Hebron, ME 04238</td>
                                    <td>17/1/2019</td>

                                    <td>
                                        <div>
                                            <a href="/admin-dashboard" class="btn btn-primary btn-sm">Edit</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Alberto Jackson</td>
                                    <td><span class="badge badge-danger">Cancel</span></td>
                                    <td>$5,200,000</td>
                                    <td>
                                        <div>
                                            <img src="resources/assets/images/users/user-5.jpg" alt="" class="thumb-md rounded-circle mr-2"> Alberto Jackson
                                        </div>
                                    </td>
                                    <td>Salinas, CA 93901</td>
                                    <td>18/1/2019</td>

                                    <td>
                                        <div>
                                            <a href="javascript:void(0)" class="btn btn-primary btn-sm">Edit</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>David Sanchez</td>
                                    <td><span class="badge badge-success">Delivered</span></td>
                                    <td>$7,250,000</td>
                                    <td>
                                        <div>
                                            <img src="resources/assets/images/users/user-6.jpg" alt="" class="thumb-md rounded-circle mr-2"> David Sanchez
                                        </div>
                                    </td>
                                    <td>Cincinnati, OH 45202</td>
                                    <td>19/1/2019</td>

                                    <td>
                                        <div>
                                            <a href="javascript:void(0)" class="btn btn-primary btn-sm">Edit</a>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    © 2019 MumBook <span class="d-none d-sm-inline-block"><i class="mdi mdi-heart text-danger"></i></span>.
</footer>
<script src="resources/assets/js/jquery.min.js"></script>
<script src="resources/assets/js/bootstrap.bundle.min.js"></script>
<script src="resources/assets/js/jquery.slimscroll.js"></script>
<script src="resources/assets/js/waves.min.js"></script>
<script src="resources/assets/js/morris.min.js"></script>
<script src="resources/assets/js/raphael.min.js"></script>
<script src="resources/assets/pages/dashboard.init.js"></script>
<script src="resources/assets/js/app.js"></script>
</body>
</html>
