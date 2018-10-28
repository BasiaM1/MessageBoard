<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <style>
        .error {
            color: red;
        }


    </style>
</head>
<body>

    <h1 class="form-heading">login Form</h1>

                <h2>User Login</h2>
                <p>Please enter your username and password</p>


            <form:form method="POST" modelAttribute="user">
                <div>
                    <form:input path="username" class="form-control" id="inputEmail" placeholder="Username"/>
                    <form:errors path="username" cssClass="error"/><br>
                </div>

                <div>
                    <form:input path="password" type="password" class="form-control" id="inputPassword"
                                placeholder="Password"/>
                    <form:errors path="password" cssClass="error"/><br>
                </div>

                <div>
                    <a href="#">Forgot password?</a>
                </div>

                <button>Login</button>
            </form:form>


</body>
</html>


