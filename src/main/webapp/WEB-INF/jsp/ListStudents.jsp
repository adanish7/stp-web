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
    <title>List Students</title>
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
    <script src="../../assets/system_design/js/jquery.min.js"></script>
    <script src="../../assets/system_design/js/main.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var contextPath = "${pageContext.request.contextPath}";
            console.log("Calling listStudent()");
            listStudents();
        });
    </script>

</head>

<%@ include file="include/AdminHeader.jsp" %>

<div class="col-md-10 padding-0">
    <div class="brade">
        <a href="${pageContext.request.contextPath}/admindashboard">Home</a> > Users > List Students
    </div>
</div>
<div class="col-lg-10 col-md-10 col-sm-12 padding-lr">
    <div class="body-content">
        <div class="main-hed">
            <div class="col-md-12">

                <div id="studentArea">

                </div>

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
                    <div class="modal-body">  Are You Sure to Delete? </div>
                    <div class="modal-footer">
                        <a type="button" class="btn btn-success" id="delete_no" href="">Yes</a>  <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <script>
            function changeDeleteId(x) {
                var str = "${pageContext.request.contextPath}/user/student/delete/" + x;
                $("#delete_no").attr("href",str);
            }
        </script>
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



