<%-- 
    Document   : Updateq
    Created on : Sep 26, 2020, 8:08:29 PM
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
        <link rel="stylesheet" href="w3.css">
        <title>Update</title>
        <style>
body{
  background-image: url('9.jpg');
}

</style>
    </head>
    <body>
        
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/library"
         user = "root"  password = ""/>
 
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from lib WHERE Id = ?;
            <sql:param value="${param.id}" />
        </sql:query>
        <center>
            <form action="Updation.jsp?id=<c:out value="${param.id}"/>" method="POST">
                  
                 <c:forEach var="row" items="${result.rows}">
                    <br>
                    <br> 
                    Id : <input type ="text" name = "idofbook" value="${param.id}"/>
                    <br>
                    
                  <div >
                    <div >
                        <label>Title</label>
                        <input type = "text" name = "title" value="${row.Title}"/>
                    </div>
                    <div >
                        <label>Author Name</label>
                        <input type = "text" name = "auth" value="${row.Author_name}"/>
                    </div>
            </div>
            <div >
                <div >
                    <label>Location</label>
                    <input type = "text" name = "loc" value="${row.Location}"/>
                </div>
                <div >
                    <label>Call Number</label>
                    <input type = "text" name = "call" value="${row.Call_Number}"/>
                </div>
            </div>
                <div >
                <div >
                    <label>Type</label>
                    <input type = "text" name = "type" value="${row.Type}"/>
                </div>
                <div >
                    <label>Account No</label>
                    <input type = "text" name = "acc" value="${row.Acc_no}"/>
                </div>
            </div>
                   
                    
                    <br>
               
                    
                    
                    <input type="submit" value="Update"/>
                   
                </c:forEach>
                    
                             
            </form>
            
            <br>
            
           
                 
        </center>
    </body>
</html>
