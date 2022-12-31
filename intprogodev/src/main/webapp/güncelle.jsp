<%-- 
    Document   : hakkimizda.jsp
    Created on : 24 Ara 2022, 14:26:48
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MyP.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <table>
        <tr>
            <td>
        <img src="./ımages/kullanıcı.png" alt="Otomasyon logo"/>
    </td>

</tr>
<tr>
    <td height="25">
        <jsp:include page="/includes/menu.jsp"></jsp:include>
        </td>
    </tr>
    <tr>
        <td valign="top">
        <%
            User user = (User) session.getAttribute("userınfo");
            if (user == null) {
                // login olmamış
        %>
        <table>
            <tr>
                <td align="center">
                    Bu sayfayı görmek için Giriş yapmalısınız
                    <br>
                    Giriş yapmak için <a href="./login.jsp?returnUrl=hakkimizda"> Tıklayınız</a>
                </td>
            </tr>
        </table>
        <%
        } else {
        %>
        Otomasyon sistemine hoşgeldiniz
        <%
            }
        %>
    </td>
</tr>
<tr><td>
     
    </td></tr>
</table>   

</body>
</html>
