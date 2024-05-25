<%-- 
    Document   : Authenticate
    Created on : Nov 4, 2020, 9:22:59 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
                url = "jdbc:mysql://localhost/library"
                user = "root"  password = ""/>
 
            <sql:query dataSource = "${snapshot}" var = "result">
                select count(*) as count from user
                where  Usertype='${param.usertype}' and Username='${param.username}'
                and Password='${param.password}'
            </sql:query>
 
                <c:forEach var = "row" items = "${result.rows}">
             
                    <c:choose>
                        <c:when test="${row.count gt 0}">
                            <c:set scope="session"
                                var="loginAdmin"
                                property="" value="${param.username}"/>
                            <c:if test="${param.usertype == 'ADMIN'}">
                                <c:redirect url="HomePage.jsp"/>
                            </c:if>
                            <c:if  test="${param.usertype == ''}">
                                <c:redirect url="Student.jsp"/>
                            </c:if>
                            
                        </c:when>
                        <c:otherwise>
                            <c:redirect url="index.html" >
                                
                            </c:redirect>
                        </c:otherwise>
                    </c:choose>
            
                </c:forEach>  
                
    </body>
</html>
