
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

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
            <nav class="collapse navbar-collapse bs-navbar-collapse padding-0" role="navigation">
                <div class="navbar-right">
                    <ul class="navbar-right login user_proile">
                        <li>
                            <a href="#"><img src="../../uploads/users/noimage.jpg" height="38" width="55">\
                                <p style="color:#FFF; float:right; font-size:15px;">Administrator</p>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a tabindex="-1" href="${pageContext.request.contextPath}/user/view/${sessionScope.user.userId}"> <i class="fa fa-user"></i>View Profile</a></li>
                                <li><a tabindex="-1" href="${pageContext.request.contextPath}/user/edit/${sessionScope.user.userId}"> <i class="fa fa-cog"></i>Update Profile</a></li>
                                <li><a tabindex="-1" href="${pageContext.request.contextPath}/logout"> <i class="fa fa-power-off"></i>Log out</a></li>
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
                    <!---dashboard-->
                    <li >
                        <a href="#">
                            <i class="fa fa-soundcloud"></i><span>Dashboard</span>
                        </a>
                    </li>
                    <!--dashboard End-->

                    <!---Users-->
                    <li class="has-sub">
                        <a href="#"><span> <i class="fa  fa-users"></i>  Users </span></a>
                        <ul class="bb">
                            <li><a href="${pageContext.request.contextPath}/user/student/list"><span>List Students</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/user/tutor/list"><span>List Tutors</span></a></li>
                        </ul>
                    </li>
                    <!--Users End-->

                    <!---Messages Settings-->
                    <li class="has-sub">
                        <a href="#"><span> <i class="fa  fa-envelope"></i>  Messages </span></a>
                        <ul class="bb">
                            <li><a href="${pageContext.request.contextPath}/"><span>Tutor Messages (0)</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/"><span>Student Messages (0)</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/"><span>Sent (1)</span></a></li>
                        </ul>
                    </li>
                    <!--Messages End-->

                    <!---Subjects -->
                    <li class="has-sub">
                        <a href="#"><span><!--<i class="fa fa-newspaper-o"></i>--><i class="fa fa-clipboard"></i>Subjects</span></a>
                        <ul class="bb">
                            <li><a href="${pageContext.request.contextPath}/subject/list"><span>List Subjects</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/subject/add"><span>Add Subject</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/course/add"><span>Add Course</span></a></li>
                        </ul>
                    </li>
                    <!--Subjects End-->

                    <!---Reports-->
                    <li>
                        <a href="${pageContext.request.contextPath}/"><span><i class="fa fa-th-list"></i>Reports</span></a>
                    </li>
                    <!--Reports End-->

                    <!--Update Profile-->
                    <li class="has-sub">
                        <a href="#"><span><i class="fa  fa-spinner"></i>Profile Settings</span></a>
                        <ul class="bb">
                            <li><a href="${pageContext.request.contextPath}/user/view/${sessionScope.user.userId}"> View Profile</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/edit/${sessionScope.user.userId}"> Update Profile</a></li>
                         </ul>
                    </li>
                    <!--Change Password End-->

                    <!--Logout-->
                    <li>
                        <a href="${pageContext.request.contextPath}/logout"><span><i class="fa fa-power-off"></i>Logout</span></a>
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