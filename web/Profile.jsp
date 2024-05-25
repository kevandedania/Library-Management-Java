<%-- 
    Document   : Profile
    Created on : Nov 4, 2020, 3:07:18 PM
    Author     : kevan
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
        <link rel="stylesheet" href="w3.css">
        <title>profile</title>
                
    </head>
    <body>
         <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/library"
         user = "root"  password = ""/>
 
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from lib WHERE Id = ?;
            <sql:param value="${param.id}" />
        </sql:query>
        
           
    </body>
</html>
