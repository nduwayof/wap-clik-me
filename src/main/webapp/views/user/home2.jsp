<%@ page import="edu.mum.cs.domain.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%
    User user = (User) session.getAttribute("authenticated");
    if(user == null) {
        response.sendRedirect("/");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <%if(user != null){%>
        <title>Home <%=user.getLastName()%> || <%=user.getFirstName()%></title>
    <%}%>
    <link rel="icon" href="../../resources/images/fav.png" type="image/png" sizes="16x16">

    <link rel="stylesheet" href="../../resources/css/main.min.css">
    <link rel="stylesheet" href="../../resources/css/style.css">
    <link rel="stylesheet" href="../../resources/css/color.css">
    <link rel="stylesheet" href="../../resources/css/responsive.css">

</head>
<body>
<div class="theme-layout">
    <div class="postoverlay"></div>
    <div class="responsive-header">
        <div class="mh-head first Sticky">
			<span class="mh-btns-left">
				<a class="" href="/home"><i class="fa fa-align-justify"></i></a>
			</span>
            <span class="mh-text">
				<a href="javascript:void(0)" title=""><img src="../../resources/images/logo2.png" alt=""></a>
			</span>
            <span class="mh-btns-right">
				<a class="fa fa-sliders" href="/home"></a>
			</span>
        </div>
        <div class="mh-head second">
            <form class="mh-form">
                <input placeholder="search"/>
                <a href="/home" class="fa fa-search"></a>
            </form>
        </div>
        <%-- include nav --%>
        <%@include file="includes/nav_bar.jsp" %>
    </div><!-- responsive header -->

    <div class="topbar stick">
        <div class="logo">
            <a title="home" href="/home">
                <h2 style="color: black">MumBook</h2>
            </a>
        </div>

        <div class="top-area">
            <div class="top-search">
                <form method="post" class="">
                    <input type="text" placeholder="Search Friend">
                    <button data-ripple><i class="ti-search"></i></button>
                </form>
            </div>
            <ul class="setting-area">
                <li><a href="javascript:void(0)" title="Home" data-ripple=""><i class="ti-home"></i></a></li>
                <li>
                    <a href="javascript:void(0)" title="Notification" data-ripple="">
                        <i class="ti-bell"></i><span>20</span>
                    </a>
                    <div class="dropdowns">
                        <span>4 New Notifications</span>
                        <ul class="drops-menu">
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-1.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>sarah Loren</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag green">New</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-2.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Jhon doe</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag red">Reply</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-3.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Andrew</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag blue">Unseen</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-4.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Tom cruse</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag">New</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-5.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Amy</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag">New</span>
                            </li>
                        </ul>
                        <a href="javascript:void(0)" title="" class="more-mesg">view more</a>
                    </div>
                </li>
                <li>
                    <a href="javascript:void(0)" title="Messages" data-ripple=""><i class="ti-comment"></i><span>12</span></a>
                    <div class="dropdowns">
                        <span>5 New Messages</span>
                        <ul class="drops-menu">
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-1.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>sarah Loren</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag green">New</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-2.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Jhon doe</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag red">Reply</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-3.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Andrew</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag blue">Unseen</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-4.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Tom cruse</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag">New</span>
                            </li>
                            <li>
                                <a href="javascript:void(0)" title="">
                                    <img src="../../resources/images/resources/thumb-5.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Amy</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag">New</span>
                            </li>
                        </ul>
                        <a href="messages.html" title="" class="more-mesg">view more</a>
                    </div>
                </li>
                <li><a href="javascript:void(0)" title="Languages" data-ripple=""><i class="fa fa-globe"></i></a>
                    <div class="dropdowns languages">
                        <a href="javascript:void(0)" title=""><i class="ti-check"></i>English</a>
                        <a href="javascript:void(0)" title="">Arabic</a>
                        <a href="javascript:void(0)" title="">Dutch</a>
                        <a href="javascript:void(0)" title="">French</a>
                    </div>
                </li>
            </ul>
            <div class="user-img">
                <img src="../../resources/images/resources/admin.jpg" alt="">
                <span class="status f-online"></span>
                <div class="user-setting">
                    <a href="javascript:void(0)" title=""><span class="status f-online"></span>online</a>
                    <a href="javascript:void(0)" title=""><span class="status f-away"></span>away</a>
                    <a href="javascript:void(0)" title=""><span class="status f-off"></span>offline</a>
                    <a href="javascript:void(0)" title=""><i class="ti-user"></i> view profile</a>
                    <a href="javascript:void(0)" title=""><i class="ti-pencil-alt"></i>edit profile</a>
                    <a href="javascript:void(0)" title=""><i class="ti-target"></i>activity log</a>
                    <a href="javascript:void(0)" title=""><i class="ti-settings"></i>account setting</a>
                    <a href="javascript:void(0)" title=""><i class="ti-power-off"></i>log out</a>
                </div>
            </div>
            <span class="ti-menu main-menu" data-ripple=""></span>
        </div>
    </div>
    <section>
        <div class="gap2 gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row merged20" id="page-contents">
                            <div class="col-lg-3">
                                <aside class="sidebar static left">
                                    <%-- include shortcuts widget--%>
                                    <%@include file="includes/side_shortcuts.jsp" %>

                                    <%-- include recent activity widget --%>
                                    <%@include file="includes/aside_recent_activity.jsp" %>

                                    <!-- who's following -->
                                    <%-- include whos following widget--%>
                                    <%@include file="includes/aside_whos_following.jsp" %>

                                </aside>
                            </div><!-- sidebar -->
                            <div class="col-lg-6">
                                <div class="central-meta new-pst">
                                    <div class="new-postbox">
                                        <figure>
                                            <img src="../../resources/images/resources/admin2.jpg" alt="">
                                        </figure>
                                        <div class="newpst-input">
                                            <%@ include file="includes/post_form.jsp" %>
                                        </div>
                                    </div>
                                </div>
                                <div class="loadMore">
                                    <%@include file="includes/posts_list.jsp" %>
                                </div>
                            </div><!-- centerl meta -->
                            <div class="col-lg-3">
                                <aside class="sidebar static right">
                                    <%-- include page stats widget --%>
                                    <%@include file="includes/aside_page_stats.jsp" %>
                                    <%-- include page stats widget --%>
                                    <%@include file="includes/side_ads.jsp" %>

                                    <%-- include friends widget --%>
                                    <%@include file="includes/aside_friends.jsp" %>
                                </aside>
                            </div><!-- sidebar -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="bottombar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span class="copyright">© Winku 2018. All rights reserved.</span>
                    <i><img src="../../resources/images/credit-cards.png" alt=""></i>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="side-panel">
    <h4 class="panel-title">General Setting</h4>
    <form method="post">
        <div class="setting-row">
            <span>use night mode</span>
            <input type="checkbox" id="nightmode1"/>
            <label for="nightmode1" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Notifications</span>
            <input type="checkbox" id="switch22"/>
            <label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Notification sound</span>
            <input type="checkbox" id="switch33"/>
            <label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>My profile</span>
            <input type="checkbox" id="switch44"/>
            <label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Show profile</span>
            <input type="checkbox" id="switch55"/>
            <label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
        </div>
    </form>
    <h4 class="panel-title">Account Setting</h4>
    <form method="post">
        <div class="setting-row">
            <span>Sub users</span>
            <input type="checkbox" id="switch66"/>
            <label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>personal account</span>
            <input type="checkbox" id="switch77"/>
            <label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Business account</span>
            <input type="checkbox" id="switch88"/>
            <label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Show me online</span>
            <input type="checkbox" id="switch99"/>
            <label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Delete history</span>
            <input type="checkbox" id="switch101"/>
            <label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Expose author name</span>
            <input type="checkbox" id="switch111"/>
            <label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
        </div>
    </form>
</div>
<script src="../../resources/js/main.min.js"></script>
<script src="../../resources/js/script.js"></script>
<script src="../../resources/js/map-init.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>
<script src="../../resources/js/views/user/post.js" type="text/javascript"></script>
</body>
</html>