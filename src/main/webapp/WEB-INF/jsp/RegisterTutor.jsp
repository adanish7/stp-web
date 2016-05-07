<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <title>Register Tutor</title>
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
                    <li><a href="<%=request.getContextPath() %>/login" class="btn btn-primary f-login"> <i class="fa fa-sign-in"></i> Login</a></li>
                    <li>
                        <a href="#" class="btn btn-default regi"> <i class="fa fa-file-text"></i> Register</a>
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
<div class="intro-header" style="height: 150px; width: auto">
    <section class="single-page-section login_D" style="height: auto;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 ">
                    <div class="login_Div reigi">
                        <div class="sidebar_heading">
                            <h4>Tutor Registration</h4>
                        </div>
                        <spring:form action="${pageContext.request.contextPath}/user/register/tutor" modelAttribute="user" accept-charset="utf-8" id="registration_form" name="registration_form">
                            <div style="display:none">
                                <input type="hidden" name="digi_turor_system" value="2c4694f6a6edc5a9adae39e3707fbeec" />
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div style="float:left;"><label><i class="fa fa-user"></i> First Name</label> <span style="color:red;">*</span></div>
                                    <spring:input path="firstName" type="text" name="first_name" value="" id="first_name" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><i class="fa fa-user"></i> Last Name</label> <span style="color:red;">*</span></div>
                                    <spring:input path="lastName" type="text" name="last_name" value="" id="last_name" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><i class="fa fa-envelope"></i> Email</label> <span style="color:red;">*</span></div>
                                    <spring:input path="email" type="text" name="email" value="" id="email" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><%--<i class="fa fa-envelope"></i>--%> Qualification </label> <span style="color:red;">*</span></div>
                                    <spring:input path="tutorQualification" type="text" name="tutorQualification" value="" id="tutorQualification" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><%--<i class="fa fa-envelope"></i>--%> Teaching Subject </label> <span style="color:red;">*</span></div>
                                    <spring:input path="subject" type="text" name="subject" value="" id="subject" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><%--<i class="fa fa-envelope"></i>--%> Type of Tutoring </label> <span style="color:red;">*</span></div>
                                    <spring:select path="tutorType" type="text" name="tutorType" value="" id="tutorType" required="required">

                                        <spring:option value="Home">Home</spring:option>
                                        <spring:option value="Online">Online</spring:option>

                                    </spring:select>
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><%--<i class="fa fa-envelope"></i>--%> City </label> <span style="color:red;">*</span></div>
                                    <spring:select path="city" name="city" value="" id="city" required="required">

                                        <spring:option value="Lahore">Lahore</spring:option>
                                        <spring:option value="Lahore">Islamabad</spring:option>
                                        <spring:option value="Lahore">Multan</spring:option>
                                        <spring:option value="Lahore">Karachi</spring:option>
                                        <spring:option value="Lahore">Quetta</spring:option>
                                        <spring:option value="Lahore">Peshawar</spring:option>
                                        <spring:option value="Lahore">AJK</spring:option>

                                    </spring:select>
                                </div>

                            </div>

                            <div class="col-md-6">

                                <div class="form-group">
                                    <div style="float:left;"><label><%--<i class="fa fa-envelope"></i>--%> Experience </label> <span style="color:red;">*</span></div>
                                    <spring:select path="tutorExperience" name="tutorExperience" id="tutorExperience" required="required">
                                        <spring:option value="1 - 2 Years">1 - 2 Years</spring:option>
                                        <spring:option value="2 - 3 Years">2 - 3 Years</spring:option>
                                        <spring:option value="3 - 5 Years">3 - 5 Years</spring:option>
                                        <spring:option value="> 5 Years"> > 5 Years</spring:option>
                                    </spring:select>

                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><i class="fa fa-key"></i> Password</label> <span style="color:red;">*</span></div>
                                    <spring:input path="password" type="password" name="password" id="password" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><i class="fa fa-key"></i> Confirm Password</label> <span style="color:red;">*</span></div>
                                    <input path="" type="password" id="password_confirm" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><i class="fa fa-phone"></i> Phone</label> <span style="color:red;">*</span></div>
                                    <spring:input path="phone" type="text" name="phone" value="" id="phone" maxlength="11" required="required" />
                                </div>

                                <div class="form-group">
                                    <div style="float:left;"><label><%--<i class="fa fa-phone"></i>--%> Gender </label> <span style="color:red;">*</span></div>
                                    <spring:select path="gender" name="gender" value="" id="gender" >
                                            <spring:option value="Male"> Male </spring:option>
                                            <spring:option value="Female"> Female </spring:option>
                                    </spring:select>
                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div style="float:right;"><button type="submit" class="btn btn-primary">Register</button></div>
                                </div>
                            </div>

                        </spring:form>
                    </div>

                </div><!--./col-lg-12-->
            </div><!--./row-->
        </div><!--./container-->
    </section><!--./single-page-section-->
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
                <p>Powered by: Team STP</p>
            </div>
        </div>
    </div>
</section>
</body>
</html>
