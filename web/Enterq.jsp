<%-- 
    Document   : Enterq
    Created on : Sep 26, 2020, 8:00:30 PM
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
        <title>Insert</title>
    </head>
    <body>
       
            
          
            <sql:setDataSource var = "snapshot1" driver = "com.mysql.jdbc.Driver"
                url = "jdbc:mysql://localhost/library"
                user = "root"  password = ""/>
 
             <sql:update dataSource="${snapshot1}" var="result">
                INSERT INTO lib(Id, Title, Author_name, Location, Call_Number, Type, Acc_no) VALUES (?,?,?,?,?,?,?);
                <sql:param value="${param.idofbook}"  />
                <sql:param value="${param.title}"  />
                <sql:param value="${param.auth}"   />
                <sql:param value="${param.loc}"    />
                <sql:param value="${param.call}"   />
                <sql:param value="${param.type}"   />
                <sql:param value="${param.acc}"    />
            </sql:update>
            
            <c:if test="${result>=1}">
                 
                <c:redirect url="HomePage.jsp" >
                    
                </c:redirect>
            </c:if>         
                    
         
                   
    </body>
</html>
