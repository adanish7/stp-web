<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Edit Subject</title>
</head>
<body>
    <spring:form action="${pageContext.request.contextPath}/subject/save" modelAttribute="subject">
        <spring:hidden path="subjectId" />
        Subject Code: <spring:input path="subjectCode" />
                      <spring:errors  />
        <br/>

        Subject Title: <spring:input path="subjectName" /><br/>
        Status
        <spring:select path="status">
            <option value="Active">Active</option>
            <option value="Inactive">Inactive</option>
        </spring:select><br/>
        <input type="submit" value="Submit" />
    </spring:form>
</body>
</html>
