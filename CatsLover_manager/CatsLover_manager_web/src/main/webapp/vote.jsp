<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/28
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding ="UTF-8" language="java"
         import="java.sql.*,java.util.*,com.jspsmart.upload.*,java.io.*,java.awt.Image,java.awt.image.*"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>投票界面</title>
</head>

<body background="images/1.jpg">
<center>
    <h1>欢迎进入投票系统</h1>
</center>
<form action="/vote2" method="post"  enctype="multipart/form-data">
<center><h3>参赛信息</h3></center>
<table border="6" width="100%" bordercolorlight="#CC99F" cellpadding="2" bordercolordark="#FFFFFF" cellspacing="0">
    <tr bgcolor="#FFF">
        <td align="center">猫咪昵称</td>
        <td align="center">主人id</td>
        <td align="center">参赛宣言</td>
        <td align="center">参赛图片</td>
        <td align="center">票数</td>
    </tr>

    <tr bgcolor="#FFF">
        <td align="center" name="cat_name"> </td>
        <td align="center" name="user_id"> </td>
        <td align="center" name="apply"> </td>
        <td align="center"><img src="images/a3.jpg" width="60" height="30" alt=""/></td>
        <td align="center" name="vote"> </td>
    </tr>

</table>

<img src="images/a3.jpg" width="100" height="100" alt=""/>
<input type="button" value="我要投票"  action="/vote3" method="post"  enctype="multipart/form-data">

<a href="homepage.jsp">点击返回主页面</a>
</form>
</body>
</html>
