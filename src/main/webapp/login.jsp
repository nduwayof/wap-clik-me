<%--
  Created by IntelliJ IDEA.
  User: nduwayofabrice
  Date: 2019-09-23
  Time: 11:15
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
    <title>Click Me</title>
    <link rel="icon" href="resources/images/fav.png" type="image/png" sizes="16x16">
    <link rel="stylesheet" href="resources/css/main.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/css/color.css">
    <link rel="stylesheet" href="resources/css/responsive.css">
</head>
<body>
<div class="theme-layout">
    <div class="container-fluid pdng0">
        <div class="row merged">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="land-featurearea">
                    <div class="land-meta">
                        <h1>MumBook </h1>
                        <p>
                            MumBook is a class project for WAP course at Maharishi University of Management.
                        </p>
                        <div class="friend-logo">
                            <span><img src="resources/images/wink.png" alt=""></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="login-reg-bg">
                    <div class="log-reg-area sign">
                        <h2 class="log-title">Login</h2>
                        <p>
                            Don’t use MumBook Yet? <a href="landing.html#" title="">Take the tour</a> or <a href="landing.html#" title="">Join now</a>
                        </p>
                        <form method="post">
                            <div class="form-group">
                                <input type="text" id="input" required="required"/>
                                <label class="control-label" for="input">Username</label><i class="mtrl-select"></i>
                            </div>
                            <div class="form-group">
                                <input type="password" required="required"/>
                                <label class="control-label" for="input">Password</label><i class="mtrl-select"></i>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" checked="checked"/><i class="check-box"></i>Always Remember Me.
                                </label>
                            </div>
                            <a href="landing.html#" title="" class="forgot-pwd">Forgot Password?</a>
                            <div class="submit-btns">
                                <button class="mtr-btn signin" type="button"><span>Login</span></button>
                                <button class="mtr-btn signup" type="button"><span>Register</span></button>
                            </div>
                        </form>
                    </div>
                    <div class="log-reg-area reg">
                        <h2 class="log-title">Register</h2>
                        <p>
                            Don’t use MumBook Yet? <a href="javascript:void(0)" title="">Take the tour</a> or <a href="javascript:void(0)" title="">Join now</a>
                        </p>
                        <form method="post">
                            <div class="form-group">
                                <input type="text" required="required"/>
                                <label class="control-label" for="input">First & Last Name</label><i class="mtrl-select"></i>
                            </div>
                            <div class="form-group">
                                <input type="text" required="required"/>
                                <label class="control-label" for="input">User Name</label><i class="mtrl-select"></i>
                            </div>
                            <div class="form-group">
                                <input type="password" required="required"/>
                                <label class="control-label" for="input">Password</label><i class="mtrl-select"></i>
                            </div>
                            <div class="form-radio">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="radio" checked="checked"/><i class="check-box"></i>Male
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="radio"/><i class="check-box"></i>Female
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" required="required"/>
                                <label class="control-label" for="input"><a href="https://wpkixx.com/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="83c6eee2eaefc3">[email&#160;protected]</a></label><i class="mtrl-select"></i>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" checked="checked"/><i class="check-box"></i>Accept Terms & Conditions ?
                                </label>
                            </div>
                            <a href="landing.html#" title="" class="already-have">Already have an account</a>
                            <div class="submit-btns">
                                <button class="mtr-btn signup" type="button"><span>Register</span></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script data-cfasync="false" src="resources/js/email-decode.min.js"></script>
<script src="resources/js/main.min.js"></script>
<script src="resources/js/script.js"></script>
</body>
</html>
