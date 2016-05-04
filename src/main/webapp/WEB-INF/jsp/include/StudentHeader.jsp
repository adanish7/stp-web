
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
                                <li><a tabindex="-1" href="${pageContext.request.contextPath}/user/view/${sessionScope.user.userId}"> <i class="fa fa-user"></i>View Profile</a></li>
                                <li><a tabindex="-1" href="${pageContext.request.contextPath}/user/edit/${sessionScope.user.userId}"> <i class="fa fa-cog"></i>Update Profile</a></li>
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
<section class="work_section tp">
    <div class="container-fluid"><div class="col-lg-2 col-md-2 col-sm-12 padding-lr">
        <div id='cssmenu'>
            <ul>
                <li class="active">
                    <a href="#"><span> <i class="fa fa-soundcloud"></i> Dashboard</span></a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/tutor/find" target="_blank"><span> <i class="fa fa-life-ring"></i>Find Tutor</span></a>
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
                        <li><a href="#"><span>Inbox (0)</span></a></li>
                        <li><a href="#"><span>Sent (5)</span></a></li>
                    </ul>
                </li>
                <!--Messages End-->

                <!---Watch List-->
                <li class="has-sub">
                    <a href="#"><span><i class="fa fa-indent"></i>Watch List </span></a>
                    <ul class="bb">
                        <li><a href="${pageContext.request.contextPath}/watchlist" ><span>My Tutors</span></a></li>
                    </ul>
                </li>
                <!--Wacth List End-->
                <!---Profile Settings-->
                <li class="has-sub">
                    <a href="#"><span> <i class="fa  fa-spinner"></i>Profile Settings</span></a>
                    <ul class="bb">
                        <li><a href="${pageContext.request.contextPath}/user/view/${sessionScope.user.userId}"> View Profile</a></li>
                        <li><a href="${pageContext.request.contextPath}/user/edit/${sessionScope.user.userId}"> Update Profile</a></li>
                    </ul>
                </li>
                <!--Profile Settings End-->
                <!---Reports-->

                <!--Logout-->
                <li>
                    <a href="${pageContext.request.contextPath}/logout"><span> <i class="fa fa-power-off"></i>  Logout</span></a>
                </li>
                <!--Logout Ends-->
            </ul>
        </div>
    </div>