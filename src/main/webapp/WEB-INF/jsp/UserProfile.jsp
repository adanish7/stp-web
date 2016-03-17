<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>

<H1> User Profile </H1>

<spring:form action="${pageContext.request.contextPath}/user/profile" modelAttribute="user">
    <spring:hidden path="userId" />
    <h3>Name</h3><spring:input path="userName" /><br>
    <h3>Email</h3><spring:input path="email" /><br>
    <h3>Phone</h3><spring:input path="phone" /><br>
    <h3>DOB</h3><spring:input path="birthDate" /><br>
    <input type="submit" name="Submit">
</spring:form>

</body>
</html>
