<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>--%>

<!DOCTYPE html>
<html lang="en">
<head>

</head>
<meta charset="UTF-8">
<title>Announcement border</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<body>

<div>
<security:authorize access="isAuthenticated()">
    <security:authentication var="user" property="principal"/>
    <a href="/user/profile"> ${user.username}</a>
    <br/>
    <form action="/logout" method="post">
        <input type="hidden"
               name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
        <input type="submit" value="Logout">
    </form>
</security:authorize>
</div>

<div>
    <security:authorize access="isAnonymous()">
        <security:authentication var="user" property="principal"/>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="<c:url value="/user/register"/>">SIGN UP</a></li>

            <li><a href="<c:url value="/user/login"/>">LOG IN</a></li>

        </ul>
    </security:authorize>
</div>
Announcement border

<p style="color:white">All announcements:</p>
<table border="2", align="center">
    <tr>
        <th>Nickname</th>
        <th >Created</th>
        <th>Expired</th>
        <th>Title</th>
        <th>Description</th>
        <th>Add a comment</th>
        <th>Comments</th>

    </tr>

    <c:forEach items="${announcements}" var="a">
    <tr>

        <td><a href="/user/${a.user.id}/aboutUser">${a.user.username}</a></td>
        <td>${a.created}</td>
        <td>${a.expired}</td>
        <td>${a.title}</td>
        <td>${a.description}</td>


        <td><a href="/announcement/${a.id}/comment">Add a comment</a></td>

        <td>
            <c:forEach items="${a.comments}" var="comment">
                Utworzono: ${comment.created}
                <br>
                ${comment.text}
            </c:forEach>
        </td>
        </c:forEach>
    </tr>
</table>
</body>
</html>