<%--
  Created by IntelliJ IDEA.
  User: 610158
  Date: 9/23/2019
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>Click Me ${user.firstName}  ${user.lastName} Home</title>
    <link rel="icon" href="images/fav.png" type="image/png" sizes="16x16">

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
				<a class="" href="index.html#menu"><i class="fa fa-align-justify"></i></a>
			</span>
            <span class="mh-text">
				<a href="newsfeed.html" title=""><img src="images/logo2.png" alt=""></a>
			</span>
            <span class="mh-btns-right">
				<a class="fa fa-sliders" href="index.html#shoppingbag"></a>
			</span>
        </div>
        <div class="mh-head second">
            <form class="mh-form">
                <input placeholder="search" />
                <a href="index.html#/" class="fa fa-search"></a>
            </form>
        </div>
        <nav id="menu" class="res-menu">
            <ul>
                <li><span>Home</span>
                    <ul>
                        <li><a href="index.html" title="">Home Social</a></li>
                        <li><a href="index2.html" title="">Home Social 2</a></li>
                        <li><a href="index-company.html" title="">Home Company</a></li>
                        <li><a href="landing.html" title="">Login page</a></li>
                        <li><a href="logout.html" title="">Logout Page</a></li>
                        <li><a href="newsfeed.html" title="">news feed</a></li>
                    </ul>
                </li>
                <li><span>Time Line</span>
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
                <li><span>Account Setting</span>
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
                <li><span>forum</span>
                    <ul>
                        <li><a href="forum.html" title="">Forum Page</a></li>
                        <li><a href="forums-category.html" title="">Fourm Category</a></li>
                        <li><a href="forum-open-topic.html" title="">Forum Open Topic</a></li>
                        <li><a href="forum-create-topic.html" title="">Forum Create Topic</a></li>
                    </ul>
                </li>
                <li><span>Our Shop</span>
                    <ul>
                        <li><a href="shop.html" title="">Shop Products</a></li>
                        <li><a href="shop-masonry.html" title="">Shop Masonry Products</a></li>
                        <li><a href="shop-single.html" title="">Shop Detail Page</a></li>
                        <li><a href="shop-cart.html" title="">Shop Product Cart</a></li>
                        <li><a href="shop-checkout.html" title="">Product Checkout</a></li>
                    </ul>
                </li>
                <li><span>Our Blog</span>
                    <ul>
                        <li><a href="blog-grid-wo-sidebar.html" title="">Our Blog</a></li>
                        <li><a href="blog-grid-right-sidebar.html" title="">Blog with R-Sidebar</a></li>
                        <li><a href="blog-grid-left-sidebar.html" title="">Blog with L-Sidebar</a></li>
                        <li><a href="blog-masonry.html" title="">Blog Masonry Style</a></li>
                        <li><a href="blog-list-wo-sidebar.html" title="">Blog List Style</a></li>
                        <li><a href="blog-list-right-sidebar.html" title="">Blog List with R-Sidebar</a></li>
                        <li><a href="blog-list-left-sidebar.html" title="">Blog List with L-Sidebar</a></li>
                        <li><a href="blog-detail.html" title="">Blog Post Detail</a></li>
                    </ul>
                </li>
                <li><span>Portfolio</span>
                    <ul>
                        <li><a href="portfolio-2colm.html" title="">Portfolio 2col</a></li>
                        <li><a href="portfolio-3colm.html" title="">Portfolio 3col</a></li>
                        <li><a href="portfolio-4colm.html" title="">Portfolio 4col</a></li>
                    </ul>
                </li>
                <li><span>Support & Help</span>
                    <ul>
                        <li><a href="support-and-help.html" title="">Support & Help</a></li>
                        <li><a href="support-and-help-detail.html" title="">Support & Help Detail</a></li>
                        <li><a href="support-and-help-search-result.html" title="">Support & Help Search Result</a></li>
                    </ul>
                </li>
                <li><span>More pages</span>
                    <ul>
                        <li><a href="careers.html" title="">Careers</a></li>
                        <li><a href="career-detail.html" title="">Career Detail</a></li>
                        <li><a href="404.html" title="">404 error page</a></li>
                        <li><a href="404-2.html" title="">404 Style2</a></li>
                        <li><a href="faq.html" title="">faq's page</a></li>
                        <li><a href="insights.html" title="">insights</a></li>
                        <li><a href="knowledge-base.html" title="">knowledge base</a></li>
                    </ul>
                </li>
                <li><a href="about.html" title="">about</a></li>
                <li><a href="about-company.html" title="">About Us2</a></li>
                <li><a href="contact.html" title="">contact</a></li>
                <li><a href="contact-branches.html" title="">Contact Us2</a></li>
                <li><a href="widgets.html" title="">Widgts</a></li>
            </ul>
        </nav>
        <nav id="shoppingbag">
            <div>
                <div class="">
                    <form method="post">
                        <div class="setting-row">
                            <span>use night mode</span>
                            <input type="checkbox" id="nightmode"/>
                            <label for="nightmode" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>Notifications</span>
                            <input type="checkbox" id="switch2"/>
                            <label for="switch2" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>Notification sound</span>
                            <input type="checkbox" id="switch3"/>
                            <label for="switch3" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>My profile</span>
                            <input type="checkbox" id="switch4"/>
                            <label for="switch4" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>Show profile</span>
                            <input type="checkbox" id="switch5"/>
                            <label for="switch5" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                    </form>
                    <h4 class="panel-title">Account Setting</h4>
                    <form method="post">
                        <div class="setting-row">
                            <span>Sub users</span>
                            <input type="checkbox" id="switch6" />
                            <label for="switch6" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>personal account</span>
                            <input type="checkbox" id="switch7" />
                            <label for="switch7" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>Business account</span>
                            <input type="checkbox" id="switch8" />
                            <label for="switch8" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>Show me online</span>
                            <input type="checkbox" id="switch9" />
                            <label for="switch9" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>Delete history</span>
                            <input type="checkbox" id="switch10" />
                            <label for="switch10" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                        <div class="setting-row">
                            <span>Expose author name</span>
                            <input type="checkbox" id="switch11" />
                            <label for="switch11" data-on-label="ON" data-off-label="OFF"></label>
                        </div>
                    </form>
                </div>
            </div>
        </nav>
    </div><!-- responsive header -->

    <div class="topbar stick">
        <div class="logo">
            <a title="" href="newsfeed.html"><img src="images/logo.png" alt=""></a>
        </div>

        <div class="top-area">
            <ul class="main-menu">
                <li>
                    <a href="index.html#" title="">Home</a>
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
                    <a href="index.html#" title="">timeline</a>
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
                    <a href="index.html#" title="">account settings</a>
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
                    <a href="index.html#" title="">more pages</a>
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
                    <a href="index.html" title="Home" data-ripple=""><i class="ti-search"></i></a>
                    <div class="searched">
                        <form method="post" class="form-search">
                            <input type="text" placeholder="Search Friend">
                            <button data-ripple><i class="ti-search"></i></button>
                        </form>
                    </div>
                </li>
                <li><a href="newsfeed.html" title="Home" data-ripple=""><i class="ti-home"></i></a></li>
                <li>
                    <a href="index.html#" title="Notification" data-ripple="">
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
                    <a href="index.html#" title="Messages" data-ripple=""><i class="ti-comment"></i><span>12</span></a>
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
                <li><a href="index.html#" title="Languages" data-ripple=""><i class="fa fa-globe"></i></a>
                    <div class="dropdowns languages">
                        <a href="index.html#" title=""><i class="ti-check"></i>English</a>
                        <a href="index.html#" title="">Arabic</a>
                        <a href="index.html#" title="">Dutch</a>
                        <a href="index.html#" title="">French</a>
                    </div>
                </li>
            </ul>
            <div class="user-img">
                <img src="images/resources/admin.jpg" alt="">
                <span class="status f-online"></span>
                <div class="user-setting">
                    <a href="index.html#" title=""><span class="status f-online"></span>online</a>
                    <a href="index.html#" title=""><span class="status f-away"></span>away</a>
                    <a href="index.html#" title=""><span class="status f-off"></span>offline</a>
                    <a href="index.html#" title=""><i class="ti-user"></i> view profile</a>
                    <a href="index.html#" title=""><i class="ti-pencil-alt"></i>edit profile</a>
                    <a href="index.html#" title=""><i class="ti-target"></i>activity log</a>
                    <a href="index.html#" title=""><i class="ti-settings"></i>account setting</a>
                    <a href="index.html#" title=""><i class="ti-power-off"></i>log out</a>
                </div>
            </div>
            <span class="ti-menu main-menu" data-ripple=""></span>
        </div>
    </div><!-- topbar -->

    <div class="fixed-sidebar right">
        <div class="chat-friendz">
            <ul class="chat-users">
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend1.jpg" alt="">
                        <span class="status f-online"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend2.jpg" alt="">
                        <span class="status f-away"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend3.jpg" alt="">
                        <span class="status f-online"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend4.jpg" alt="">
                        <span class="status f-offline"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend5.jpg" alt="">
                        <span class="status f-online"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend6.jpg" alt="">
                        <span class="status f-online"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend7.jpg" alt="">
                        <span class="status f-offline"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend8.jpg" alt="">
                        <span class="status f-online"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend9.jpg" alt="">
                        <span class="status f-away"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend10.jpg" alt="">
                        <span class="status f-away"></span>
                    </div>
                </li>
                <li>
                    <div class="author-thmb">
                        <img src="images/resources/side-friend8.jpg" alt="">
                        <span class="status f-online"></span>
                    </div>
                </li>
            </ul>
            <div class="chat-box">
                <div class="chat-head">
                    <span class="status f-online"></span>
                    <h6>Bucky Barnes</h6>
                    <div class="more">
						<span class="more-optns"><i class="ti-more-alt"></i>
							<ul>
								<li>block chat</li>
								<li>unblock chat</li>
								<li>conversation</li>
							</ul>
						</span>
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
        </div>
    </div><!-- right sidebar user chat -->

    <div class="fixed-sidebar left">
        <div class="menu-left">
            <ul class="left-menu">
                <li><a href="newsfeed.html" title="Newsfeed Page" data-toggle="tooltip" data-placement="right"><i class="ti-magnet"></i></a></li>
                <li><a href="fav-page.html" title="favourit page" data-toggle="tooltip" data-placement="right"><i class="fa fa-star-o"></i></a></li>
                <li><a href="insights.html" title="Account Stats" data-toggle="tooltip" data-placement="right"><i class="ti-stats-up"></i></a></li>
                <li><a href="inbox.html" title="inbox" data-toggle="tooltip" data-placement="right"><i class="ti-import"></i></a></li>
                <li><a href="messages.html" title="Messages" data-toggle="tooltip" data-placement="right"><i class="ti-comment-alt"></i></a></li>
                <li><a href="edit-account-setting.html" title="Setting" data-toggle="tooltip" data-placement="right"><i class="ti-panel"></i></a></li>
                <li><a href="faq.html" title="Faq's" data-toggle="tooltip" data-placement="right"><i class="ti-light-bulb"></i></a></li>
                <li><a href="timeline-friends.html" title="Friends" data-toggle="tooltip" data-placement="right"><i class="ti-themify-favicon"></i></a></li>
                <li><a href="widgets.html" title="Widgets" data-toggle="tooltip" data-placement="right"><i class="ti-eraser"></i></a></li>
                <li><a href="notifications.html" title="Notification" data-toggle="tooltip" data-placement="right"><i class="ti-bookmark-alt"></i></a></li>
            </ul>
        </div>
    </div><!-- left sidebar menu -->

    <section>
        <div class="gap gray-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="row merged20" id="page-contents">
                            <div class="col-lg-3">
                                <aside class="sidebar static">
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
                                                    <span><a href="index.html#" title="">Commented on Video posted </a></span>
                                                    <h6>by <a href="time-line.html">black demon.</a></h6>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="activity-meta">
                                                    <i>30 Days Ago</i>
                                                    <span><a href="index.html#" title="">Posted your status. “Hello guys, how are you?”</a></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="activity-meta">
                                                    <i>2 Years Ago</i>
                                                    <span><a href="index.html#" title="">Share a video on her timeline.</a></span>
                                                    <h6>"<a href="index.html#">you are so funny mr.been.</a>"</h6>
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
                                                    <a href="index.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar4.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Issabel</a></h4>
                                                    <a href="index.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar6.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Andrew</a></h4>
                                                    <a href="index.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar8.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Sophia</a></h4>
                                                    <a href="index.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                            <li>
                                                <figure><img src="images/resources/friend-avatar3.jpg" alt=""></figure>
                                                <div class="friend-meta">
                                                    <h4><a href="time-line.html" title="">Allen</a></h4>
                                                    <a href="index.html#" title="" class="underline">Add Friend</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div><!-- who's following -->
                                </aside>
                            </div><!-- sidebar -->
                            <div class="col-lg-6">
                                <div class="central-meta new-pst">
                                    <div class="new-postbox">
                                        <figure>
                                            <img src="images/resources/admin2.jpg" alt="">
                                        </figure>
                                        <div class="newpst-input">
                                            <%@ include file="includes/post_form.jsp" %>


                                        </div>
                                    </div>
                                </div><!-- add post new box -->
                                <div class="loadMore">


                                    <%@include file="includes/posts_list.jsp"%>




                                </div>
                            </div><!-- centerl meta -->
                            <div class="col-lg-3">
                                <aside class="sidebar static">
                                    <div class="widget">
                                        <h4 class="widget-title">Your page</h4>
                                        <div class="your-page">
                                            <figure>
                                                <a href="index.html#" title=""><img src="images/resources/friend-avatar9.jpg" alt=""></a>
                                            </figure>
                                            <div class="page-meta">
                                                <a href="index.html#" title="" class="underline">My page</a>
                                                <span><i class="ti-comment"></i><a href="https://wpkixx.com/html/winku/insight.html" title="">Messages <em>9</em></a></span>
                                                <span><i class="ti-bell"></i><a href="https://wpkixx.com/html/winku/insight.html" title="">Notifications <em>2</em></a></span>
                                            </div>
                                            <div class="page-likes">
                                                <ul class="nav nav-tabs likes-btn">
                                                    <li class="nav-item"><a class="active" href="index.html#link1" data-toggle="tab">likes</a></li>
                                                    <li class="nav-item"><a class="" href="index.html#link2" data-toggle="tab">views</a></li>
                                                </ul>
                                                <!-- Tab panes -->
                                                <div class="tab-content">
                                                    <div class="tab-pane active fade show " id="link1" >
                                                        <span><i class="ti-heart"></i>884</span>
                                                        <a href="index.html#" title="weekly-likes">35 new likes this week</a>
                                                        <div class="users-thumb-list">
                                                            <a href="index.html#" title="Anderw" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-1.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="frank" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-2.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Sara" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-3.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Amy" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-4.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Ema" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-5.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Sophie" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-6.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Maria" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-7.jpg" alt="">
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="tab-pane fade" id="link2" >
                                                        <span><i class="ti-eye"></i>440</span>
                                                        <a href="index.html#" title="weekly-likes">440 new views this week</a>
                                                        <div class="users-thumb-list">
                                                            <a href="index.html#" title="Anderw" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-1.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="frank" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-2.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Sara" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-3.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Amy" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-4.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Ema" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-5.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Sophie" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-6.jpg" alt="">
                                                            </a>
                                                            <a href="index.html#" title="Maria" data-toggle="tooltip">
                                                                <img src="images/resources/userlist-7.jpg" alt="">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div><!-- page like widget -->
                                    <div class="widget">
                                        <div class="banner medium-opacity bluesh">
                                            <div class="bg-image" style="background-image: url(images/resources/baner-widgetbg.jpg)"></div>
                                            <div class="baner-top">
                                                <span><img alt="" src="images/book-icon.png"></span>
                                                <i class="fa fa-ellipsis-h"></i>
                                            </div>
                                            <div class="banermeta">
                                                <p>
                                                    create your own favourit page.
                                                </p>
                                                <span>like them all</span>
                                                <a data-ripple="" title="" href="index.html#">start now!</a>
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
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="5e2937302a3b2c2d31323a3b2c1e39333f3732703d3133">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="images/resources/friend-avatar2.jpg" alt="">
                                                    <span class="status f-away"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">Sarah Loren</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="f39192819d9680b3949e929a9fdd909c9e">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="images/resources/friend-avatar3.jpg" alt="">
                                                    <span class="status f-off"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">jason borne</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="137972607c7d7153747e727a7f3d707c7e">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>
                                                <figure>
                                                    <img src="images/resources/friend-avatar4.jpg" alt="">
                                                    <span class="status f-off"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">Cameron diaz</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="96fcf7e5f9f8f4d6f1fbf7fffab8f5f9fb">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar5.jpg" alt="">
                                                    <span class="status f-online"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">daniel warber</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="4a202b392524280a2d272b232664292527">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar6.jpg" alt="">
                                                    <span class="status f-away"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">andrew</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="1e747f6d71707c5e79737f7772307d7173">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar7.jpg" alt="">
                                                    <span class="status f-off"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">amy watson</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="7913180a16171b39">[email&#160;protected]</a>gmail.com</i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar5.jpg" alt="">
                                                    <span class="status f-online"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">daniel warber</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="abc1cad8c4c5c9ebccc6cac2c785c8c4c6">[email&#160;protected]</a></i>
                                                </div>
                                            </li>
                                            <li>

                                                <figure>
                                                    <img src="images/resources/friend-avatar2.jpg" alt="">
                                                    <span class="status f-away"></span>
                                                </figure>
                                                <div class="friendz-meta">
                                                    <a href="time-line.html">Sarah Loren</a>
                                                    <i><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="1775766579726457707a767e7b3974787a">[email&#160;protected]</a></i>
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
                            <li><a href="index.html#" title="">RSS syndication</a></li>
                            <li><a href="https://wpkixx.com/html/winku/sitemap.html" title="">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4">
                    <div class="widget">
                        <div class="widget-title"><h4>useful links</h4></div>
                        <ul class="list-style">
                            <li><a href="index.html#" title="">leasing</a></li>
                            <li><a href="index.html#" title="">submit route</a></li>
                            <li><a href="index.html#" title="">how does it work?</a></li>
                            <li><a href="index.html#" title="">agent listings</a></li>
                            <li><a href="index.html#" title="">view All</a></li>
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
<script src="resources/js/map-init.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8c55_YHLvDHGACkQscgbGLtLRdxBDCfI"></script>

<script src="resources/js/views/user/post.js" type="text/javascript"></script>

</body>
</html>
