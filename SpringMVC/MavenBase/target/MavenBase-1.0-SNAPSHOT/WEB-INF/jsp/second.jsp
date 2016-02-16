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
        <meta name="viewport" content ="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../resources/css/jquery.min.css" />  
        <link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/styles.css" />
        
        
        <script src="resources/js/scripts.js"></script>        
        <title>Teacher</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
         <div class="container">
            <div class = "row">
                <div class="col-md-6">
                    <h1>Add new teacher information</h1>
                    <form:form action="/admin/teacher" method="POST" modelAttribute="teacher">
                        <form:label path="">Name</form:label><br>
                        <form:input cssClass="form-control" path="TName"></form:input><br>
                        <form:label path="">Email</form:label><br>
                        <form:input cssClass="form-control" path="email"></form:input><br>                
                        <form:label path="">Phone</form:label><br>
                        <form:input cssClass="form-control" path="phone"></form:input><br>
                        <form:label path="">Subject</form:label><br>
                        <form:input cssClass="form-control" path="TSubject"></form:input><br>   
                        <input type="submit" value="Save Teacher"/>
                        <!--submit lähettää post metodiin datan-->
                    </form:form>
                    <p>${save_info}</p>
                </div>
                <div class="col-md-6">
                    <table class="table table-hover table-bordered">
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
                                    <td><span class="glyphicon glyphicon-info-sign"></span>${teach.getPhone()}</td>
                                    <td>${teach.getTSubject()}</td>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
