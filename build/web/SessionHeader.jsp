<%-- 
    Document   : SessionHeader
    Created on : Nov 4, 2020, 9:28:34 PM
    Author     : kevan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${empty sessionScope['loginAdmin']}">
    <c:redirect url="login.jsp" />
</c:if>
 
<c:out value="${sessionScope['loginAdmin']}" />