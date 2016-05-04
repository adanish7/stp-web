
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">
<!--[if IE 7]>
<html lang="en" class="ie7">
<![endif]-->
<!--[if IE 8]>
<html lang="en" class="ie8">
<![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9">
<![endif]-->
<!--[if (gt IE 9)|!(IE)]>
<html lang="en">
<![endif]-->
<!--[if !IE]>
<html lang="en">
<![endif]-->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <title>Update Profile</title>
    <!--style start-->
    <link href="../../assets/system_design/css/bootstrap.css" rel="stylesheet">
    <link href="../../assets/system_design/css/style.css" rel="stylesheet">
    <link href="../../assets/system_design/css/animate.css" rel="stylesheet">
    <link href="../../assets/system_design/css/font-awesome.css" rel="stylesheet">
    <link href="../../assets/system_design/css/jquery.bxslider.css" rel="stylesheet">
    <link href="../../assets/system_design/css/jquery.steps.css" rel="stylesheet">
    <link href="../../assets/system_design/css/side-menu.css" rel="stylesheet">
    <!--fevicon icon-->
    <link rel="icon" type="image/png" href=""/>
    <!--fevicon icon end-->
</head>

<%@ include file="include/AdminHeader.jsp" %>

    <div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
        <div class="body-content">

            <div class="col-md-6 padding-p-l">
                <div class="module">
                    <div class="module-head">
                        <h3> Update Profile </h3><br>
                    </div>
                    <div class="module-body">
                        <div id="infoMessage">
                        </div>
                        <cf:form action="${pageContext.request.contextPath}/user/profile/update" modelAttribute="user">
                            <cf:hidden path="userId" />
                            <div class="form-group">
                                <label>First Name</label><span style="color:red;">*</span>
                                <cf:input path="firstName" />
                                <cf:errors path="firstName" />
                                <br/>
                            </div>

                            <div class="form-group">
                                <label>Last Name</label><span style="color:red;">*</span>
                                <cf:input path="lastName" />
                            </div>

                            <div class="form-group">
                                <label>Email</label><span style="color:red;">*</span>
                                <cf:input path="email" disabled="true"/>
                            </div>

                            <div class="form-group">
                                <label>Password</label><span style="color:red;">*</span>
                                <cf:input type="password" path="password" />
                            </div>

                            <div class="form-group">
                                <label>Phone</label><span style="color:red;">*</span>
                                <cf:input path="phone" />
                            </div>

                            <div class="form-group">
                                <label>City</label><span style="color:red;">*</span>
                                <cf:select path="city" name="city" id="city">
                                    <option></option>
                                    <c:forEach items="${cities}" var="value">
                                        <option>
                                                ${value}
                                        </option>
                                    </c:forEach>
                                </cf:select>
                            </div>

                            <div class="form-group">
                                <div>
                                    <button type="submit" style="height: 40px; width: 150px;" class="add-new">Update Profile</button>
                                </div>
                            </div>

                        </cf:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--./footer-->

<%@ include file="include/Footer.jsp" %>

<!--./bottom_footer-->
<!--script start-->
<script type= "text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" ></script>
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script src="../../assets/system_design/js/bootstrap.js"></script>
<script src="../../assets/system_design/js/jquery.bxslider.js"></script>
<script src="../../assets/system_design/js/jquery.steps.js"></script>
<script type="text/javascript" src="../../assets/system_design/js/custom.js"></script>
<script type="text/javascript" src="../../assets/system_design/js/bootstrap-datepicker.js"></script>
<script src="../../assets/system_design/js/sidemenu-script.js" type="text/javascript"></script>
<script src="../../assets/system_design/js/jquery.mixitup.min.js"></script>
<!--./script end-->
</body>
</html>