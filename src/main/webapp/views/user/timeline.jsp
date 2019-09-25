<%--
  Created by IntelliJ IDEA.
  User: 610158
  Date: 9/25/2019
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>MUM ClickMe </title>
    <link rel="icon" href="resources/images/fav.png" type="image/png" sizes="16x16">

    <link rel="stylesheet" href="resources/css/main.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/color.css">
    <link rel="stylesheet" href="resources/css/responsive.css">

</head>
<body>
<!--<div class="se-pre-con"></div>-->
<div class="theme-layout">
    <div class="postoverlay"></div>
    <div class="responsive-header">
        <div class="mh-head first Sticky">
			<span class="mh-btns-left">
				<a class="" href="time-line.html#menu"><i class="fa fa-align-justify"></i></a>
			</span>
            <span class="mh-text">
				<a href="newsfeed.html" title=""><img src="images/logo2.png" alt=""></a>
			</span>
            <span class="mh-btns-right">
				<a class="fa fa-sliders" href="time-line.html#shoppingbag"></a>
			</span>
        </div>
        <div class="mh-head second">
            <form class="mh-form">
                <input placeholder="search" />
                <a href="time-line.html#/" class="fa fa-search"></a>
            </form>
        </div>
        <%-- include nav --%>
        <%@include file="includes/nav_bar.jsp"%>
    </div><!-- responsive header -->

    <div class="topbar stick">
        <div class="logo">
            <a title="" href="newsfeed.html"><img src="images/logo.png" alt=""></a>
        </div>

        <div class="top-area">
            <ul class="main-menu">
                <li>
                    <a href="time-line.html#" title="">Home</a>
                    <ul>
                        <li><a href="index.html" title="">Home Social</a></li>
                        <li><a href="index2.html" title="">Home Social 2</a></li>
                        <li><a href="index-company.html" title="">Home Company</a></li>
                        <li><a href="landing.html" title="">Login page</a></li>
                        <li><a href="logout.html" title="">Logout Page</a></li>
                        <li><a href="newsfeed.html" title="">news feed</a></li>
                    </ul>
                </li>
                <li>
                    <a href="time-line.html#" title="">timeline</a>
                    <ul>
                        <li><a href="time-line.html" title="">timeline</a></li>
                        <li><a href="timeline-friends.html" title="">timeline friends</a></li>
                        <li><a href="timeline-groups.html" title="">timeline groups</a></li>
                        <li><a href="timeline-pages.html" title="">timeline pages</a></li>
                        <li><a href="timeline-photos.html" title="">timeline photos</a></li>
                        <li><a href="timeline-videos.html" title="">timeline videos</a></li>
                        <li><a href="fav-page.html" title="">favourit page</a></li>
                        <li><a href="groups.html" title="">groups page</a></li>
                        <li><a href="page-likers.html" title="">Likes page</a></li>
                        <li><a href="people-nearby.html" title="">people nearby</a></li>
                    </ul>
                </li>
                <li>
                    <a href="time-line.html#" title="">account settings</a>
                    <ul>
                        <li><a href="create-fav-page.html" title="">create fav page</a></li>
                        <li><a href="edit-account-setting.html" title="">edit account setting</a></li>
                        <li><a href="edit-interest.html" title="">edit-interest</a></li>
                        <li><a href="edit-password.html" title="">edit-password</a></li>
                        <li><a href="edit-profile-basic.html" title="">edit profile basics</a></li>
                        <li><a href="edit-work-eductation.html" title="">edit work educations</a></li>
                        <li><a href="messages.html" title="">message box</a></li>
                        <li><a href="inbox.html" title="">Inbox</a></li>
                        <li><a href="notifications.html" title="">notifications page</a></li>
                    </ul>
                </li>
                <li>
                    <a href="time-line.html#" title="">more pages</a>
                    <ul>
                        <li><a href="404.html" title="">404 error page</a></li>
                        <li><a href="about.html" title="">about</a></li>
                        <li><a href="contact.html" title="">contact</a></li>
                        <li><a href="faq.html" title="">faq's page</a></li>
                        <li><a href="insights.html" title="">insights</a></li>
                        <li><a href="knowledge-base.html" title="">knowledge base</a></li>
                        <li><a href="widgets.html" title="">Widgts</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="setting-area">
                <li>
                    <a href="time-line.html" title="Home" data-ripple=""><i class="ti-search"></i></a>
                    <div class="searched">
                        <form method="post" class="form-search">
                            <input type="text" placeholder="Search Friend">
                            <button data-ripple><i class="ti-search"></i></button>
                        </form>
                    </div>
                </li>
                <li><a href="newsfeed.html" title="Home" data-ripple=""><i class="ti-home"></i></a></li>
                <li>
                    <a href="time-line.html#" title="Notification" data-ripple="">
                        <i class="ti-bell"></i><span>20</span>
                    </a>
                    <div class="dropdowns">
                        <span>4 New Notifications</span>
                        <ul class="drops-menu">
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-1.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>sarah Loren</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag green">New</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-2.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Jhon doe</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag red">Reply</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-3.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Andrew</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag blue">Unseen</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-4.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Tom cruse</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag">New</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-5.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Amy</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag">New</span>
                            </li>
                        </ul>
                        <a href="notifications.html" title="" class="more-mesg">view more</a>
                    </div>
                </li>
                <li>
                    <a href="time-line.html#" title="Messages" data-ripple=""><i class="ti-comment"></i><span>12</span></a>
                    <div class="dropdowns">
                        <span>5 New Messages</span>
                        <ul class="drops-menu">
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-1.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>sarah Loren</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag green">New</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-2.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Jhon doe</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag red">Reply</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-3.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Andrew</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag blue">Unseen</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-4.jpg" alt="">
                                    <div class="mesg-meta">
                                        <h6>Tom cruse</h6>
                                        <span>Hi, how r u dear ...?</span>
                                        <i>2 min ago</i>
                                    </div>
                                </a>
                                <span class="tag">New</span>
                            </li>
                            <li>
                                <a href="notifications.html" title="">
                                    <img src="images/resources/thumb-5.jpg" alt="">
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
                <li><a href="time-line.html#" title="Languages" data-ripple=""><i class="fa fa-globe"></i></a>
                    <div class="dropdowns languages">
                        <a href="time-line.html#" title=""><i class="ti-check"></i>English</a>
                        <a href="time-line.html#" title="">Arabic</a>
                        <a href="time-line.html#" title="">Dutch</a>
                        <a href="time-line.html#" title="">French</a>
                    </div>
                </li>
            </ul>
            <div class="user-img">
                <img src="images/resources/admin.jpg" alt="">
                <span class="status f-online"></span>
                <div class="user-setting">
                    <a href="time-line.html#" title=""><span class="status f-online"></span>online</a>
                    <a href="time-line.html#" title=""><span class="status f-away"></span>away</a>
                    <a href="time-line.html#" title=""><span class="status f-off"></span>offline</a>
                    <a href="time-line.html#" title=""><i class="ti-user"></i> view profile</a>
                    <a href="time-line.html#" title=""><i class="ti-pencil-alt"></i>edit profile</a>
                    <a href="time-line.html#" title=""><i class="ti-target"></i>activity log</a>
                    <a href="time-line.html#" title=""><i class="ti-settings"></i>account setting</a>
                    <a href="time-line.html#" title=""><i class="ti-power-off"></i>log out</a>
                </div>
            </div>
            <span class="ti-menu main-menu" data-ripple=""></span>
        </div>
    </div><!-- topbar -->

    <section>
        <div class="feature-photo">
            <figure><img src="images/resources/timeline-1.jpg" alt=""></figure>
            <div class="add-btn">
                <span>1205 followers</span>
                <a href="time-line.html#" title="" data-ripple="">Add Friend</a>
            </div>
            <form class="edit-phto">
                <i class="fa fa-camera-retro"></i>
                <label class="fileContainer">
                    Edit Cover Photo
                    <input type="file"/>
                </label>
            </form>
            <div class="container-fluid">
                <div class="row merged">
                    <div class="col-lg-2 col-sm-3">
                        <div class="user-avatar">
                            <figure>
                                <img src="images/resources/user-avatar.jpg" alt="">
                                <form class="edit-phto">
                                    <i class="fa fa-camera-retro"></i>
                                    <label class="fileContainer">
                                        Edit Display Photo
                                        <input type="file"/>
                                    </label>
                                </form>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-10 col-sm-9">
                        <div class="timeline-info">
                            <ul>
                                <li class="admin-name">
                                    <h5>Janice Griffith</h5>
                                    <span>Group Admin</span>
                                </li>
                                <li>
                                    <a class="active" href="time-line.html" title="" data-ripple="">time line</a>
                                    <a class="" href="timeline-photos.html" title="" data-ripple="">Photos</a>
                                    <a class="" href="timeline-videos.html" title="" data-ripple="">Videos</a>
                                    <a class="" href="timeline-friends.html" title="" data-ripple="">Friends</a>
                                    <a class="" href="timeline-groups.html" title="" data-ripple="">Groups</a>
                                    <a class="" href="about.html" title="" data-ripple="">about</a>
                                    <a class="" href="time-line.html#" title="" data-ripple="">more</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- top area -->

    <section>
        <div class="gap gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row merged20" id="page-contents">
                            <div class="col-lg-3">
                                <aside class="sidebar static">
                                    <div class="widget">
                                        <h4 class="widget-title">Socials</h4>
                                        <ul class="socials">
                                            <li class="facebook">
                                                <a title="" href="time-line.html#"><i class="fa fa-facebook"></i> <span>facebook</span> <ins>45 likes</ins></a>
                                            </li>
                                            <li class="twitter">
                                                <a title="" href="time-line.html#"><i class="fa fa-twitter"></i> <span>twitter</span><ins>25 likes</ins></a>
                                            </li>
                                            <li class="google">
                                                <a title="" href="time-line.html#"><i class="fa fa-google"></i> <span>google</span><ins>35 likes</ins></a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="widget">
                                        <h4 class="widget-title">Shortcuts</h4>
                                        <ul class="naves">
                                            <li>
                                                <i class="ti-clipboard"></i>
                                                <a href="newsfeed.html" title="">News feed</a>
                                            </li>
                                            <li>
                                                <i class="ti-mouse-alt"></i>
                                                <a href="inbox.html" title="">Inbox</a>
                                            </li>
                                            <li>
                                                <i class="ti-files"></i>
                                                <a href="fav-page.html" title="">My pages</a>
                                            </li>
                                            <li>
                                                <i class="ti-user"></i>
                                                <a href="timeline-friends.html" title="">friends</a>
                                            </li>
                                            <li>
                                                <i class="ti-image"></i>
                                                <a href="timeline-photos.html" title="">images</a>
                                            </li>
                                            <li>
                                                <i class="ti-video-camera"></i>
                                                <a href="timeline-videos.html" title="">videos</a>
                                            </li>
                                            <li>
                                                <i class="ti-comments-smiley"></i>
                                                <a href="messages.html" title="">Messages</a>
                                            </li>
                                            <li>
                                                <i class="ti-bell"></i>
                                                <a href="notifications.html" title="">Notifications</a>
                                            </li>
                                            <li>
                                                <i class="ti-share"></i>
                                                <a href="people-nearby.html" title="">People Nearby</a>
                                            </li>
                                            <li>
                                                <i class="fa fa-bar-chart-o"></i>
                                                <a href="insights.html" title="">insights</a>
                                            </li>
                                            <li>
                                                <i class="ti-power-off"></i>
                                                <a href="landing.html" title="">Logout</a>
                                            </li>
                                        </ul>
                                    </div><!-- Shortcuts -->
                                    <div class="widget">
                                        <h4 class="widget-title">Recent Activity</h4>
                                        <ul class="activitiez">
                                            <li>
                                                <div class="activity-meta">
                                                    <i>10 hours Ago</i>
                                                    <span><a href="time-line.html#" title="">Commented on Video posted </a></span>
                                                    <h6>by <a href="newsfeed.html">black demon.</a></h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="activity-meta">
                                                    <i>30 Days Ago</i>
                                                    <span><a href="newsfeed.html" title="">Posted your status. “Hello guys, how are you?”</a></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="activity-meta">
                                                    <i>2 Years Ago</i>
                                                    <span><a href="time-line.html#" title="">Share a video on her timeline.</a></span>
                                                    <h6>"<a href="newsfeed.html">you are so funny mr.been.</a>"</h6>
                                                </div>
                                            </li>
                                        </ul>
                                    </div><!-- recent activites -->
                                    <div class="widget stick-widget">
                                        <h4 class="widget-title">Who's follownig</h4>
                                        <ul class="followers">
                                            <li>
                                                <figure><img src="images/resources/friend-avatar2.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Kelly Bill</a></h4>
                                                    <a href="time-line.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar4.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Issabel</a></h4>
                                                    <a href="time-line.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar6.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Andrew</a></h4>
                                                    <a href="time-line.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar8.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Sophia</a></h4>
                                                    <a href="time-line.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar3.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Allen</a></h4>
                                                    <a href="time-line.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div><!-- who's following -->
                                </aside>
                            </div><!-- sidebar -->
                            <div class="col-lg-6">
                                <div class="loadMore">
                                    <div class="central-meta new-pst item">
                                        <div class="new-postbox">
                                            <figure>
                                                <img src="images/resources/admin2.jpg" alt="">
                                            </figure>
                                            <div class="newpst-input">
                                                <form method="post">
                                                    <textarea rows="2" placeholder="write something"></textarea>
                                                    <div class="attachments">
                                                        <ul>
                                                            <li>
                                                                <i class="fa fa-music"></i>
                                                                <label class="fileContainer">
                                                                    <input type="file">
                                                                </label>
                                                            </li>
                                                            <li>
                                                                <i class="fa fa-image"></i>
                                                                <label class="fileContainer">
                                                                    <input type="file">
                                                                </label>
                                                            </li>
                                                            <li>
                                                                <i class="fa fa-video-camera"></i>
                                                                <label class="fileContainer">
                                                                    <input type="file">
                                                                </label>
                                                            </li>
                                                            <li>
                                                                <i class="fa fa-camera"></i>
                                                                <label class="fileContainer">
                                                                    <input type="file">
                                                                </label>
                                                            </li>
                                                            <li>
                                                                <button type="submit">Publish</button>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div><!-- add post new box -->
                                    <div class="central-meta item">
                                        <div class="user-post">
                                            <div class="friend-info">
                                                <figure>
                                                    <img src="images/resources/friend-avatar10.jpg" alt="">
                                                </figure>
                                                <div class="friend-name">
                                                    <ins><a href="time-line.html" title="">Janice Griffith</a></ins>
                                                    <span>published: june,2 2018 19:PM</span>
                                                </div>
                                                <div class="description">

                                                    <p>
                                                        World's most beautiful car in Curabitur <a href="time-line.html#" title="">#test drive booking !</a> the most beatuiful car available in america and the saudia arabia, you can book your test drive by our official website
                                                    </p>
                                                </div>
                                                <div class="post-meta">
                                                    <div class="linked-image align-left">
                                                        <a href="time-line.html#" title=""><img src="images/resources/page1.jpg" alt=""></a>
                                                    </div>
                                                    <div class="detail">
                                                        <span>Love Maid - ChillGroves</span>
                                                        <p>Lorem ipsum dolor sit amet, consectetur ipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua... </p>
                                                        <a href="time-line.html#" title="">www.sample.com</a>
                                                    </div>
                                                    <div class="we-video-info">
                                                        <ul>

                                                            <li>
																<span class="views" data-toggle="tooltip" title="views">
																	<i class="fa fa-eye"></i>
																	<ins>1.2k</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="comment" data-toggle="tooltip" title="Comments">
																	<i class="fa fa-comments-o"></i>
																	<ins>52</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="like" data-toggle="tooltip" title="like">
																	<i class="ti-heart"></i>
																	<ins>2.2k</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="dislike" data-toggle="tooltip" title="dislike">
																	<i class="ti-heart-broken"></i>
																	<ins>200</ins>
																</span>
                                                            </li>
                                                            <li class="social-media">
                                                                <div class="menu">
                                                                    <div class="btn trigger"><i class="fa fa-share-alt"></i></div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-html5"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-facebook"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-google-plus"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-twitter"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-css3"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-instagram"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-dribbble"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-pinterest"></i></a>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="central-meta item">
                                        <div class="user-post">
                                            <div class="friend-info">
                                                <figure>
                                                    <img src="images/resources/friend-avatar10.jpg" alt="">
                                                </figure>
                                                <div class="friend-name">
                                                    <ins><a href="time-line.html" title="">Janice Griffith</a></ins>
                                                    <span>published: june,2 2018 19:PM</span>
                                                </div>
                                                <div class="post-meta">
                                                    <img src="images/resources/user-post.jpg" alt="">
                                                    <div class="we-video-info">
                                                        <ul>

                                                            <li>
																<span class="views" data-toggle="tooltip" title="views">
																	<i class="fa fa-eye"></i>
																	<ins>1.2k</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="comment" data-toggle="tooltip" title="Comments">
																	<i class="fa fa-comments-o"></i>
																	<ins>52</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="like" data-toggle="tooltip" title="like">
																	<i class="ti-heart"></i>
																	<ins>2.2k</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="dislike" data-toggle="tooltip" title="dislike">
																	<i class="ti-heart-broken"></i>
																	<ins>200</ins>
																</span>
                                                            </li>
                                                            <li class="social-media">
                                                                <div class="menu">
                                                                    <div class="btn trigger"><i class="fa fa-share-alt"></i></div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-html5"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-facebook"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-google-plus"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-twitter"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-css3"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-instagram"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-dribbble"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-pinterest"></i></a>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="description">

                                                        <p>
                                                            Curabitur world's most beautiful car in <a href="time-line.html#" title="">#test drive booking !</a> the most beatuiful car available in america and the saudia arabia, you can book your test drive by our official website
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="coment-area">
                                                <ul class="we-comet">
                                                    <li>
                                                        <div class="comet-avatar">
                                                            <img src="images/resources/comet-1.jpg" alt="">
                                                        </div>
                                                        <div class="we-comment">
                                                            <div class="coment-head">
                                                                <h5><a href="time-line.html" title="">Jason borne</a></h5>
                                                                <span>1 year ago</span>
                                                                <a class="we-reply" href="time-line.html#" title="Reply"><i class="fa fa-reply"></i></a>
                                                            </div>
                                                            <p>we are working for the dance and sing songs. this car is very awesome for the youngster. please vote this car and like our post</p>
                                                        </div>
                                                        <ul>
                                                            <li>
                                                                <div class="comet-avatar">
                                                                    <img src="images/resources/comet-2.jpg" alt="">
                                                                </div>
                                                                <div class="we-comment">
                                                                    <div class="coment-head">
                                                                        <h5><a href="time-line.html" title="">alexendra dadrio</a></h5>
                                                                        <span>1 month ago</span>
                                                                        <a class="we-reply" href="time-line.html#" title="Reply"><i class="fa fa-reply"></i></a>
                                                                    </div>
                                                                    <p>yes, really very awesome car i see the features of this car in the official website of <a href="time-line.html#" title="">#Mercedes-Benz</a> and really impressed :-)</p>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="comet-avatar">
                                                                    <img src="images/resources/comet-3.jpg" alt="">
                                                                </div>
                                                                <div class="we-comment">
                                                                    <div class="coment-head">
                                                                        <h5><a href="time-line.html" title="">Olivia</a></h5>
                                                                        <span>16 days ago</span>
                                                                        <a class="we-reply" href="time-line.html#" title="Reply"><i class="fa fa-reply"></i></a>
                                                                    </div>
                                                                    <p>i like lexus cars, lexus cars are most beautiful with the awesome features, but this car is really outstanding than lexus</p>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <div class="comet-avatar">
                                                            <img src="images/resources/comet-4.jpg" alt="">
                                                        </div>
                                                        <div class="we-comment">
                                                            <div class="coment-head">
                                                                <h5><a href="time-line.html" title="">Donald Trump</a></h5>
                                                                <span>1 week ago</span>
                                                                <a class="we-reply" href="time-line.html#" title="Reply"><i class="fa fa-reply"></i></a>
                                                            </div>
                                                            <p>we are working for the dance and sing songs. this video is very awesome for the youngster. please vote this video and like our channel
                                                                <i class="em em-smiley"></i>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <a href="time-line.html#" title="" class="showmore underline">more comments</a>
                                                    </li>
                                                    <li class="post-comment">
                                                        <div class="comet-avatar">
                                                            <img src="images/resources/comet-1.jpg" alt="">
                                                        </div>
                                                        <div class="post-comt-box">
                                                            <form method="post">
                                                                <textarea placeholder="Post your comment"></textarea>
                                                                <div class="add-smiles">
                                                                    <span class="em em-expressionless" title="add icon"></span>
                                                                </div>
                                                                <div class="smiles-bunch">
                                                                    <i class="em em---1"></i>
                                                                    <i class="em em-smiley"></i>
                                                                    <i class="em em-anguished"></i>
                                                                    <i class="em em-laughing"></i>
                                                                    <i class="em em-angry"></i>
                                                                    <i class="em em-astonished"></i>
                                                                    <i class="em em-blush"></i>
                                                                    <i class="em em-disappointed"></i>
                                                                    <i class="em em-worried"></i>
                                                                    <i class="em em-kissing_heart"></i>
                                                                    <i class="em em-rage"></i>
                                                                    <i class="em em-stuck_out_tongue"></i>
                                                                </div>
                                                                <button type="submit"></button>
                                                            </form>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="central-meta item">
                                        <div class="user-post">
                                            <div class="friend-info">
                                                <figure>
                                                    <img src="images/resources/friend-avatar10.jpg" alt="">
                                                </figure>
                                                <div class="friend-name">
                                                    <ins><a href="time-line.html" title="">Janice Griffith</a></ins>
                                                    <span>published: june,2 2018 19:PM</span>
                                                </div>
                                                <div class="post-meta">
                                                    <iframe width="" height="285" src="https://www.youtube.com/embed/_-StQsHSTz0" frameborder="0" allowfullscreen></iframe>
                                                    <div class="we-video-info">
                                                        <ul>

                                                            <li>
																<span class="views" data-toggle="tooltip" title="views">
																	<i class="fa fa-eye"></i>
																	<ins>1.2k</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="comment" data-toggle="tooltip" title="Comments">
																	<i class="fa fa-comments-o"></i>
																	<ins>52</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="like" data-toggle="tooltip" title="like">
																	<i class="ti-heart"></i>
																	<ins>2.2k</ins>
																</span>
                                                            </li>
                                                            <li>
																<span class="dislike" data-toggle="tooltip" title="dislike">
																	<i class="ti-heart-broken"></i>
																	<ins>200</ins>
																</span>
                                                            </li>
                                                            <li class="social-media">
                                                                <div class="menu">
                                                                    <div class="btn trigger"><i class="fa fa-share-alt"></i></div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-html5"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-facebook"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-google-plus"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-twitter"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-css3"></i></a></div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-instagram"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-dribbble"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="rotater">
                                                                        <div class="btn btn-icon"><a href="time-line.html#" title=""><i class="fa fa-pinterest"></i></a>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="description">

                                                        <p>
                                                            Lonely Cat Enjoying in Summer Curabitur <a href="time-line.html#" title="">#mypage</a> ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc,
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="coment-area">
                                                <ul class="we-comet">
                                                    <li>
                                                        <div class="comet-avatar">
                                                            <img src="images/resources/comet-1.jpg" alt="">
                                                        </div>
                                                        <div class="we-comment">
                                                            <div class="coment-head">
                                                                <h5><a href="time-line.html" title="">Jason borne</a></h5>
                                                                <span>1 year ago</span>
                                                                <a class="we-reply" href="time-line.html#" title="Reply"><i class="fa fa-reply"></i></a>
                                                            </div>
                                                            <p>we are working for the dance and sing songs. this video is very awesome for the youngster. please vote this video and like our channel</p>
                                                        </div>

                                                    </li>
                                                    <li>
                                                        <div class="comet-avatar">
                                                            <img src="images/resources/comet-2.jpg" alt="">
                                                        </div>
                                                        <div class="we-comment">
                                                            <div class="coment-head">
                                                                <h5><a href="time-line.html" title="">Sophia</a></h5>
                                                                <span>1 week ago</span>
                                                                <a class="we-reply" href="time-line.html#" title="Reply"><i class="fa fa-reply"></i></a>
                                                            </div>
                                                            <p>we are working for the dance and sing songs. this video is very awesome for the youngster.
                                                                <i class="em em-smiley"></i>
                                                            </p>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <a href="time-line.html#" title="" class="showmore underline">more comments</a>
                                                    </li>
                                                    <li class="post-comment">
                                                        <div class="comet-avatar">
                                                            <img src="images/resources/comet-2.jpg" alt="">
                                                        </div>
                                                        <div class="post-comt-box">
                                                            <form method="post">
                                                                <textarea placeholder="Post your comment"></textarea>
                                                                <div class="add-smiles">
                                                                    <span class="em em-expressionless" title="add icon"></span>
                                                                </div>
                                                                <div class="smiles-bunch">
                                                                    <i class="em em---1"></i>
                                                                    <i class="em em-smiley"></i>
                                                                    <i class="em em-anguished"></i>
                                                                    <i class="em em-laughing"></i>
                                                                    <i class="em em-angry"></i>
                                                                    <i class="em em-astonished"></i>
                                                                    <i class="em em-blush"></i>
                                                                    <i class="em em-disappointed"></i>
                                                                    <i class="em em-worried"></i>
                                                                    <i class="em em-kissing_heart"></i>
                                                                    <i class="em em-rage"></i>
                                                                    <i class="em em-stuck_out_tongue"></i>
                                                                </div>
                                                                <button type="submit"></button>
                                                            </form>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- centerl meta -->
                            <div class="col-lg-3">
                                <aside class="sidebar static">
                                    <div class="widget">
                                        <div class="banner medium-opacity bluesh">
                                            <div style="background-image: url(images/resources/baner-widgetbg.jpg)" class="bg-image"></div>
                                            <div class="baner-top">
                                                <span><img src="images/book-icon.png" alt=""></span>
                                                <i class="fa fa-ellipsis-h"></i>
                                            </div>
                                            <div class="banermeta">
                                                <p>
                                                    create your own favourit page.
                                                </p>
                                                <span>like them all</span>
                                                <a href="time-line.html#" title="" data-ripple="">start now!</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widget friend-list stick-widget">
                                        <h4 class="widget-title">Friends</h4>
                                        <div id="searchDir"></div>
                                        <ul id="people-list" class="friendz-list">
                                            <li>
                                                <figure>
                                                    <img src="images/resources/friend-avatar.jpg" alt="">
                                                    <span class="status f-online"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">bucky barnes</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="52253b3c263720213d3e36372012353f333b3e7c313d3f">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="images/resources/friend-avatar2.jpg" alt="">
                                                    <span class="status f-away"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">Sarah Loren</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="2a484b58444f596a4d474b434604494547">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="images/resources/friend-avatar3.jpg" alt="">
                                                    <span class="status f-off"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">jason borne</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="e78d8694888985a7808a868e8bc984888a">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="images/resources/friend-avatar4.jpg" alt="">
                                                    <span class="status f-off"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">Cameron diaz</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="91fbf0e2fefff3d1f6fcf0f8fdbff2fefc">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar5.jpg" alt="">
                                                    <span class="status f-online"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">daniel warber</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="5a303b293534381a3d373b333674393537">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar6.jpg" alt="">
                                                    <span class="status f-away"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">andrew</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="b0dad1c3dfded2f0d7ddd1d9dc9ed3dfdd">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar7.jpg" alt="">
                                                    <span class="status f-off"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">amy watson</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="cda7acbea2a3af8daaa0aca4a1e3aea2a0">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar5.jpg" alt="">
                                                    <span class="status f-online"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">daniel warber</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="d3b9b2a0bcbdb193b4beb2babffdb0bcbe">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar2.jpg" alt="">
                                                    <span class="status f-away"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">Sarah Loren</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="b5d7d4c7dbd0c6f5d2d8d4dcd99bd6dad8">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="chat-box">
                                            <div class="chat-head">
                                                <span class="status f-online"></span>
                                                <h6>Bucky Barnes</h6>
                                                <div class="more">
                                                    <span><i class="ti-more-alt"></i></span>
                                                    <span class="close-mesage"><i class="ti-close"></i></span>
                                                </div>
                                            </div>
                                            <div class="chat-list">
                                                <ul>
                                                    <li class="me">
                                                        <div class="chat-thumb"><img src="images/resources/chatlist1.jpg" alt=""></div>
                                                        <div class="notification-event">
															<span class="chat-message-item">
																Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks
															</span>
                                                            <span class="notification-date"><time datetime="2004-07-24T18:18" class="entry-date updated">Yesterday at 8:10pm</time></span>
                                                        </div>
                                                    </li>
                                                    <li class="you">
                                                        <div class="chat-thumb"><img src="images/resources/chatlist2.jpg" alt=""></div>
                                                        <div class="notification-event">
															<span class="chat-message-item">
																Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks
															</span>
                                                            <span class="notification-date"><time datetime="2004-07-24T18:18" class="entry-date updated">Yesterday at 8:10pm</time></span>
                                                        </div>
                                                    </li>
                                                    <li class="me">
                                                        <div class="chat-thumb"><img src="images/resources/chatlist1.jpg" alt=""></div>
                                                        <div class="notification-event">
															<span class="chat-message-item">
																Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks
															</span>
                                                            <span class="notification-date"><time datetime="2004-07-24T18:18" class="entry-date updated">Yesterday at 8:10pm</time></span>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <form class="text-box">
                                                    <textarea placeholder="Post enter to post..."></textarea>
                                                    <div class="add-smiles">
                                                        <span title="add icon" class="em em-expressionless"></span>
                                                    </div>
                                                    <div class="smiles-bunch">
                                                        <i class="em em---1"></i>
                                                        <i class="em em-smiley"></i>
                                                        <i class="em em-anguished"></i>
                                                        <i class="em em-laughing"></i>
                                                        <i class="em em-angry"></i>
                                                        <i class="em em-astonished"></i>
                                                        <i class="em em-blush"></i>
                                                        <i class="em em-disappointed"></i>
                                                        <i class="em em-worried"></i>
                                                        <i class="em em-kissing_heart"></i>
                                                        <i class="em em-rage"></i>
                                                        <i class="em em-stuck_out_tongue"></i>
                                                    </div>
                                                    <button type="submit"></button>
                                                </form>
                                            </div>
                                        </div>
                                    </div><!-- friends list sidebar -->
                                </aside>
                            </div><!-- sidebar -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4">
                    <div class="widget">
                        <div class="foot-logo">
                            <div class="logo">
                                <a href="index.html" title=""><img src="images/logo.png" alt=""></a>
                            </div>
                            <p>
                                The trio took this simple idea and built it into the world’s leading carpooling platform.
                            </p>
                        </div>
                        <ul class="location">
                            <li>
                                <i class="ti-map-alt"></i>
                                <p>33 new montgomery st.750 san francisco, CA USA 94105.</p>
                            </li>
                            <li>
                                <i class="ti-mobile"></i>
                                <p>+1-56-346 345</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4">
                    <div class="widget">
                        <div class="widget-title"><h4>follow</h4></div>
                        <ul class="list-style">
                            <li><i class="fa fa-facebook-square"></i> <a href="https://web.facebook.com/shopcircut/" title="">facebook</a></li>
                            <li><i class="fa fa-twitter-square"></i><a href="https://twitter.com/login?lang=en" title="">twitter</a></li>
                            <li><i class="fa fa-instagram"></i><a href="https://www.instagram.com/?hl=en" title="">instagram</a></li>
                            <li><i class="fa fa-google-plus-square"></i> <a href="https://plus.google.com/discover" title="">Google+</a></li>
                            <li><i class="fa fa-pinterest-square"></i> <a href="https://www.pinterest.com/" title="">Pintrest</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4">
                    <div class="widget">
                        <div class="widget-title"><h4>Navigate</h4></div>
                        <ul class="list-style">
                            <li><a href="about.html" title="">about us</a></li>
                            <li><a href="contact.html" title="">contact us</a></li>
                            <li><a href="https://wpkixx.com/html/winku/terms.html" title="">terms & Conditions</a></li>
                            <li><a href="time-line.html#" title="">RSS syndication</a></li>
                            <li><a href="https://wpkixx.com/html/winku/sitemap.html" title="">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4">
                    <div class="widget">
                        <div class="widget-title"><h4>useful links</h4></div>
                        <ul class="list-style">
                            <li><a href="time-line.html#" title="">leasing</a></li>
                            <li><a href="time-line.html#" title="">submit route</a></li>
                            <li><a href="time-line.html#" title="">how does it work?</a></li>
                            <li><a href="time-line.html#" title="">agent listings</a></li>
                            <li><a href="time-line.html#" title="">view All</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4">
                    <div class="widget">
                        <div class="widget-title"><h4>download apps</h4></div>
                        <ul class="colla-apps">
                            <li><a href="https://play.google.com/store?hl=en" title=""><i class="fa fa-android"></i>android</a></li>
                            <li><a href="https://www.apple.com/lae/ios/app-store/" title=""><i class="ti-apple"></i>iPhone</a></li>
                            <li><a href="https://www.microsoft.com/store/apps" title=""><i class="fa fa-windows"></i>Windows</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer><!-- footer -->
    <div class="bottombar">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <span class="copyright">© Winku 2018. All rights reserved.</span>
                    <i><img src="images/credit-cards.png" alt=""></i>
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
            <input type="checkbox" id="switch22" />
            <label for="switch22" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Notification sound</span>
            <input type="checkbox" id="switch33" />
            <label for="switch33" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>My profile</span>
            <input type="checkbox" id="switch44" />
            <label for="switch44" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Show profile</span>
            <input type="checkbox" id="switch55" />
            <label for="switch55" data-on-label="ON" data-off-label="OFF"></label>
        </div>
    </form>
    <h4 class="panel-title">Account Setting</h4>
    <form method="post">
        <div class="setting-row">
            <span>Sub users</span>
            <input type="checkbox" id="switch66" />
            <label for="switch66" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>personal account</span>
            <input type="checkbox" id="switch77" />
            <label for="switch77" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Business account</span>
            <input type="checkbox" id="switch88" />
            <label for="switch88" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Show me online</span>
            <input type="checkbox" id="switch99" />
            <label for="switch99" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Delete history</span>
            <input type="checkbox" id="switch101" />
            <label for="switch101" data-on-label="ON" data-off-label="OFF"></label>
        </div>
        <div class="setting-row">
            <span>Expose author name</span>
            <input type="checkbox" id="switch111" />
            <label for="switch111" data-on-label="ON" data-off-label="OFF"></label>
        </div>
    </form>
</div><!-- side panel -->

<script data-cfasync="false" src="https://wpkixx.com/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="resources/js/main.min.js"></script>
<script src="resources/js/script.js"></script>

</body>
</html>
