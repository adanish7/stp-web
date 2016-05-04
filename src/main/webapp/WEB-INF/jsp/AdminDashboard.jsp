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

    <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function () {

            alert("You have successfully logged in!");

        });
    </script>

</head>

<%@ include file="include/AdminHeader.jsp" %>

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
                                        <a href="http://mdev.digitalvidhya.com/dts/en/welcome/studentProfile/29" target="_blank" title="View Details" >
                                            <li><img src="http://mdev.digitalvidhya.com/dts/uploads/users/students/student_29.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="http://mdev.digitalvidhya.com/dts/en/admin/lead_details/13" target="_blank" title="View Details" >
                                            <li>Need Chemistry Tutor at Location <strong>Sun Valley</strong></li>
                                        </a>
                                        <li> <span>11 Months ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="http://mdev.digitalvidhya.com/dts/en/welcome/studentProfile/29" target="_blank" title="View Details" >
                                            <li><img src="http://mdev.digitalvidhya.com/dts/uploads/users/students/student_29.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="http://mdev.digitalvidhya.com/dts/en/admin/lead_details/13" target="_blank" title="View Details" >
                                            <li>Need Chemistry Tutor at Location <strong>Sun Valley</strong></li>
                                        </a>
                                        <li> <span>11 Months ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="http://mdev.digitalvidhya.com/dts/en/welcome/studentProfile/29" target="_blank" title="View Details" >
                                            <li><img src="http://mdev.digitalvidhya.com/dts/uploads/users/students/student_29.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="http://mdev.digitalvidhya.com/dts/en/admin/lead_details/13" target="_blank" title="View Details" >
                                            <li>Need Chemistry Tutor at Location <strong>Sun Valley</strong></li>
                                        </a>
                                        <li> <span>11 Months ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="http://mdev.digitalvidhya.com/dts/en/welcome/studentProfile/29" target="_blank" title="View Details" >
                                            <li><img src="http://mdev.digitalvidhya.com/dts/uploads/users/students/student_29.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="http://mdev.digitalvidhya.com/dts/en/admin/lead_details/13" target="_blank" title="View Details" >
                                            <li>Need Chemistry Tutor at Location <strong>Sun Valley</strong></li>
                                        </a>
                                        <li> <span>11 Months ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="http://mdev.digitalvidhya.com/dts/en/welcome/studentProfile/29" target="_blank" title="View Details" >
                                            <li><img src="http://mdev.digitalvidhya.com/dts/uploads/users/students/student_29.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="http://mdev.digitalvidhya.com/dts/en/admin/lead_details/13" target="_blank" title="View Details" >
                                            <li>Need Chemistry Tutor at Location <strong>Sun Valley</strong></li>
                                        </a>
                                        <li> <span>11 Months ago</span> </li>
                                    </ul>
                                    <ul>
                                        <a href="http://mdev.digitalvidhya.com/dts/en/welcome/studentProfile/29" target="_blank" title="View Details" >
                                            <li><img src="http://mdev.digitalvidhya.com/dts/uploads/users/students/student_29.jpg" height="39" width="39"></li>
                                        </a>

                                        <a href="http://mdev.digitalvidhya.com/dts/en/admin/lead_details/13" target="_blank" title="View Details" >
                                            <li>Need Chemistry Tutor at Location <strong>Sun Valley</strong></li>
                                        </a>
                                        <li> <span>11 Months ago</span> </li>
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
<!--/footer-->
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



