<%-- 
    Document   : logout
    Created on : 24 Ara 2022, 12:47:56
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
session.setAttribute("userınfo",null);
response.sendRedirect("./index.jsp");
%>
