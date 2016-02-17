<%-- 
    Document   : course
    Created on : Feb 17, 2016, 10:20:08 AM
    Author     : Ohjelmistokehitys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course</title>
    </head>
    <body>
        <div class="container">
            <div class = "row">
                <div class="col-md-6">
                    <h1>Add new course information</h1>        
                     <%@include file="header.jsp"%>
                    <form:form action="/admin/course" method="POST" modelAttribute="course">
                        <form:label path="">Name</form:label><br>                        
                        <form:input cssClass="form-control" path="CName"></form:input><br> 
                        <form:label path="">Info</form:label><br>
                        <form:input cssClass="form-control" path="CInfo"></form:input><br>                
                        <input type="submit" value="Save Course"/>
                        <!--submit lähettää post metodiin datan-->
                    </form:form>
                    <p>${save_info}</p>
                </div>

                <div class="col-md-6">
                    <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Info</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="co" items="${courses}"> 
                            <!--teach ite määritelty muuttuja johon sijoitetaan teacher objekti -->
                            <tr>
                                <td>${co.getCName()}</td>
                                <td>${co.getCInfo()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    </table>
                 </div>
            </div>
        </div>
    </body>
</html>

