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

<%@ include file="include/StudentHeader.jsp" %>


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
                                                        <%--<div class="closed" id="11" style='display:block;'></div>--%>
                                                    <div class="list-left list-con" id="div_11">
                                                        <div class="col-md-8 padding-l">
                                                        <span class="title">
                                                            <p> <strong> ${requirements.title} </strong> </p>
                                                        </span>
                                                            <p> ${requirements.requirementDetails}  </p>
                                                            <p>  Frederick Ave, Kensington  </p>
                                                            <p> <i class="fa fa-calendar"></i> Posted On:  &nbsp; ${requirements.createdOn}  </p>
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
                                      <a a data-toggle='modal' data-target='#myModal1' onclick="deleteRequirements('${requirements.id}')" style="height: 40px; width: 100px; margin-left: 50px" class="btn btn-primary">Delete</a>
                                      </span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </c:forEach>

                                        </div>
                                    </div>
                                </div>

<!-- Modal1 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content my-popup">
            <div class="modal-header">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
                        <span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">Delete Requirement</h4>
                </div>
                <div class="modal-body">  Are you sure you want to delete? </div>
                <div class="modal-footer">
                    <a type="button" class="btn btn-success" id="delete_no" href="">Yes</a>  <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                </div>
            </div>
        </div>
    </div>
</div>


        <script>

            function deleteRequirements(x) {
                var str = "${pageContext.request.contextPath}/requirement/delete/" + x ;
                $("#delete_no").attr("href",str);
            }

        </script>


    </div>
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

<script src="../../assets/system_design/js/main.js"></script>
<%--<script type="text/javascript">
    $(document).ready(function () {
        var contextPath = "${pageContext.request.contextPath}";
        console.log("Calling listRequirements()");
        listRequirements();
    });
</script>--%>


<!--./script end-->
</body>
</html>
