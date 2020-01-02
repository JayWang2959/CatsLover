<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2020/1/1
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.lang.String"%>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>投票处理界面</title>
</head>
<body background="images/1.jpg">
<center>
    <h1>感谢您的参与</h1>
</center>
<form action="/vote3" method="post"  enctype="multipart/form-data">
感谢您投了宝贵的一票!

<a href="homepage.jsp">点击此处回到主界面</a>

<a href="vote.jsp">点击回到投票界面</a>
<p></p>
</form>
</body>
</html>