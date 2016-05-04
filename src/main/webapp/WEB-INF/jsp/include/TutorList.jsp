<%--
  Created by IntelliJ IDEA.
  User: Rehan
  Date: 4/23/16
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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

                    <tbody>
                    <c:forEach items="${sessionScope.users}" var="user" varStatus="counter">
                        <tr>
                            <td>${counter.count}</td>
                            <td>${user.firstName}  ${user.lastName}</td>
                            <td>${user.phone}</td>
                            <td>${user.email}</td>
                            <td>
                                <a data-toggle="modal" data-target="#myModal" onclick="changeDeleteId('${user.userId}')" title="Delete">
                                    <i class="fa fa-trash-o delet"></i>
                                </a>&nbsp;
                                <a href="${pageContext.request.contextPath}/user/view/${user.userId}" title="View Details" class="warning active">View Details</a>&nbsp;
                                <%--<a href="#" class="warning active">  Active </a>--%>
                            </td>
                        </tr>
                    </c:forEach>

                    </tbody>
                </table>

                <script type="text/javascript" language="javascript" src="../../../assets/system_design/js/jquery.dataTables.js"></script>
                <script type="text/javascript" language="javascript" class="init">
                    $(document).ready(function() {
                        $('#example').dataTable();
                        $('.example').dataTable();
                    } );
                </script>

