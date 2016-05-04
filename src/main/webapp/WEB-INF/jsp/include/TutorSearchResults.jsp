<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${tutorList}" var="tutorList" varStatus="counter">
    <div class="search_content">
        <ul>
            <li class="tutorz_list">
                <div class="premiumuser" ></div>
                <div class="search_result_header">
                    <div class="company_img">
                        <a href="#"><img src="../../images/no-image.png" height="100" width="100" alt="image"></a>
                    </div>

                    <div class="job_title">
                        <h3> ${tutorList.firstName} &nbsp; ${tutorList.lastName} </h3>
                        <span class="job_detail"><i class="fa fa-user"></i> <strong> Gender </strong> ${tutorList.gender} </span>
                        <span class="job_detail"><i class="fa fa-line-chart"></i><strong> Experience </strong> ${tutorList.tutorExperience} </span>
                            <%--<span class="job_detail"><i class="fa fa-calendar"></i> <strong> Age  </strong> 32 Years</span>--%>
                              <span class="job_detail"><i class="fa fa-graduation-cap"/></i>
                                  <strong> Qualification  </strong> ${tutorList.tutorQualification} </span>
                    </div>
                </div>
                <div class="search_result_content">
                    <div class="dl-horizontal">
                        <div class="col-md-6">
                            <ul>

                                <li> <i class="fa fa-map-marker fa-1x"></i> <strong> City </strong> &nbsp; ${tutorList.city} </li>
                                <li> <i class="fa fa-phone"></i><strong> Phone </strong>  &nbsp;
                                        ${tutorList.phone}
                                </li>
                                <li>  <i class="fa fa-building"></i> <strong> Teaches</strong>  &nbsp;

                                        ${tutorList.subject} </li>

                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul>
                                <li>
                                    <strong>Teaching Mode:</strong> &nbsp; ${tutorList.tutorType}
                                </li>

                                <li>
                                    <strong>Tutor Avg. Rating</strong> &nbsp;  &nbsp;
                                    <div class="stars" id="37" ></div>
                                </li>
                                <li><i class="fa fa-phone-square"></i>
                                    <strong>WhatsApp</strong> &nbsp;
                                        ${tutorList.phone}
                                </li>

                            </ul>
                        </div>
                        <div class="col-md-12 padding-0">
                            <div class="bottom-list">
                                <ul>

                                    <%--Not using modal popup here for now--%>

                                    <li> <a href="${pageContext.request.contextPath}/watchlist/add/?tutorId=${tutorList.userId}&studentId=${sessionScope.user.userId}"> <i class="fa fa-star-o"> </i>
                                        Add to Watch List</a>
                                    </li>
                                        <%--<li> <a data-toggle='modal' data-target='#myModal4' onclick="assignVal(37)" id="reqmodal_37"> <i class="fa fa-phone"> </i> Request a Callback</a> </li>--%>
                                    <li><a data-toggle='modal' data-target='#myModal2' onclick="assignVal(37)" id="msgmodal_37"><i class="fa fa-envelope"> </i> Send a Message                                          </a>&nbsp;
                                    </li>
                                    <li> <a href="http://mdev.digitalvidhya.com/dts/en/welcome/tutorProfile/37" class="view_more"> <i class="fa fa-long-arrow-right"></i> VIEW MORE </a>  </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</c:forEach>
