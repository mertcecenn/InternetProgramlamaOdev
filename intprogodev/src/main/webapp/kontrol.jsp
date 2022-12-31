<%-- 
    Document   : kontrol.jsp
    Created on : 21 Ara 2022, 12:56:20
    Author     : Asus
--%>



<!DOCTYPE html>
<html>
    <head>
<%@ page import="java.io.*" %>
<%@ page language="java" import="java.sql.*"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <%
String ADI = request.getParameter("ADI");
String SOYAD = request.getParameter("sifre");
String ögrno = request.getParameter("ögrno");
    %>
   <%
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost/test?useUnicode=true&characterEncoding=UTF-8";
Connection con = null;
int id = 0;
try {
Class.forName(driver);
} catch (Exception e) {
System.exit(0);
}
try {
con = DriverManager.getConnection(url, "root", "mert2323");
} catch (Exception e) {
System.exit(0);
}
%>


</body>
</html>
