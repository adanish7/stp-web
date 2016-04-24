<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach items="${StudentList}" var="StudentList" varStatus="counter">
    <div class="search_content">
        <ul>
            <li class="tutorz_list">
                <div class="premiumuser" ></div>
                <div class="search_result_header">
                    <div class="company_img">
                        <a href="#"><img src="../../images/no-image.png" height="100" width="100" alt="image"></a>
                    </div>
                    <div class="job_title">
                        <h3> ${StudentList.firstName} &nbsp; ${StudentList.lastName} </h3>
                        <span class="job_detail"><i class="fa fa-user"></i> <strong> Gender </strong> ${StudentList.gender} </span>
                            <%--<span class="job_detail"><i class="fa fa-calendar"></i> <strong> Age  </strong> 32 Years</span>--%>
                              <span class="job_detail"><i class="fa fa-graduation-cap"/></i>
                                  <strong> Qualification  </strong> ${StudentList.studentEducationLevel} </span>
                    </div>
                </div>
                <div class="search_result_content">
                    <div class="dl-horizontal">
                        <div class="col-md-6">
                            <ul>

                                <li> <i class="fa fa-map-marker fa-1x"></i> <strong> City </strong> &nbsp; ${StudentList.city} </li>
                                <li> <i class="fa fa-phone"></i><strong> Phone </strong>  &nbsp;
                                        ${StudentList.phone}
                                </li>
                                <li>  <i class="fa fa-building"></i> <strong> Studies </strong>  &nbsp;

                                        ${StudentList.subject} </li>

                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul>
                                <li>
                                    <strong>Preferred Learning Mode:</strong> &nbsp; ${StudentList.tutorType}
                                </li>

                                <li><i class="fa fa-phone-square"></i>
                                    <strong>WhatsApp</strong> &nbsp;
                                        ${StudentList.phone}
                                </li>

                            </ul>
                        </div>
                        <div class="col-md-12 padding-0">
                            <div class="bottom-list">
                                <ul>
                                    <li> <a data-toggle='modal' data-target='#myModal1' onclick=""> <i class="fa fa-star-o"> </i>
                                        Add to Watch List</a>
                                    </li>
                                        <%--<li> <a data-toggle='modal' data-target='#myModal4' onclick="assignVal(37)" id="reqmodal_37"> <i class="fa fa-phone"> </i> Request a Callback</a> </li>--%>
                                    <li><a data-toggle='modal' data-target='#myModal2' onclick="" id="msgmodal_37"><i class="fa fa-envelope"> </i> Send a Message                                          </a>&nbsp;
                                    </li>
                                    <li> <a href="#" class="view_more"> <i class="fa fa-long-arrow-right"></i> VIEW MORE </a>  </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</c:forEach>
