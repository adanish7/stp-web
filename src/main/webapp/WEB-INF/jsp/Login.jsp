<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <title>Log in</title>
    <!--style start-->
    <link href="../../assets/system_design/css/bootstrap.css" rel="stylesheet">
    <link href="../../assets/system_design/css/style.css" rel="stylesheet">
    <link href="../../assets/system_design/css/animate.css" rel="stylesheet">
    <link href="../../assets/system_design/css/font-awesome.css" rel="stylesheet">
    <!--<link href="assets/system_design/css/jquery.bxslider.css" rel="stylesheet">
    <link href="assets/system_design/css/jquery.steps.css" rel="stylesheet">-->
    <!--<link href="assets/system_design/css/datepicker.css" rel="stylesheet">
    <link href="assets/system_design/css/side-menu.css" rel="stylesheet">
    <link href="assets/system_design/css/rs.css" rel="stylesheet">-->
    <!--<link href="assets/css/bootstrap.min.css" rel="stylesheet">-->
    <!--link href="assets/system_design/css/jquery-ui.css" rel="stylesheet"-->
    <!--fevicon icon-->
    <link rel="icon" type="image/png" href=""/>
    <!--fevicon icon end-->

</head>
<body>
<div class="top">
    <div class="container">
        <div class="col-md-6 pull-left">
            <div class="top-add"><i class="fa fa-phone"></i>  0900-78601 </div>
        </div>

    </div>
</div>
<section class="top_wrapper">
    <div class="container">
        <div class="header">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand">
                    <div class="logo">
                        <a href="#"><img src="../../assets/system_design/images/logo-index.png" width="140" height="100" style="padding-bottom:10px"></a>
                    </div>
                    <!--./logo-->
                </div>
            </div>
            <nav class="collapse navbar-collapse bs-navbar-collapse padding-0" role="navigation">
                <ul class="navbar-right">
                    <li><a href="#" class="btn btn-primary f-login"> <i class="fa fa-sign-in"></i> Login</a></li>
                    <li>
                        <a href="<%=request.getContextPath() %>/login" class="btn btn-default regi"> <i class="fa fa-file-text"></i> Register</a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
                            <li><a tabindex="-1" href="<%=request.getContextPath() %>/tutor/register"> <i class="fa fa-user"></i>As a Tutor</a></li>
                            <li><a tabindex="-1" href="<%=request.getContextPath() %>/student/register"> <i class="fa fa-user"></i> As a student</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
        <!--./header--->
    </div>
    <!--./container-->
</section>
<!--./top_wrapper-->

<!--bg-image-->
<div class="intro-header">
    <section class="single-page-section login_D">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 ">
                    <div class="login_Div">
                        <div class="sidebar_heading">
                            <h4>Login</h4>
                        </div>
                        <spring:form action="${pageContext.request.contextPath}/user/login" modelAttribute="user" accept-charset="utf-8" id="login_form" name="login_form">
                            <div style="display:none">
                                <input type="hidden" name="digi_turor_system" value="662d34aa24ae30f29628342d57a03174" />
                            </div>
                            <div class="form-group pull-down-20">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div style="float:left;"><label><i class="fa fa-envelope"></i> Email</label> <span style="color:red;">*</span></div>
                                        <spring:input path="email"/>
                                        <%--<spring:errors path="email" cssClass="error"></spring:errors>--%>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div style="float:left;"><label><i class="fa fa-key"></i> Password</label> <span style="color:red;">*</span></div>
                                        <spring:input path="password" type="password" name="password" value="" id="password" title=""  />
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <div style="float:right;">
                                    <spring:button type="submit" class="btn btn-primary right">Login</spring:button></div>
                            </div>

                        </spring:form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<section class="footer" style="background-color:#e5e5e5;">
    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12 padding-lr">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="footer_div">
                        <div class="footer_heading">
                            <h5>GET IN TOUCH</h5>
                        </div>
                        <!--./footer_heading-->
                        <ul>
                            <li>
                                <p><i class="fa fa-map-marker"></i><strong> Address </strong> 3-C Zafar Ali Road, Lahore</p>
                            </li>
                            <li>
                                <p><i class="fa fa-phone"></i><strong> Contact No </strong> 0900-78601</p>
                            </li>
                            <li>
                                <p><i class="fa fa-envelope"></i><strong> Email</strong> stp@gmail.com</p>
                            </li>
                        </ul>
                        <div class="footer_social_links">
                            <span><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></span>
                            <span><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></span>
                        </div>
                    </div>
                    <!--./footer_div-->
                </div>
                <!--./col-lg-3-->
                <div class="col-lg-3 col-md-3 col-sm-6" style="float:right;">
                    <div class="footer_div">
                        <div class="footer_heading">
                            <h5>QUICK LINKS</h5>
                        </div>
                        <!-- <div class="recent_post">-->
                        <ul>
                            <li>
                                <a href="#" target="_blank" style="text-decoration: none;">
                                    <p>About us</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" style="text-decoration: none;">
                                    <p>How It Works</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" style="text-decoration: none;">
                                    <p>FAQ's</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" target="_blank" style="text-decoration: none;">
                                    <p>Contact Us</p>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--./footer_div-->
        </div>
        <!--./col-lg-3-->
    </div>
    <!--./container-->
</section>
<!--./footer-->
<section class="bottom_footer">
    <div class="container">
        <div class="col-lg-7 col-md-7 col-sm-12 padding-lr">
            <div class="copyright-left">
                <p>© STP 2016. All rights reserved.</p>
            </div>
        </div>
        <div class="col-lg-5 col-md-5 col-sm-12 padding-lr">
            <div class="footer_menu">
                <p>Powered by:TeamSTP</p>
            </div>
        </div>
    </div>
</section>
</body>
</html>
