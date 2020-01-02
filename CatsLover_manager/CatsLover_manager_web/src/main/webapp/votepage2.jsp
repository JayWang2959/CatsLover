<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/29
  Time: 15:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding ="UTF-8" language="java" %>
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

<body>

<h1>给最好的你 分享你最爱的猫猫</h1>
<h1>比赛    报名</h1>
<div class="app-cam">
    <div class="cam"><img src="images/cat_sign.png" class="img-responsive" alt="" /></div>
    <form action="/vote" method="post">

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
