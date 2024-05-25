<%-- 
    Document   : Deleteq
    Created on : Sep 26, 2020, 8:05:03 PM
    Author     : ABC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/library"
         user = "root"  password = ""/>
        <sql:update dataSource="${snapshot}" var="count">
            DELETE FROM lib WHERE Id = ?;
            <sql:param value="${param.id}" />
        </sql:update>
        <c:if test="${count>=1}">
              
            <c:redirect url="HomePage.jsp" >
                
            </c:redirect>
        </c:if>
    </body>
</html>
