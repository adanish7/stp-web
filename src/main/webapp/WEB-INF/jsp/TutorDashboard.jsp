<%--
  Created by IntelliJ IDEA.
  User: Abdul Basit
  Date: 3/30/2016
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>Student Dashboard</title>
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

    <script type="text/javascript" src="../../assets/system_design/js/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            var count = "${sessionScope.get("counter")}"

            if(count == 0)
            {
                alert("You have successfully logged in!")
            }

        });
    </script>

</head>

    <%@ include file = "include/TutorHeader.jsp" %>

        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
            google.load("visualization", "1", {packages:["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {

                var data = google.visualization.arrayToDataTable([
                    ["User Type", "Total"],
                    ["Student",     10],
                    ["Tutors",      8]

                ]);

                var options = {
                    title: 'User Statistics',
                    is3D: true,
                    style: "height:394px; width:184px"
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                chart.draw(data, options);
            }
        </script>

        <!--Dashboard icons start-->
        <div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
            <div class="all-bg">
                <div class="av">
                    <ul>
                        <li class="green"><a title="" href="${pageContext.request.contextPath}/student/find"> <i class="fa fa-user"></i> Find Student </a> </li>
                        <li class="blue"><a title="" href="${pageContext.request.contextPath}/requirement/list"> <i class="fa fa-video-camera"></i> My Requirements </a> </li>
                        <li class="dark-orange"><a title="" href="${pageContext.request.contextPath}/watchlist/list"><i class="fa fa-question"></i> Watch List</a> </li>
                        <li class="orang"><a href="#"> <i class="fa fa-cogs"></i>Profile Settings</a> </li>
                    </ul>
                </div>
                <!--Dashboard icons end-->
                <div class="elements">
                    <div class="col-md-6">
                        <div class="panel pp">
                            <div class="panel-heading ele-hea"> Chart of My Requirements  <i class="fa fa-bar-chart-o fa-fw"></i> </div>
                            <div class="panel-body padding-0">
                                <div class="ele-body">
                                    <div id="piechart" style="width: 450px; height: 330px;"></div>
                                </div>
                            </div>
                        </div>
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
