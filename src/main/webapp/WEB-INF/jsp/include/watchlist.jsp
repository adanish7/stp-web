
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul>

    <c:forEach items="${sessionScope.studentWatchlist}" var="studentWatchlist">

        <li class="tutorz_list">
            <a href="#" class="remove_from_watchlist" title="Remove From Watch List" onclick="removeTutorFromWatchlist('${studentWatchlist.id}')">x</a>
            <div class="search_result_header">
                <div class="company_img">
                    <a href="#"><img height="80" width="80" src="../../images/no-image.png"></a>
                </div>
                <div class="job_title smt">
                    <h3> <a target="_blank" href="http://mdev.digitalvidhya.com/dts/en/welcome/tutorProfile/32">${studentWatchlist.tutor.firstName} ${studentWatchlist.tutor.lastName} </a></h3>
                    <span class="job_detail smt1"><i class="fa fa-user"></i> <strong>Gender</strong>&nbsp; ${studentWatchlist.tutor.gender} </span>
                    <span class="job_detail smt1"><i class="fa fa-line-chart"></i><strong>Experience</strong>&nbsp; ${studentWatchlist.tutor.tutorExperience} </span>
                    <span class="job_detail smt1"><i class="fa fa-graduation-cap"></i> <strong>Qualification</strong>&nbsp;  ${studentWatchlist.tutor.tutorQualification} </span>
                </div>
            </div>
            <div class="search_result_content">
                <div class="dl-horizontal">
                    <div class="col-md-6">
                        <ul>
                            <li> <i class="fa fa-map-marker fa-1x"></i> <strong> City </strong> &nbsp; ${studentWatchlist.tutor.city} </li>
                            <li> <i class="fa fa-phone"></i><strong>  Phone </strong>  &nbsp; ${studentWatchlist.tutor.phone}  </li>
                        </ul>
                    </div>

                    <div class="col-md-12 padding-0">
                        <div class="bottom-list my-tu-list">
                            <ul>
                                <li><a data-toggle='modal' data-target='#myModal4' onclick="assignVal(32)" id="msgmodal_32"><i class="fa fa-envelope"> </i>
                                    Send a Message
                                </a>&nbsp;
                                </li>
                                <li> <a href="" class="view_more"> <i class="fa fa-long-arrow-right"></i> VIEW MORE  </a>  </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </li>

    </c:forEach>

</ul>
