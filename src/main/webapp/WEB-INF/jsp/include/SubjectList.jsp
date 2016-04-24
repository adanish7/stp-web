
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:forEach items="${subjects}" var="subject" varStatus="counter">
        <tr style="align-items: center">
            <td style="font-size: 14px ; border: 1px solid black; background-color: white">${counter.count}</td>
            <td style="font-size: 14px ; border: 1px solid black; background-color: white">${subject.subjectCode}</td>
            <td style="font-size: 14px ; border: 1px solid black; background-color: white">${subject.subjectName}</td>
            <td style="font-size: 14px ; border: 1px solid black; background-color: white">${subject.status}</td>
            <td style="font-size: 14px ; border: 1px solid black; background-color: white; text-align: center; margin-left: 20px">
                    <%--<a style="color: green; font-weight: bold" href="${pageContext.request.contextPath}/subject/edit/${subject.subjectId}">Edit</a> &nbsp;|&nbsp;--%>
                <a style="text-align: center" href="${pageContext.request.contextPath}/subject/edit/${subject.subjectId}" title="Edit"><i class="fa fa-pencil-square-o edit"></i></a> &nbsp; &nbsp;
                <a data-toggle="modal" data-target="#myModal" style="color: red; font-weight: bold" <%--href="${pageContext.request.contextPath}/subject/delete/--%> onclick="/*changeDeleteId(${subject.subjectId})*/  deleteSubjects(${subject.subjectId})"><i class="fa fa-trash-o delet"></i></a>
            </td>
        </tr>
    </c:forEach>