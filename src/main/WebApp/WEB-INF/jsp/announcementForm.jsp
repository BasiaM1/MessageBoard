<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="forr" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Announcement border</title>
</head>
<body>
<style>
    .error {
        color: red;
    }
</style>

<form:form method="post" enctype="multipart/form-data">
    <%--<form:hidden path="id"/>--%>
    <%--<form:hidden path="user.id"/>--%>

    Title: <input type="text" name="title"/><br/>
    <form:errors path="title" cssClass="error"/><br>

    Description: <textarea name="description"></textarea><br/>
    <form:errors path="description" cssClass="error"/><br>
    Picture: <input type="file" name="picture"/>


    <input type="submit" value="Submit">
</form:form>


</body>
</html>