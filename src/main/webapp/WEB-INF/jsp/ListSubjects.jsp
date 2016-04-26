
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
    <title>List Students</title>
    <!--style start-->
    <link href="../../assets/system_design/css/bootstrap.css" rel="stylesheet">
    <link href="../../assets/system_design/css/style.css" rel="stylesheet">
    <link href="../../assets/system_design/css/animate.css" rel="stylesheet">
    <link href="../../assets/system_design/css/font-awesome.css" rel="stylesheet">
    <link href="../../assets/system_design/css/jquery.bxslider.css" rel="stylesheet">
    <link href="../../assets/system_design/css/jquery.steps.css" rel="stylesheet">
    <link href="../../assets/system_design/css/side-menu.css" rel="stylesheet">

    <%--<link href="../../assets/system_design/mybootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="../../assets/system_design/mybootstrap/css/bootstrap-theme.css" rel="stylesheet">
    <link href="../../assets/system_design/mybootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/system_design/mybootstrap/css/bootstrap-theme.min.css" rel="stylesheet">--%>
    <!--fevicon icon-->
    <link rel="icon" type="image/png" href=""/>
    <!--fevicon icon end-->
</head>
<body class="bg-col">
<!-- Modal for contacting Admin -->
<div class="modal fade" id="studentToAdmin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content my-popup">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                    <span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">Contact Admin</h4>
            </div>
            <div class="modal-body">
                <form action="#" method="post" accept-charset="utf-8">
                    <div style="display:none">
                        <input type="hidden" name="digi_turor_system" value="b56380fdbde1679e2553e9a9cb2d4fc9" />
                    </div>
                    <div class="form-group">
                        <textarea rows="2" cols="40" name="message" required placeholder="Enter your message"></textarea>
                    </div>
                    <input type="hidden" name="tutor" value="1">
                    <input type="hidden" name="redirect_path" value="student/messages/sent">
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
<section class="top_wrapper">
    <div class="container-fluid">
        <div class="header admin-header">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand lg">
                    <div class="logo">
                        <a href="http://mdev.digitalvidhya.com/dts/en"> <img src="../../assets/system_design/images/logo-dark.png" width="100" height="30" >  </a>			                                     	</div>
                    <!--./logo-->
                </div>
            </div>
            <nav class="collapse navbar-collapse bs-navbar-collapse padding-0" role="navigation">
                <div class="navbar-right">
                    <ul class="navbar-right login user_proile">
                        <li>
                            <a href="#">
                                <img src="../../uploads/users/noimage.jpg" height="38" width="55"><p style="color:#FFF; float:right; font-size:15px;">Administrator</p>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a tabindex="-1" href="#"> <i class="fa fa-user"></i>My Profile</a></li>
                                <li><a tabindex="-1" href="#"> <i class="fa fa-cog"></i>Change Password</a></li>
                                <li><a tabindex="-1" href="#"> <i class="fa fa-power-off"></i>Log out</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="dropdown admin-drop navbar-right">
                    <ul class="message_ul ">
                        <li>
                            <a data-toggle="modal" data-target="#studentToAdmin" class="sma" style="text-decoration:none;"><i class="fa"></i> Contact Admin </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="round_div" data-toggle="dropdown"><i class="fa fa-envelope"></i><span class="badge bg-success"> 0</span></a>
                            <ul class="dropdown-menu extended tasks-bar">
                                <li>
                                    <p class="">You have <b>0</b> unread messages</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</section>
<section class="work_section tp">
            <div class="container-fluid"><div class="col-lg-2 col-md-2 col-sm-12 padding-lr">
                <div id='cssmenu'>
                    <ul>
                        <li class="active">
                            <a href="#"><span> <i class="fa fa-soundcloud"></i> Dashboard</span></a>
                        </li>
                        <li>
                            <a href="#" target="_blank"><span> <i class="fa fa-life-ring"></i>Find Tutor</span></a>
                        </li>
                        <!-- My Requirements --->
                        <li class="has-sub">
                            <a href="#"><span> <i class="fa fa-tree"></i>My Requirements </span></a>
                            <ul class="bb">
                                <li><a href="#"><span>List</span></a></li>
                                <li><a href="#"><span>Post a Requirement</span></a></li>
                            </ul>
                        </li>
                        <!---Messages Settings-->
                        <li class="has-sub">
                            <a href="#"><span> <i class="fa  fa-envelope"></i>  Messages </span></a>
                            <ul class="bb">
                                <li><a href="#"><span>Unread (0)</span></a></li>
                                <li><a href="#"><span>Inbox (0)</span></a></li>
                                <li><a href="#"><span>Sent (5)</span></a></li>
                            </ul>
                        </li>
                        <!--Messages End-->

                        <!---Watch List-->
                        <li class="has-sub">
                            <a href="#"><span><i class="fa fa-indent"></i>Watch List </span></a>
                            <ul class="bb">
                                <li><a href="#" ><span>My Tutors</span></a></li>
                            </ul>
                        </li>
                        <!--Wacth List End-->
                        <!---Profile Settings-->
                        <li class="has-sub">
                            <a href="#"><span> <i class="fa  fa-spinner"></i>Profile Settings</span></a>
                            <ul class="bb">
                                <li><a href="#"><span>Edit Profile</span></a></li>
                                <li><a href="#"><span>Change Password</span></a></li>
                            </ul>
                        </li>
                        <!--Profile Settings End-->
                        <!---Reports-->

                        <!--Logout-->
                        <li>
                            <a href="#"><span> <i class="fa fa-power-off"></i>  Logout</span></a>
                        </li>
                        <!--Logout Ends-->
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-10 padding-0">
            <div class="brade">
                <a href="${pageContext.request.contextPath}/admindashboard">Home</a>
                > Subjects > List Subjects
            </div>
        </div>

        <div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
            <div class="body-content">
                <div class="main-hed">

                    <div class="module-head">
                        <h3 style="margin-left: 20px; font-weight: bold"> List of Students </h3><br>
                    </div>

                    <div class="col-md-12"><br>

                        <button type="submit" style="color: white; font-weight: bold" class="add-new"><a href="${pageContext.request.contextPath}/subject/add"><p style="color: white; margin-bottom: 0px">Add Subject</p></a></button>
                            <div style="margin-bottom: 50px">

                            </div>

                            <%--<div class="table-responsive" >--%>

                        <table width="100%" id="example" class="table table-bordered" cellspacing="0" style="font-size: 14px ; margin-left: 10px; text-align: center; border: 1px solid black;">

                                <tr style="background-color: white; color: black; border: 1px solid black; text-align: center">
                                    <th style="text-align: center">Sr.</th>
                                    <th style="text-align: center">Code</th>
                                    <th style="text-align: center">Title</th>
                                    <th style="text-align: center">Status</th>
                                    <th style="text-align: center">Actions</th>
                                </tr>

                                <div id="subjectArea">



                                </div>

                            </table>


                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content my-popup">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Delete</h4>
                </div>
                <div class="modal-body">  Are You Sure to Delete? </div>
                <div class="modal-footer">
                    <a type="button" class="btn btn-success" id="delete_no" href="">Yes</a>  <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                </div>
            </div>
        </div>

    </div>

    <script>
        function changeDeleteId(x) {

            var str = "${pageContext.request.contextPath}/subject/delete/" + x;
            $("#delete_no").attr("href",str);
        }
    </script>


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
                <a href="#" target="_blank" style="text-decoration: none;">
                    <p>Powered by: Team STP</p>
                </a>
            </div>
        </div>
    </div>
</section>
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

<script src="../../assets/system_design/js/main.js"></script>

<%--<script src="../../assets/system_design/js/jquery.min.js"></script>--%>
<%--<script src="../../assets/system_design/js/jqu--%>

<script type="text/javascript">
    $(document).ready(function () {
        console.log("Calling listSubjects()");
        listSubjects();
    });
</script>

<!--./script end-->
</body>
</html>

