<%-- 
    Document   : loginbox.jsp
    Created on : 23 Ara 2022, 11:02:46
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MyP.User"%>

<%
User user= (User)session.getAttribute("userınfo");
if(user==null){
    // login olmamış
    
    %>
    
    <a href="login.jsp">Giris Yap</a>
    <%
    }
else{
// login olmuş 
%>
    <%=user.toString()%> <a href="logout.jsp">Cikis yap </a> 
<%
}
%> 