<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Subjects</title>
</head>
<body>
    <a href="${pageContext.request.contextPath}/subject/add">Add Subject</a>
    <table width="80%">
        <tr>
            <th>Sr.</th>
            <th>Id</th>
            <th>Title</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        <c:forEach items="${subjects}" var="subject" varStatus="counter">
            <tr>
                <td>${counter.count}</td>
                <td>${subject.subjectCode}</td>
                <td>${subject.subjectName}</td>
                <td>${subject.status}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/subject/edit/${subject.subjectId}">Edit</a> &nbsp;|&nbsp;
                    <a href="${pageContext.request.contextPath}/subject/delete/${subject.subjectId}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
