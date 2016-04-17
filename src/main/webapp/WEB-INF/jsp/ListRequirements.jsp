
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
    <title>List Requirements</title>
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
    <div class="container-fluid">
        <div class="col-lg-2 col-md-2 col-sm-12 padding-lr">
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
                        <li><a href="${pageContext.request.contextPath}/requirement/list"><span>List</span></a></li>
                        <li><a href="${pageContext.request.contextPath}/requirement/post"><span>Post a Requirement</span></a></li>
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

                            <style>
                                .flt-right {
                                    float: right;
                                }
                            </style>
                            <div class="col-md-10 padding-0">
                                <div class="brade">
                                    <a href="${pageContext.request.contextPath}/studentdashboard" style="text-decoration:none;">Home</a>
                                    > My Requirements > List   </div>
                            </div>
                            <div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
                                <div class="body-content">
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <a href="${pageContext.request.contextPath}/requirement/post" class="add-new flt-right"><b>Post a Requirement</b></a>
                                        <c:forEach items="${requirements}" var="requirements" varStatus="counter">

                                        <ul class="list my_list new-list">
                                            <li class="my_requirements_list">
                                                <div class="closed" id="11" style='display:block;'></div>
                                                <div class="list-left list-con" id="div_11" style='opacity:0.4;'>
                                                    <div class="col-md-8 padding-l">
                                                        <span class="title">
                                                            <p> <strong> ${requirements.title} </strong> </p>
                                                        </span>
                                                        <p> ${requirements.requirementDetails}  </p>
                                                        <p>  Frederick Ave, Kensington  </p>
                                                        <p> <i class="fa fa-calendar"></i> Posted On:  &nbsp; 1 Year ago  </p>
                                                    </div>
                                                    <div class="col-md-4 padding-1">
                                                        </br> </br>
                                                        <p style="color: black"><i class="fa fa-clock-o"></i>
                                                            Duration Needed: &nbsp; ${requirements.duration}
                                                        </p>
                                                        <p><i class="fa fa-usd"></i>
                                                            Budget: &nbsp; ${requirements.budget}   </p>
                                                        <p><i class="fa fa-align-center"></i>
                                                            Budget Type: &nbsp; ${requirements.budgetType}
                                                        </p>
                                                    </div>
                                                </div>

                                                <div class="list-right last-box">
                                      <span class="checkbox tutor-check pa-ch">
                                      <input type="checkbox" id="checkboxInput_11" class="is_tutor_found" onclick="performAction(this.id)" name="status" checked>
                                      <label for="checkboxInput_11"></label>
                                      </span>
                                                    <p>Found Tutor</p>
                                                </div>
                                            </li>
                                            </ul>
                                        </c:forEach>
                                        </div>
                                    </div>
                                </div>


        <script>
            $(document).ready(function () {
                tot_records = 4;
                size_li = $(".my_requirements_list").size();
                x=4;
                $('#showLess').hide();
                $('.my_requirements_list').not(':lt('+(size_li-(size_li-x))+')').hide();
                $('#loadMore').click(function () {
                    x= (x+6 <= size_li) ? x+6 : size_li;
                    $('.my_requirements_list:lt('+x+')').slideDown();
                    if(tot_records == $('.my_requirements_list:visible').size()) {

                        $('#loadMore').hide();
                        $('#showLess').show();
                    }
                });
                $('#showLess').click(function () {

                    $('.my_requirements_list').not(':lt('+4+')').slideUp();
                    $('#showLess').hide();
                    $('#loadMore').show();
                });
            });

            function performAction(id)
            {
                var closeid = id.split('_')[1];
                var status = "";
                if($('#'+id).is(':checked')) {
                    $('#'+closeid).fadeIn();
                    $('#div_'+closeid).attr('style','opacity:0.4');
                    status = "Closed";
                }
                else {
                    $('#'+closeid).fadeOut();
                    $('#div_'+closeid).attr('style','opacity:1');
                    status = "";
                }

                $.ajax({
                    type: "post",
                    async: false,
                    url: "http://mdev.digitalvidhya.com/dts/en/student/changeStudentLeadStatus",
                    data: { status:status, lead_id:closeid, "digi_turor_system":"8f605e10c031ce4f7eb84780a7182c38"}, //Need to check about this id
                    success: function(data) {

                    },
                    error: function(){
                        alert('Ajax Error');
                    }
                });

            }

        </script>


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
                <a href="http://www.digitalvidhya.com" target="_blank" style="text-decoration: none;">
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
<!--./script end-->
</body>
</html>
