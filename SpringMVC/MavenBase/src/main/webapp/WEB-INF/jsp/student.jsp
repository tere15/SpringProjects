<%-- 
    Document   : student
    Created on : Feb 16, 2016, 1:53:25 PM
    Author     : Ohjelmistokehitys
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="header.jsp"%>
        <form:form action="/admin/student" method="POST">
        <h1>Hello Student!</h1>
        </form:form>
    </body>
</html>
