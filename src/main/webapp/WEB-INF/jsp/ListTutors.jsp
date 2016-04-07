<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>List Tutors</title>
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
    <link href="../../assets/system_design/css/jquery.dataTables.css" rel="stylesheet">
    <!--fevicon icon end-->

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
            <nav class="collapse navbar-collapse bs-navbar-collapse padding-0" role="navigation">
                <div class="navbar-right">
                    <ul class="navbar-right login user_proile">
                        <li>
                            <a href="#"><img src="../../uploads/users/noimage.jpg" height="38" width="55">
                                <p style="color:#FFF; float:right; font-size:15px;">Administrator</p>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a tabindex="-1" href="#"> <i class="fa fa-user"></i>My Profile</a></li>
                                <li><a tabindex="-1" href="#"> <i class="fa fa-cog"></i>Change Password</a></li>
                                <li><a tabindex="-1" href="#"> <i class="fa fa-power-off"></i>Log out</a></li>
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
                        <a href="#"><span> <i class="fa fa-location-arrow"></i>Cities </span></a>
                        <ul class="bb">
                            <li><a href="#"><span>List Cities</span></a></li>
                            <li><a href="#"><span>Add Cities</span></a></li>
                            <li><a href="#"><span>Add Areas</span></a></li>
                        </ul>
                    </li>

                    <!---Reports-->
                    <li>
                        <a href="#"><span><i class="fa fa-th-list"></i>Reports</span></a>
                    </li>
                    <!--Reports End-->

                    <!--Change Password-->
                    <li>
                        <a href="#"><span><i class="fa fa-cog"></i>Change Password</span></a>
                    </li>
                    <!--Change Password End-->

                    <!--Logout-->
                    <li>
                        <a href="#"><span><i class="fa fa-power-off"></i>Logout</span></a>
                    </li>
                    <!--Logout Ends-->
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-10 padding-0">
        <div class="brade">
            <a href="#">Home</a> > Users > List Students
        </div>
    </div>
    <div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
        <div class="body-content">
            <div class="main-hed">
                <div class="col-md-12">
                    <table id="example" class="cell-border example" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>Sno</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>Sno</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                        </tfoot>
                        <tbody>
                        <c:forEach items="${users}" var="user" varStatus="counter">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${user.userName}</td>
                                <td>${user.phone}</td>
                                <td>${user.email}</td>
                                <td>
                                    <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(27)" title="Delete">
                                        <i class="fa fa-trash-o delet"></i>
                                    </a>&nbsp;
                                    <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                    <a href="#" class="warning active">  Active </a>
                                </td>
                            </tr>
                        </c:forEach>
                        <%--<tr>
                            <td>1</td>
                            <td>Danish Ali</td>
                            <td>123</td>
                            <td>student@student.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(27)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Zunaira Arif</td>
                            <td>456</td>
                            <td>za@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Abdul Basit</td>
                            <td>789</td>
                            <td>ab@gmail.com</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId(29)" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="#" target="_blank" title="View Details" class="warning active">View Details</a>&nbsp;
                                <a href="#" class="warning active">  Active </a>
                            </td>
                        </tr>--%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content my-popup">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Delete</h4>
                </div>
                <div class="modal-body">  Are You Sure to Delete?    </div>
                <div class="modal-footer">
                    <a type="button" class="btn btn-success" id="delete_no" href="">Yes</a>  <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <script>
        function changeDeleteId(x) {
            var str = "http://mdev.digitalvidhya.com/dts/en/admin/students/delete/" + x;
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
                    <p>Powered by:TeamSTP</p>
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
<script>
    $(document).ready(function () {

    });

</script>
<script type="text/javascript" language="javascript" src="../../assets/system_design/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" class="init">
    $(document).ready(function() {
        $('#example').dataTable();
        $('.example').dataTable();
    } );


</script>
<!--./script end-->
</body>
</html>



