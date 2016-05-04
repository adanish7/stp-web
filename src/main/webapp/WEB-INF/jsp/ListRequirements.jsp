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
                                      <a href="${pageContext.request.contextPath}/requirement/delete/${requirements.id}" style="height: 40px; width: 100px; margin-left: 50px" class="btn btn-primary">Delete</a>
                                      </span>
                                                    </div>
                                                </li>
                                            </ul>
                                        </c:forEach>

                                        </div>
                                    </div>
                                </div>


        <script>
            /*$(document).ready(function () {
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
                var closeid = id;
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
                    url: "${pageContext.request.contextPath}/delete/" + id,
                    data: { status:status, lead_id:closeid, "digi_turor_system":id}, //Need to check about this id
                    success: function(data) {

                    },
                    error: function(){
                        alert('Ajax Error');
                    }
                });

            }*/

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
