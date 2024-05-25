<%-- 
    Document   : Welcome to Admin
    Created on : Sep 26, 2020, 3:38:32 PM
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
        <title>Welcome to Admin Panel</title>
        
        
        <style>
body{
  background-image: url('2.jpg');
}

</style>
<style>
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: darkblue;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
  
 
}
</style>
<style> th {color : deeppink;} </style>
<style> td {color : black; } </style> 
    </head>
    <body >

        Hello <%@include file="SessionHeader.jsp" %>,
        <a  href="LogoutHeader.jsp">Logout</a>
        <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/library"
         user = "root"  password = ""/>
 
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from lib;
        </sql:query>
    <center>
        <form>
            <div>
            <table >
                
                    <div>
                        <h2>Marwadi University LIBRARY BOOKS</h2>
                    </div>
                
                <tr>
                    <th>ID</th>
                    <th>TITLE</th>
                    <th>AUTHOR NAME</th>
                    <th>LOCATION</th>
                    <th>CALL_NO</th>
                    <th>TYPE</th>
                    <th>ACCOUNT_NO</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.Id}"/></td>
                        <td><c:out value="${row.Title}"/></td>
                        <td><c:out value="${row.Author_name}"/></td>
                        <td><c:out value="${row.Location}"/></td>
                        <td><c:out value="${row.Call_Number}"/></td>
                        <td><c:out value="${row.Type}"/></td>
                        <td><c:out value="${row.Acc_no}"/></td>
                        <td><a  href="Updateq.jsp?id=<c:out value="${row.Id}"/>">Update</a></td>
                        <td><a  href="Deleteq.jsp?id=<c:out value="${row.Id}"/>">Delete</a></td>                        
                    </tr>
                </c:forEach>    
            </table>
            </div>     
        </form>
        <br>
        <div >
        <h3>OR</h3>
        </div>
        <br>
        <form action="Enterq.jsp" method="POST">
                  
                 
                    <br>
                    <br> 
                    Id : <input type ="text" name = "idofbook" />
                    <br>
                    
                  <div >
                    <div >
                        <label>Title</label>
                        <input type = "text" name = "title"/>
                    </div>
                    <div >
                        <label>Author Name</label>
                        <input type = "text" name = "auth"/>
                    </div>
            </div>
            <div >
                <div >
                    <label>Location</label>
                    <input type = "text" name = "loc"/>
                </div>
                <div >
                    <label>Call Number</label>
                    <input type = "text" name = "call" 
            </div>
                <div >
                <div >
                    <label>Type</label>
                    <input type = "text" name = "type" />
                </div>
                <div >
                    <label>Account No</label>
                    <input type = "text" name = "acc" />
                </div>
            </div>
                   
                    
                    <br>
               
                    
                    
                    <input type="submit" value="Enter"/>
                   
           
                    
                             
            </form>
            
                 
    </center>
        
    </body>
</html>
