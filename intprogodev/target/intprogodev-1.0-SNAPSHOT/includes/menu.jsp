<%-- 
    Document   : menu.jsp
    Created on : 23 Ara 2022, 10:51:26
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table width="100%" cellpadding="0" cellspacing="0" border="1">
    <tr>
        <td>
    <div id="nav-menu">
        <ul>
            <li><a href="./index.jsp"> Ana Sayfa </a> </li>
            <li><a href="./login.jsp"> veri ekle </a> </li>
            <li><a href="./listele.jsp"> Listele </a> </li>
            <li><a href="./güncelle.jsp"> Güncelle </a> </li>

        </ul>


    </div>

</td>
<td align="right" style=" padding-right: 5px; ">
    <jsp:include page="loginbox.jsp"></jsp:include>    
</td>
</tr>


</table>
