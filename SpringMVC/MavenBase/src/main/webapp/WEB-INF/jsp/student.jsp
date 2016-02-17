<%-- 
    Document   : student
    Created on : Feb 16, 2016, 1:53:25 PM
    Author     : Ohjelmistokehitys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student</title>
    </head>
    <body>
        <div class="container">
            <div class = "row">
                <div class="col-md-6">
                    <h1>Add new student information</h1>        
                     <%@include file="header.jsp"%>
                    <form:form action="/admin/student" method="POST" modelAttribute="student">
                        <form:label path="">Name</form:label><br>
                        <form:input cssClass="form-control" path="SName"></form:input><br> 
                        <form:label path="">Address</form:label><br>
                        <form:input cssClass="form-control" path="address"></form:input><br>   
                        <form:label path="">Email</form:label><br>
                        <form:input cssClass="form-control" path="email"></form:input><br>                
                        <form:label path="">Phone</form:label><br>
                        <form:input cssClass="form-control" path="phone"></form:input><br>
                        <input type="submit" value="Save Student"/>
                        <!--submit lähettää post metodiin datan-->
                    </form:form>
                    <p>${save_info}</p>
                </div>
                <div class="col-md-6">
                    <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Address</th>
                            <th>Email</th>
                            <th>Phone</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="study" items="${students}"> 
                            <!--teach ite määritelty muuttuja johon sijoitetaan teacher objekti -->
                            <tr>
                                <td>${study.getSName()}</td>
                                <td>${study.getAddress()}</td>
                                <td>${study.getEmail()}</td>
                                <td>${teach.getPhone()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                    </table>
                 </div>
            </div>
        </div>
    </body>
</html>
