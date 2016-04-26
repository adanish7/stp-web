<%--
  Created by IntelliJ IDEA.
  User: Rehan
  Date: 4/23/16
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




                    <c:forEach items="${subjectList}" var="subjectList" varStatus="counter">
                                <option> ${subjectList.subject} </option>
                    </c:forEach>