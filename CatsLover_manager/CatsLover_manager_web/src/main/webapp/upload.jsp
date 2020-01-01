<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/28
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=gb2312" language="java"
         import="java.sql.*,java.util.*,com.jspsmart.upload.*,java.io.*,java.awt.Image,java.awt.image.*,java.util.*" errorPage="" %>
<html>
<body>
SmartUpload su = new SmartUpload();//定义一个对象
su.initialize(pageContext);//初始化
su.upload();//上传，这一句必不可少，这是上传的核心，这是将文件上传到项目中而下一句则是把已经上传到项目中的文件保存到指定文件夹内
int count = su.save("/upload");//保存到文件夹upload，必须在项目中创建此文件夹，至于在哪创建，可以根据getContextPath()来获取创建的地址。这个语句返回的是个int型，表示成功上传的文件数。
</body>
</html>