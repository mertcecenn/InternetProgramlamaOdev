<%-- 
    Document   : login.jsp
    Created on : 23 Ara 2022, 12:26:31
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="com.microsoft.sqlserver.jdbc.*"%>
<%@page import="MyP.User"%>
<
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
                <img src="" alt="alt"/>
        </td>

        </tr>
        <tr>
            <td height="25">
                <jsp:include page="/includes/menu.jsp"></jsp:include>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <form action="login.jsp" method="POST">
                        <fieldset>
                            <legend>Kullanıcı girişi</legend>
                            <table>
                                <tr>
                                    <td width="100%" align="right" >
                                        <b>Kullanici adi </b>

                                    </td>
                                    <td> <input type="text" name="userName" value="" /> </td>
                                </tr>  
                                <tr>
                                    <td width="100%" align="right" >
                                        <b>Sifre</b>

                                    </td>
                                    <td> <input type="password" name="password" value="" /> </td>
                                </tr>
                                <tr><td colspan="2">
                                <input type="submit" value="Giris Yap" /> 
                                <input type="reset" value="Temizle" />
                                </td></tr> 
                                

                                <tr><td colspan="2">
                                    <%
                                        String pageBack = request.getParameter("returnUrl");
                                        if(pageBack!=null){
                                        session.setAttribute("returnUrl",request.getParameter("returnUrl") );
                                        
                                        }
                                        String username = request.getParameter("userName");
                                        String password = request.getParameter("password");
                                        if (username != null) {
                                            SQLServerDataSource db = new SQLServerDataSource();
                                            db.setDatabaseName("deneme");
                                            db.setServerName("localhost");
                                            db.setUser("mert");
                                            db.setPassword("mert");
                                            Connection con = db.getConnection();
                                            PreparedStatement pstmt = con.prepareStatement("Select Firstname,Lastname from Table_1 where Username=? and Password=?  ");
                                            pstmt.setString(1, username);
                                            pstmt.setString(2, password);
                                            ResultSet sonuc = pstmt.executeQuery();
                                            if (sonuc.next()) {
                                                User user = new User();                                      
                                                user.setAd(sonuc.getString("Firstname"));
                                                user.setSoyad(sonuc.getString("Lastname"));
                                                session.setAttribute("userınfo ", user);

                                                if (session.getAttribute("returnUrl") != null) {
                                                    response.sendRedirect("./" + session.getAttribute("returnUrl") + ".jsp");
                                                } else {
                                                    response.sendRedirect("intprogodev/index.jsp");
                                                    session.setAttribute("returnUrl ",null);
                                                }

                                            } else {
                                    %> 
                                    Kullanıcı Bulunamadı
                                    <%
                                            }
                                              sonuc.close();
                                              pstmt.close();
                                              con.close();
                                        }
                                    %> 
                                </td></tr>

                        </table>
                    </fieldset>
                </form>
            </td>
        </tr>
        <tr><td>
                
            </td></tr>
    </table>   

    </<center>
        </body>
        </html>
