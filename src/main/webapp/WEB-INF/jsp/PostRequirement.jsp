
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cf" uri="http://www.springframework.org/tags/form" %>

<div lang="en">
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
    <title>Post Requirement</title>
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

    <script>

        function getCourses()
        {
            var subject=$("#subject").val();


            var url = '/requirement/show?subject=' + subject;

            $.get(url, function(content) {
                $("#courseList").html(content);
            }).fail(function() {
                alert("Something Went Wrong, Try Again!")
            });

                /*$.ajax({
                    type:'GET',
                    url:'/requirement/show',
                    /!*data:{subjectName:subject},*!/
                    success:function(data){
                        $('#courseList').val(data);//this is the field id of second drop down value should display here...but is show empty...
                        alert(data);//here also i am getting the alertbox in jsp
                    },
                    error:function(xmlHttpRequest, textStatus, errorThrown){
                        if(xmlHttpRequest.readyState=0 || xmlHttpRequest.status == 0)
                            return;
                    }
                });*/

        }

    </script>

</head>

<%--Header File--%>

<%@ include file="include/StudentHeader.jsp" %>

        <!--Right alignment main menu icons start -->
        <div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
            <div class="body-content">
                <div class="admin-body">
                    <br class="inner-elements">

                        <h4 style="margin-left: 15px; font-weight: bold">Post a Requirement</h4><br><br>

                        <cf:form action="${pageContext.request.contextPath}/requirement/save" modelAttribute="requirement"><div style="display:none">
                            <input type="hidden" name="digi_turor_system" value="c699c2cc1d6c664d734a5cf887461889" />
                        </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Type of Tutor</label><span style="color:red;">*</span>
                                    <cf:select path="tutorType">
                                        <option value="" selected="selected">Select Tutor Type</option>
                                        <c:forEach items="${tutorType}" var="value">
                                            <option>
                                                    ${value}
                                            </option>
                                        </c:forEach>
                                    </cf:select>
                                </div>
                                <div class="form-group">
                                    <label>Subject</label><span style="color:red;">*</span>
                                    <cf:select path="subject" id="subject" name="subject" onchange="getCourses()">
                                        <option value="" selected="selected" >Select Subject</option>
                                        <c:forEach items="${subjects}" var="name">
                                            <option>
                                                ${name.subjectName}
                                            </option>
                                        </c:forEach>
                                    </cf:select>
                                </div>
                                <div class="form-group">
                                    <label>Course</label><span style="color:red;">*</span>


                                    <cf:select path="course" id="courseList">
                                    <option value="" selected="selected">Select Course First.</option>

                                        <%--<c:forEach items="${subjectList}" var="subjectList" varStatus="counter">--%>
                                            <option> ${subjectList.subject} </option>
                                        <%--</c:forEach>--%>

                                    </cf:select>

                                </div>
                                <div class="form-group">
                                    <label>Duration Needed</label><span style="color:red;">*</span>
                                    <cf:select path="duration">
                                        <option value=""></option>
                                        <c:forEach items="${duration}" var="value">
                                        <option>
                                                ${value}
                                        </option>
                                        </c:forEach>
                                    </cf:select>
                                </div>

                                <div class="form-group">
                                    <label>Priority of Requirement</label><span style="color:red;">*</span>
                                    <cf:select path="priority">
                                        <option value=""></option>
                                        <c:forEach items="${priority}" var="value">
                                        <option>
                                                ${value}
                                        </option>
                                        </c:forEach>
                                    </cf:select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Title of Your Requirement</label><span style="color:red;">*</span>
                                    <cf:input path="title" placeholder="e.g., Need .net tutor"  />                                 </div>
                                <div class="form-group">
                                    <label>Requirement Details</label><span style="color:red;">*</span>
                                    <cf:textarea path="requirementDetails" cols="40" rows="10"></cf:textarea>                                 </div>
                                <div class="form-group">
                                    <label>Budget</label><span style="color:red;">*</span>
                                    <cf:input path="budget"  />
                                </div>
                                <div class="form-group">
                                    <label>Budget Type</label><span style="color:red;">*</span>
                                    <cf:select path="budgetType" name="budgetType" id="budgetType">
                                        <option></option>
                                        <c:forEach items="${budgetType}" var="value">
                                            <option>
                                                    ${value}
                                            </option>
                                        </c:forEach>
                                    </cf:select>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div style="float:right;"><button type="submit" style="height: 40px; width: 100px;" class="btn btn-primary">Post</button></div>
                                    </div>
                                </div>
                            </div>
                        </cf:form>
                    </div>
                </div>
            </div>

    </div>

</section>

<!--./footer-->
<%@ include file="include/Footer.jsp" %>

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
<script src="../../assets/system_design/js/main.js"></script>

<!--./script end-->
</body>
</html>
