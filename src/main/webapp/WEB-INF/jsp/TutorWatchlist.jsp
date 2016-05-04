
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
    <title>Watch List</title>
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


        <style>
            .remove_from_watchlist {
                border-radius: 25px;
                color: #fff;
                float: right;
                font-weight: bold;
                line-height: 20px;
                opacity: 0.8;
                padding: 10px;
                position: relative;
                right: 0;
                left: 15px;
                text-shadow: 0 1px 0 #ffffff;
                top: -20px;
                z-index: 0;
                background: none repeat scroll 0 0 #1e1e1e;
                border: 0 none;
                cursor: pointer;
            }
            .tutorz_list {
                line-height: 0;
                width: 47% !important;
            }
        </style>
        <div class="col-md-10 padding-0">
            <div class="brade">
                <a href="${pageContext.request.contextPath}/studentdashboard" style="text-decoration:none;">Home</a>
                > Watch List > My Tutors   </div>
        </div>
        <div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
            <div class="body-content">
                <div class="search_content sc">
                    <ul>

                        <c:forEach items="tutorWatchlist" var="tutorWatchlist">

                        <li class="tutorz_list">
                            <a href="#" class="remove_from_watchlist" title="Remove From Watch List" onclick="removeTutorFromWatchlist(${tutorWatchlist.id})">x</a>
                            <div class="search_result_header">
                                <div class="company_img">
                                    <a href="#"><img height="80" width="80" src="../../images/no-image.png"></a>
                                </div>
                                <div class="job_title smt">
                                    <h3> <a target="_blank" href="http://mdev.digitalvidhya.com/dts/en/welcome/tutorProfile/32">${tutorWatchlist.User.firstName} &nbsp; ${tutorWatchlist.User.lastName} </a></h3>
                                    <span class="job_detail smt1"><i class="fa fa-user"></i> <strong>Gender</strong>&nbsp;  Male</span>
                                    <span class="job_detail smt1"><i class="fa fa-line-chart"></i><strong>Experience</strong>&nbsp;  5</span>
                     <span class="job_detail smt1"><i class="fa fa-graduation-cap"></i> <strong>
                         Qualification</strong>&nbsp;  M.Tech					 </span>
                                </div>
                            </div>
                            <div class="search_result_content">
                                <div class="dl-horizontal">
                                    <div class="col-md-6">
                                        <ul>
                                            <li> <i class="fa fa-map-marker fa-1x"></i> <strong> Area</strong> &nbsp; Old north road, Camden </li>
                                            <li> <i class="fa fa-phone"></i><strong>  Phone </strong>  &nbsp;
                                                9995566633
                                            </li>
                                            <li>  <i class="fa fa-building"></i> <strong> Teaches</strong>  &nbsp; Aptitude.</li>
                                        </ul>
                                    </div>

                                    <div class="col-md-12 padding-0">
                                        <div class="bottom-list my-tu-list">
                                            <ul>
                                                <li> <a data-toggle='modal' data-target='#myModal3' onclick="assignVal(32)" id="reqmodal_32"> <i class="fa fa-phone"> </i> Request a Callback </a> </li>
                                                <li><a data-toggle='modal' data-target='#myModal4' onclick="assignVal(32)" id="msgmodal_32"><i class="fa fa-envelope"> </i>
                                                    Send a Message
                                                </a>&nbsp;
                                                </li>
                                                <li> <a target="_blank" href="http://mdev.digitalvidhya.com/dts/en/welcome/tutorProfile/32" class="view_more"> <i class="fa fa-long-arrow-right"></i> VIEW MORE  </a>  </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>

                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>
        <!-- Modal4 -->
        <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content my-popup">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Send Message</h4>
                    </div>
                    <div class="modal-body">
                        <form action="http://mdev.digitalvidhya.com/dts/en/student/sendMessage" method="post" accept-charset="utf-8"><div style="display:none">
                            <input type="hidden" name="digi_turor_system" value="8d5a40f92ef66b4819a27a70b661263f" />
                        </div>            <div class="form-group">
                            <textarea rows="2" cols="40" name="message" required placeholder="Enter your message"></textarea>
                        </div>
                            <input type="hidden" name="tutor" >
                            <input type="hidden" name="redirect_path" value="student/myTutors">
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal3 -->
        <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content my-popup">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                            <span class="sr-only">close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Request Call Back</h4>
                    </div>
                    <div class="modal-body">
                        <form action="http://mdev.digitalvidhya.com/dts/en/student/sendMessage" method="post" accept-charset="utf-8"><div style="display:none">
                            <input type="hidden" name="digi_turor_system" value="8d5a40f92ef66b4819a27a70b661263f" />
                        </div>            <div class="form-group">
                            <textarea rows="2" cols="40" name="message" required placeholder="Enter your message"></textarea>
                        </div>
                            <input type="hidden" name="tutor" >
                            <input type="hidden" name="msg_type" value="Call back request">
                            <input type="hidden" name="redirect_path" value="student/myTutors">
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal2 -->
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content my-popup">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Send Message</h4>
                    </div>
                    <div class="modal-body">
                        <form action="http://mdev.digitalvidhya.com/dts/en/student/sendMessage" method="post" accept-charset="utf-8"><div style="display:none">
                            <input type="hidden" name="digi_turor_system" value="8d5a40f92ef66b4819a27a70b661263f" />
                        </div>                        <div class="form-group">
                            <textarea rows="2" cols="40" name="message" required placeholder="Enter your message"></textarea>
                        </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="name" placeholder="Name">
                                </div>
                                <div class="form-group">
                                    <select name="parent_location_id" class = "chzn-select" onchange="getChildRecords(this.value, 'locations')">
                                        <option value="" selected="selected">Select Location</option>
                                        <option value="1">Kensington</option>
                                        <option value="3">Polymouth</option>
                                        <option value="8">Camden</option>
                                        <option value="10">Oxford</option>
                                        <option value="11">Berwick</option>
                                        <option value="12">Bristol</option>
                                        <option value="39">Sussex</option>
                                        <option value="48">Hyde Park</option>
                                        <option value="50">Houston</option>
                                    </select>               </div>
                                <div class="form-group">
                                    <input type="text" name="phone" maxlength="11" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="email" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <select name="location_id" class = "chzn-select" id="location_id">
                                        <option value="" selected="selected">Select Location First.</option>
                                    </select>               </div>
                            </div>
                            <input type="hidden" name="tutor" >
                            <input type="hidden" name="redirect_path" value="student/myTutors">
                            <button type="submit" class="btn btn-default flt-rght">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal1 -->
        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content my-popup">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Request Call Back</h4>
                    </div>
                    <div class="modal-body">
                        <form action="http://mdev.digitalvidhya.com/dts/en/student/sendMessage" method="post" accept-charset="utf-8"><div style="display:none">
                            <input type="hidden" name="digi_turor_system" value="8d5a40f92ef66b4819a27a70b661263f" />
                        </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="name" placeholder="Name">
                                </div>
                                <div class="form-group">
                                    <select name="parent_location_id" class = "chzn-select" onchange="getChildRecords(this.value, 'locations')">
                                        <option value="" selected="selected">Select Location</option>
                                        <option value="1">Kensington</option>
                                        <option value="3">Polymouth</option>
                                        <option value="8">Camden</option>
                                        <option value="10">Oxford</option>
                                        <option value="11">Berwick</option>
                                        <option value="12">Bristol</option>
                                        <option value="39">Sussex</option>
                                        <option value="48">Hyde Park</option>
                                        <option value="50">Houston</option>
                                    </select>               </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="phone" maxlength="11" placeholder="Phone">
                                </div>
                                <div class="form-group">
                                    <select name="location_id" class = "chzn-select" id="location_id1">
                                        <option value="" selected="selected">Select Location First.</option>
                                    </select>               </div>
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <textarea rows="2" cols="40" name="message" required placeholder="Enter your message"></textarea>
                            </div>
                            <input type="hidden" name="tutor" >
                            <input type="hidden" name="msg_type" value="Call back request">
                            <input type="hidden" name="redirect_path" value="student/myTutors">
                            <button type="submit" class="btn btn-default flt-rght">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="http://mdev.digitalvidhya.com/dts/assets/system_design/js/jquery.min.js"></script>
        <link href="http://mdev.digitalvidhya.com/dts/assets/system_design/css/jquery.raty.css" rel="stylesheet" media="screen">
        <script src="http://mdev.digitalvidhya.com/dts/assets/system_design/js/jquery.raty.js"></script>
        <script>
            $(document).ready(function () {
                tot_records = 1;
                size_li = $(".tutorz_list").size();
                x=4;
                $('#showLess').hide();
                $('.tutorz_list').not(':lt('+(size_li-(size_li-x))+')').hide();
                $('#loadMore').click(function () {
                    x= (x+6 <= size_li) ? x+6 : size_li;
                    $('.tutorz_list:lt('+x+')').slideDown();
                    if(tot_records == $('.tutorz_list:visible').size()) {

                        $('#loadMore').hide();
                        $('#showLess').show();
                    }
                });
                $('#showLess').click(function () {

                    $('.tutorz_list').not(':lt('+4+')').slideUp();
                    $('#showLess').hide();
                    $('#loadMore').show();
                });
            });



            /****** Tutor Rating  ******/
            $('div.stars').raty({

                path: 'http://mdev.digitalvidhya.com/dts//assets/system_design/raty_images',
                score: function() {
                    return $(this).attr('data-score');
                },
                readOnly: true
            });


            /****** Assign Tutor Value ******/
            function assignVal(tutor)
            {
                $('input[name="tutor"]').val(tutor);
            }


            /****** Remove Tutor From Watch List ******/
            function removeTutorFromWatchlist(tutor)
            {
                if(tutor>0) {

                    $.ajax({
                        type: "post",
                        async: false,
                        url: "http://mdev.digitalvidhya.com/dts/en/student/removeTutorFromWatchlist",
                        data: { tutor:tutor, "digi_turor_system":"8d5a40f92ef66b4819a27a70b661263f"},
                        success: function(data) {
                            location.reload();
                        },
                        error: function(){
                            alert('Ajax Error');
                        }
                    });

                }

            }

            /* Get Child Records based on Parent ID */
            function getChildRecords(parentId, tbl)
            {

                var childId = "";
                var optionTxt = "";
                if(tbl == "subjects") {
                    childId    = "subject_id";
                    optionTxt  = "Subject";
                    optionTxt1 = "Segment";
                } else if(tbl == "locations") {
                    childId    = "location_id";
                    optionTxt  = "Area";
                    optionTxt1 = "Location";
                }

                if(parentId>0) {

                    $.ajax({

                        type: "post",
                        url: "http://mdev.digitalvidhya.com/dts/en/ajax_operations/getChildRecords",
                        data: "parentId="+parentId+"&tbl="+tbl+"&digi_turor_system=8d5a40f92ef66b4819a27a70b661263f",
                        cache: false,
                        success: function(data) {

                            if(data) {

                                $('#'+childId).empty();
                                $('#location_id1').empty();
                                $('#'+childId).append(data);
                                $('#location_id1').append(data);

                            } else {

                                $('#'+childId).empty();
                                $('#location_id1').empty();
                                $('#'+childId).append('<option value="">No '+optionTxt+' available.</option>');
                                $('#location_id1').append('<option value="">No '+optionTxt+' available.</option>');
                            }
                            $('#'+childId).trigger("liszt:updated");
                            $('#location_id1').trigger("liszt:updated");
                        }

                    });

                } else {

                    $('#'+childId).empty();
                    $('#location_id1').empty();
                    $('#'+childId).append('<option value="">Select '+optionTxt1+' First.</option>');
                    $('#location_id1').append('<option value="">Select '+optionTxt1+' First.</option>');
                    $('#'+childId).trigger("liszt:updated");
                    $('#location_id1').trigger("liszt:updated");
                }

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
