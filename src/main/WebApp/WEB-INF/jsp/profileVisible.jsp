<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html lang="en">
<head>


</head>



</head>


                <h2>About user</h2>



            <table border="0" , bgcolor="#00FF00" class="tableAllUsers table table-striped">
                <p style="color: darkslategrey; text-align: left">Nickname: ${user.username}</p>
                <p style="color: darkslategrey; text-align: left">Name: ${user.name}</p>
                <p style="color: darkslategrey; text-align: left">Surname: ${user.surname}</p>
                <p style="color: darkslategrey; text-align: left">About User: ${user.aboutme}</p>
                <p style="color: darkslategrey; text-align: left"><a href="/user/${user.id}/announcements">Show announcements of this
                    user: </a></p>
            </table>



</body>
</html>