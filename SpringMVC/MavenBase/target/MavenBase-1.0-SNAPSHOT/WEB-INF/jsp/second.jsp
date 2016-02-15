<%-- 
    Document   : second
    Created on : Feb 9, 2016, 1:04:32 PM
    Author     : Ohjelmistokehitys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teacher</title>
    </head>
    <body>
        <div>
            <h1>Add new teacher information</h1>
            <form:form action="/teacher" method="POST" modelAttribute="teacher">
                <form:label path="">Name</form:label>
                <form:input path="TName"></form:input><br>
                <form:label path="">Email</form:label>
                <form:input path="email"></form:input><br>                
                <form:label path="">Phone</form:label>
                <form:input path="phone"></form:input><br>
                <form:label path="">Subject</form:label>
                <form:input path="TSubject"></form:input><br>   
                <input type="submit" value="Save Teacher"/>
                <!--submit lähettää post metodiin datan-->
            </form:form>
            <p>${save_info}</p>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Subject</th>
                    </tr>
                    
                </thead>
                <tbody>
                    <c:forEach var="teach" items="${teachers}"> 
                        <!--teach ite määritelty muuttuja johon sijoitetaan teacher objekti -->
                        <tr>
                            <td>${teach.getTName()}</td>
                            <td>${teach.getEmail()}</td>
                            <td>${teach.getPhone()}</td>
                            <td>${teach.getTSubject()}</td>
                        </tr>
                        
                    </c:forEach>
                </tbody>
            </table>
        </div>
        
    </body>
</html>
