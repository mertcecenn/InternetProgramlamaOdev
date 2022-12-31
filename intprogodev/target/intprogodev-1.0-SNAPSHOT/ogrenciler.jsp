<%-- 
    Document   : urunler.jsp
    Created on : 24 Ara 2022, 14:46:49
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.microsoft.sqlserver.jdbc.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
   <center>
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
                <table>
                    <tr>
                        <td>
                            <% 
                                            SQLServerDataSource db = new SQLServerDataSource();
                                            db.setDatabaseName("deneme");
                                            db.setServerName("localhost");
                                            db.setUser("mert");
                                            db.setPassword("mert2323");
                                            Connection con = db.getConnection();
                                          
                            %>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr><td>
                <ul>
                    <li> 23 mert cecen </li>
                    </li>25 harun bulgak </li>
                    <li> 28 cem bilbay </li>        
                </ul>
            </td></tr>
    </table>   

    </<center>
</body>
</html>
