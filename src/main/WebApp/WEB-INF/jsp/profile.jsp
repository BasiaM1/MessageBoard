<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <style>


        </style>

   </head>
   <body>

    <h1>Your Profile</h1>

                <h2>Users' information</h2>



            <table border="0" , bgcolor="#00FF00">
                <p style="color: darkslategrey; text-align: left">Login: ${userProfile.username}</p>
                <p style="color: darkslategrey; text-align: left">Name: ${userProfile.name}</p>
                <p style="color: darkslategrey; text-align: left">Surname: ${userProfile.surname}</p>
                <p style="color: darkslategrey; text-align: left">About User: ${userProfile.aboutme}</p>
            </table>
            <p><a href="/user/edit/${userProfile.id}">Edit your informations</a></p>
            <p><a href="/announcement/add?userId=${userProfile.id}">Add an announcement</a></p>
            <%--<p><a href="/message/add">Create a message</a></p>--%>



            <table border="0" , bgcolor="#00FF00">
                <tr>
                    <th>Announcements</th>
                    <th>Created</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>

                <c:forEach var="a" items="${announcements}">
                    <tr>
                        <td> ${a.title}</td>
                        <td> ${a.description}</td>
                        <td> ${a.created}</td>
                        <td><a href="/announcement/edit/${a.id}">edit</a>
                        <td><a href="/announcement/delete/${a.id}">delete</a>
                    </tr>
                </c:forEach>
            </table>
            <%--<p><a href="/user/${userProfile.id}/messages">Mail box</a></p>--%>
        </div>


</body>
</html>