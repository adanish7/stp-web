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
    <title>Find Tutor</title>
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

<%--<%@ include file="include/TutorHeader.jsp" %>--%>

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
                        <a href="#"> <img src="../../assets/system_design/images/logo-dark.png" width="100" height="30" >  </a>	</div>
                    <!--./logo-->
                </div>
            </div>
            <nav class="collapse navbar-collapse bs-navbar-collapse padding-0" role="navigation">
                <div class="navbar-right">
                    <ul class="navbar-right login user_proile">
                        <li>
                            <a href="#">
                                <img src="../../uploads/users/noimage.jpg" height="38" width="55"><p style="color:#FFF; float:right; font-size:15px;">${sessionScope.user.firstName} ${sessionScope.user.lastName}</p>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a tabindex="-1" href="#"> <i class="fa fa-user"></i>My Profile</a></li>
                                <li><a tabindex="-1" href="#"> <i class="fa fa-cog"></i>Change Password</a></li>
                                <li><a tabindex="-1" href="${pageContext.request.contextPath}/logout"> <i class="fa fa-power-off"></i>Log out</a></li>
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


<section class="search_section">
    <div class="container">
        <div class="col-lg-12 col-md-12 col-sm-12 padding-lr">
            <h2>Find Tutor</h2>
        </div>
        <!--./col-lg-12-->
    </div>
    <!--./container-->
    <div class="brade-com">
        <div class="container">
            <aside class="brade-site">
                <a href="${pageContext.request.contextPath}/studentdashboard">Home</a>
                &gt; > Find Tutor  </aside>
        </div>
    </div>
</section>

<div class="work_section tp">

            <style>
                .flt-rght {
                    float:right !important;
                }

            </style>


        <section class="search_page">
            <div class="container">
                <div class="col-lg-12 col-md-12 col-sm-12 padding-lr">
                    <div class="row">
                        <style>
                            #cssmenu ul ul li a.active {
                                font-weight:600;
                                color:orangered !important;
                            }
                        </style>
                        <div class="col-lg-3 col-md-3 col-sm-12">
                            <div id="cssmenu">
                                <ul>
                                    <li class="has-sub open">
                                        <a href="#"><span> Location </span><span class="holder"></span></a>
                                        <ul class="search-side-list">
                                            <div class="search-sidte-total">
                                                <div class="search-sidte-list">
                                                    <li>
                                                        <input type="checkbox" name="location" class="locations" value="Lahore" onclick="findTutors()">&nbsp;Lahore
                                                    </li>
                                                    <li>
                                                        <input type="checkbox" name="location" class="locations" value="Karachi" onclick="findTutors()">&nbsp;Karachi
                                                    </li>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="has-sub">
                                        <a href="#" ><span> Subjects </span><span class="holder"></span></a>

                                        <ul class="search-side-list" >
                                            <div class="search-sidte-total">
                                                <div class="search-sidte-list">
                                                    <c:forEach items="${subjectList}" var="subjectList" varStatus="counter">
                                                        <li><input type="checkbox" name="subject" class="subjects" value="${subjectList.subjectName}" onclick="findTutors()"> ${subjectList.subjectName} </li>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="has-sub">
                                        <a href="#" ><span> Experience </span><span class="holder"></span></a>
                                        <ul class="search-side-list" >
                                            <div class="search-sidte-total">
                                                <div class="search-sidte-list">
                                                    <li><input type="checkbox" name="experience" class="experiences" value="1 - 2 Years" onclick="findTutors()"> 1 - 2 Years </li>
                                                    <li><input type="checkbox" name="experience" class="experiences" value="2 - 3 Years" onclick="findTutors()"> 2 - 3 Years  </li>
                                                    <li><input type="checkbox" name="experience" class="experiences" value="3 - 5 Years" onclick="findTutors()" > 3 - 5 Years </li>
                                                    <li><input type="checkbox" name="experience" class="experiences" value="> 5 Years" onclick="findTutors()" > > 5 Years </li>
                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="has-sub">
                                        <a href="#" ><span> Tutor Type </span><span class="holder"></span></a>
                                        <ul class="search-side-list" >
                                            <div class="search-sidte-total">
                                                <div class="search-sidte-list">

                                                    <li><input type="checkbox" name="tutorType" class="tutorTypes" value="Home" onclick="findTutors()"> Home Tutor </li>

                                                    <li><input type="checkbox" name="tutorType" class="tutorTypes" value="Online" onclick="findTutors()"> Online Tutor </li>

                                                </div>
                                            </div>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <!--./col-lg-3-->
                        <div class="col-lg-9 col-md-9 col-sm-12">
                        <div class="col-md-12 padding-0 back" >
                            <div class="ctbg">
                                <div class="form-group ct">
                                    <label style="font-size: 16px; font-weight: bold"> Search Results </label>
                                    <%--<a href="#" class="btn btn-default cate">  <i class="fa fa-close"></i> </a>--%>
                                </div>
                            </div>
                        </div>

                            <div style="margin-top: 10px; margin-bottom: 10px">


                            </div>

                            <div id="searchResults">

                            </div>

                        <!--./search_content-->
                    </div>
                        <!--./col-lg-9-->
                    </div>
                    <!--./row-->
                </div>
                <!--./col-lg-12-->
            </div>
            <!--./container-->
        </section>
        <!--./search_page-->

    <!-- Modal1 -->
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content my-popup">
                <div class="modal-header">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Add</h4>
                    </div>
                    <div class="modal-body">  Add to Watchlist? </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-success" id="watchlist_no" href="">Yes</a>  <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal2 -->
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content my-popup">
                <div class="modal-header">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                            <span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Message</h4>
                    </div>
                    <div class="modal-body">  Send Message </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-success" id="" href="">Yes</a>  <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

        <script src="../../assets/system_design/js/jquery.min.js"></script>
        <link href="../../assets/system_design/css/jquery.raty.css" rel="stylesheet" media="screen">
        <script src="../../assets/system_design/js/jquery.raty.js"></script>
        <script>
            $(document).ready(function () {

                $('#_').click();

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


            /****** Assign Tutor Value ******/
            function assignVal(tutor)
            {
                $('input[name="tutor"]').val(tutor);
            }


            function addToWatchList(x,y) {
                var str = "${pageContext.request.contextPath}/watchlist/add/" + x + "/" + y;
                $("#watchlist_no").attr("href",str);
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
                        data: "parentId="+parentId+"&tbl="+tbl+"&digi_turor_system=8b81c6788b826c25da9d0ed4745056f0",
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
<script src="../../assets/system_design/js/main.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        console.log("Calling findTutors()");
       findTutors();
    });
</script>
<!--./script end-->
</body>
</html>
