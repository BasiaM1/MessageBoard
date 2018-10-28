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



    <h1>Registration Form</h1>

                <h2>User Registration</h2>
                <p>All fields are mandatory</p>


            <form:form method="POST" modelAttribute="user">

                <div>
                    <form:input path="username" class="form-control" id="inputEmail" placeholder="Username"/>
                    <form:errors path="username" cssClass="error"/><br>
                </div>

                <div>
                    <form:input path="name" class="form-control" id="inputEmail" placeholder="name"/>
                    <form:errors path="name" cssClass="error"/><br>
                </div>

                <div>
                    <form:input path="surname" class="form-control" id="inputEmail" placeholder="surname"/>
                    <form:errors path="surname" cssClass="error"/><br>
                </div>

                <div>
                    <form:input path="email" class="form-control" id="inputEmail" placeholder="email"/>
                    <form:errors path="email" cssClass="error"/><br>
                </div>

                <div>
                    <form:input path="password" type="password" class="form-control" id="inputPassword"
                                placeholder="Password"/>
                    <form:errors path="password" cssClass="error"/><br>
                </div>

                <div>
                    <form:textarea path="aboutme" rows="3" cols="20" class="form-control" id="inputEmail"
                                   placeholder="About me"/>
                    <form:errors path="aboutme" cssClass="error"/><br>
                </div>

                <button>Register</button>

            </form:form>



</body>
</html>
