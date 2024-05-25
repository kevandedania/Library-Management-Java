<%-- 
    Document   : LogoutHeader
    Created on : Nov 4, 2020, 9:28:07 PM
    Author     : kevan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.setAttribute("loginAdmin", null);
session.invalidate();
response.sendRedirect("index.html");
%>