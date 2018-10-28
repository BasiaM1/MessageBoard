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


<a href="./announcement/all"><p>Show all announcements</p></a>

</body>
</html>