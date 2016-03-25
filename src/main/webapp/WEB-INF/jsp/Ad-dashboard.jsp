<%--
  Created by IntelliJ IDEA.
  User: Abdul Basit
  Date: 3/23/2016
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
    <title>Admin Dashboard</title>
    <!--style start-->
    <link href="../../assets/system_design/css/bootstrap.css" rel="stylesheet">
    <link href="../../assets/system_design/css/style.css" rel="stylesheet">
    <link href="../../assets/system_design/css/animate.css" rel="stylesheet">
    <link href="../../assets/system_design/css/font-awesome.css" rel="stylesheet">
    <link href="../../assets/system_design/css/jquery.bxslider.css" rel="stylesheet">
    <link href="../../assets/system_design/css/jquery.steps.css" rel="stylesheet">
    <link href="../../assets/system_design/css/side-menu.css" rel="stylesheet">

</head>
<body class="bg-col">
<section class="top_wrapper">
    <div class="container-fluid">
        <div class="header admin-header">
            <div class="navbar-header">
                <div class="navbar-brand lg">
                    <div class="logo">
                        <a href="#"><img src="../../assets/system_design/images/logo-dark.png" width="100" height="30" > </a>
                    </div>
                    <!--./logo-->
                </div>
            </div>
            <!--<nav class="collapse navbar-collapse bs-navbar-collapse padding-0" role="navigation">-->
            <div class="navbar-right">
                <ul class="navbar-right login user_proile">
                    <li>
                        <a href="#"><img src="../../uploads/users/noimage.jpg" height="38" width="55"><p style="color:#FFF; float:right; font-size:15px;">Administrator</p></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a tabindex="-1" href="#"> <i class="fa fa-user"></i>My Profile</a></li>
                            <li><a tabindex="-1" href="#"> <i class="fa fa-cog"></i>Change Password</a></li>
                            <li><a tabindex="-1" href="#"> <i class="fa fa-power-off"></i>Log out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--</nav>-->
        </div>
    </div>
</section>
<section class="work_section tp">
    <div class="container-fluid">
        <div class="col-lg-2 col-md-2 col-sm-12 padding-lr">
            <div id='cssmenu'>
                <ul>
                    <!---dashboard-->
                    <li >
                        <a href="#">
                            <!--<i class="fa fa-file-movie-o"></i>--><i class="fa fa-soundcloud"></i>
                                             <span>
                                             Dashboard</span>
                        </a>
                    </li>
                    <!--dashboard End-->

                    <!---Users-->
                    <li class="has-sub">
                        <a href="#"><span> <i class="fa  fa-users"></i>  Users </span></a>
                        <ul class="bb">
                            <li><a href="#"><span>List Students</span></a></li>
                            <li><a href="#"><span>List Tutors</span></a></li>
                        </ul>
                    </li>
                    <!--Users End-->

                    <!---leads-->
                    <!--leads End-->

                    <!---Messages Settings-->
                    <li class="has-sub">
                        <a href="#"><span> <i class="fa  fa-envelope"></i>  Messages </span></a>
                        <ul class="bb">
                            <li><a href="#"><span>Tutor Messages (0)</span></a></li>
                            <li><a href="#"><span>Student Messages (0)</span></a></li>
                            <li><a href="#"><span>Sent (1)</span></a></li>
                        </ul>
                    </li>
                    <!--Messages End-->

                    <!---Subjects -->
                    <li class="has-sub">
                        <a href="#"><span><!--<i class="fa fa-newspaper-o"></i>--><i class="fa fa-clipboard"></i>Subjects</span></a>
                        <ul class="bb">
                            <li><a href="#"><span>List Subjects</span></a></li>
                            <li><a href="#"><span>Add Subject</span></a></li>
                            <li><a href="#"><span>Add Course</span></a></li>
                        </ul>
                    </li>
                    <!--Subjects End-->

                    <!---Locations-->
                    <li class="has-sub">
                        <a href="#"><span> <i class="fa fa-location-arrow"></i>
                            </i>  Cities </span></a>
                        <ul class="bb">
                            <li><a href="#"><span>List Cities</span></a></li>
                            <li><a href="#"><span>Add Cities</span></a></li>
                            <li><a href="#"><span>Add Areas</span></a></li>
                        </ul>
                    </li>

                    <!--<li class="has-sub open">
<a style="text-shadow: rgba(0, 0, 0, 0.34902) 0px 1px 1px;"><span style="border-color: rgba(0, 0, 0, 0.34902);"> <i class="fa fa-location-arrow"></i>
Locations </span><span class="holder" style="border-color: rgba(0, 0, 0, 0.34902);"></span></a>
<ul class="bb" style="overflow: hidden; display: block;">
<li><a href="http://mdev.digitalvidhya.com/dts/en/admin/locations"><span>List Locations</span></a></li>
<li><a href="http://mdev.digitalvidhya.com/dts/en/admin/addLocation/add"><span>Add Location</span></a></li>
<li><a href="http://mdev.digitalvidhya.com/dts/en/admin/add_edit_child_locations/add"><span>Add Sub Location</span></a></li>
<li><a href="http://mdev.digitalvidhya.com/dts/en/admin/uploadexcel/locations"><span>Excel Upload</span></a></li>
</ul>
</li>-->
                    <!--Locations End-->

                    <!---Packages-->

                    <!--Packages End-->

                    <!---Testimonials-->

                    <!--Testimonials End-->

                    <!---Page Settings-->

                    <!--Page Settings End-->

                    <!---Master Settings-->

                    <!--Master Settings End-->

                    <!---Reports-->
                    <li>
                        <a href="#">
                                             <span>
                                                <!-- <i class="fa  fa-video-camera"></i> --><i class="fa fa-th-list"></i>
                                                Reports
                                             </span>
                        </a>
                    </li>
                    <!--Reports End-->

                    <!--Change Password-->
                    <li>
                        <a href="#">
                                             <span>
                                                <!--<i class="fa fa-user"></i>-->
                                                <i class="fa fa-cog"></i>
                                                Change Password
                                             </span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                                             <span>
                                                <!--<i class="fa fa-users"></i>-->
                                                <i class="fa fa-power-off"></i>
                                                Logout
                                             </span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
            google.load("visualization", "1", {packages:["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {

                var data = google.visualization.arrayToDataTable([
                    ["User Type", "Total"],
                    ["Student",     10],
                    ["Tutors",      8],

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
                        <li class="orang"><a title="" href="#"><i class="fa fa-envelope"></i> Messages</a> </li>
                        <li class="blue"><a title="" href="#"> <i class="fa fa-book"></i> Subjects</a>  </li>
                        <li class="pink"><a title="" href="#"> <i class="fa fa-globe"></i> Locations</a> </li>
                        <li class="dark-orange"><a title="" href="#"><i class="fa fa-pie-chart"></i> Reports</a> </li>
                    </ul>
                </div>
                <!--Dashboard icons end-->
                <div class="elements">
                    <div class="col-md-6">
                        <div class="panel pp">
                            <div class="panel-heading ele-hea"> Pie Chart <i class="fa fa-pie-chart"></i> </div>
                            <div class="panel-body padding-0 ">
                                <div class="ele-body">
                                    <!--img src="http://mdev.digitalvidhya.com/dts/assets/system_design/images/chart.jpg" width="394" class="chart"-->
                                    <div id="piechart" style="width: 450px; height: 330px;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel pp">
                            <div class="panel-heading ele-hea">Recent Posts &nbsp;<i class="fa fa-envelope"></i> </div>
                            <div class="panel-body padding-0 ">
                                <div class="ele-body">
                                    <ul>
                                        <a href="#" target="_blank" title="View Details" >
                                            <li><img src="../../uploads/users/students/noimage.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="#" target="_blank" title="View Details" >
                                            <li>Need Chemistry Tutor at Location <strong>Sun Valley</strong></li> </a>
                                        <li> <span>11 Months ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="#" target="_blank" title="View Details" >
                                            <li><img src="../../uploads/users/students/noimage.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="#" target="_blank" title="View Details" >
                                            <li>Need Silk Tester at Location <strong>Delaware</strong></li> </a>
                                        <li> <span>11 Months ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="#" target="_blank" title="View Details" >
                                            <li><img src="../../uploads/users/students/noimage.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="#" target="_blank" title="View Details" >
                                            <li>Need .Net Tutor at Location <strong>Wheatley ste</strong></li> </a>
                                        <li> <span>1 Year ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="#" target="_blank" title="View Details" >
                                            <li><img src="../../uploads/users/students/noimage.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="#" target="_blank" title="View Details" >
                                            <li>Need Manual Testor at Location <strong>Violet Ave</strong></li> </a>
                                        <li> <span>1 Year ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="#" target="_blank" title="View Details" >
                                            <li><img src="../../uploads/users/students/noimage.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="#" target="_blank" title="View Details" >
                                            <li>Need Applied physics tutor at Location <strong>Delaware</strong></li> </a>
                                        <li> <span>1 Year ago</span> </li>
                                    </ul>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script type= "text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" ></script>
<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
<script src="../../assets/system_design/js/bootstrap.js"></script>
<script src="../../assets/system_design/js/jquery.bxslider.js"></script>
<script src="../../assets/system_design/js/jquery.steps.js"></script>
<script type="text/javascript" src="../../assets/system_design/js/custom.js"></script>
<script type="text/javascript" src="../../assets/system_design/js/bootstrap-datepicker.js"></script>
<script src="../../assets/system_design/js/sidemenu-script.js" type="text/javascript"></script>
<script src="../../assets/system_design/js/jquery.mixitup.min.js"></script>
<script>
    $(document).ready(function () {

    });

</script>
<script src="../../assets/system_design/js/BeatPicker.min.js"></script>
<link href="../../assets/system_design/css/uniform.default.css" rel="stylesheet" media="screen">
<link href="../../assets/system_design/css/chosen.min.css" rel="stylesheet" media="screen">
<script src="../../assets/system_design/js/jquery.uniform.min.js"></script>
<script src="../../assets/system_design/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="../../assets/system_design/js/jquery.validate.min.js"></script>
<script src="../../assets/system_design/js/form-validation.js"></script>
<script>
    jQuery(document).ready(function() {  FormValidation.init();
    });
    $(function() {

        $(".uniform_on").uniform();
        $(".chzn-select").chosen();


    });

</script>
<script type="text/javascript" language="javascript" src="../../assets/system_design/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" class="init">
    $(document).ready(function() {
        $('#example').dataTable();
        $('.example').dataTable();
    } );
</script>
</body>
</html>



