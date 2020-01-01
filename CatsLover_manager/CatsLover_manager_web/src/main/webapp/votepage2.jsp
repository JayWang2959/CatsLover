<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/29
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding ="UTF-8" language="java"
         import="java.sql.*,java.util.*,com.jspsmart.upload.*,java.io.*,java.awt.Image,java.awt.image.*"%>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>CatsLover</title>
</head>
<link href="css/style2.css" rel='stylesheet' type='text/css' />
<style>
    input:focus{
        border-color: #66afe9;
        outline: 0;
        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
        box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
    }
</style>
<%--<style>--%>
<%--    input:focus{--%>
<%--        border-color: #66afe9;--%>
<%--        outline: 0;--%>
<%--        -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);--%>
<%--        box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)--%>
<%--    }--%>
<%--    body {--%>
<%--        color: #000;--%>
<%--        background: #fff;--%>
<%--        font-size: 12px;--%>
<%--        line-height: 166.6%;--%>
<%--        text-align: center;--%>
<%--    }--%>
<%--    body {--%>
<%--        display: block;--%>
<%--        margin: 8px;--%>
<%--    }--%>
<%--</style>--%>
<body>
<%--    <form action="logincheck.form" class="form-horizontal">--%>
<%--        <div class="control-group">--%>
<%--            <label class="control-label">账户</label>--%>
<%--            <input name="temp" placeholder="Id" type="text" width="200px" height="50px"/>--%>
<%--        </div>--%>
<%--        <br>--%>
<%--        <div class="control-group">--%>
<%--            <label class="control-label">密码</label>--%>
<%--            <input name="passw" placeholder="Password" type="text" width="200px" height="50px"/>--%>
<%--            <font color="red">${error}</font>--%>
<%--        </div>--%>
<%--        <br>--%>
<%--&lt;%&ndash;        <input name="passw" type="text" width="200px" height="50px"/>&ndash;%&gt;--%>
<%--        <input type="submit" value="登录">--%>
<%--        <!--<input name="password" type="text" width="200px" height="50px"/>-->--%>
<%--    </form>--%>
<%--    <button onclick="window.location='submit.jsp'">注册</button>--%>


<h1>给最好的你 分享你最爱的猫猫</h1>
<h1>比赛    报名</h1>
<div class="app-cam">
    <div class="cam"><img src="images/cat_sign.png" class="img-responsive" alt="" /></div>
    <form action="/vote" method="post"  enctype="multipart/form-data">

        <input type="text" name="cat_name" placeholder="Cat's name">
        <input type="text" name="user_id" placeholder="Your user_id">
        <input type="text" name="apply" placeholder="Your entry statement">
<%--        <input type="file" name="photo" value="" >--%>

        <br>
        <font color="white"> ${error}</font>
        <br>

        <div class="submit"><input type="submit" onclick="myFunction()" value="Submit" ></div>
        <div class="clear"></div>
        <div class="buttons">
        </div>

    </form>
</div>
<!--start-copyright-->
<!--http://localhost:8081/CatsLover_manager_web/src/main/java/com/CatsLover/controller/infotry/infopassw?temp=11&pass=22-->
<!--//end-copyright-->

</body>
</html>
