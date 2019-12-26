<%@ page contentType="text/html;charset=UTF-8" pageEncoding ="UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>CatsLovervote</title>
</head>
<link href="css/votestyle.css" rel='stylesheet' type='text/css' />
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
<div class="app-cam">
    <div class="cam"><img src="images/cat_sign.png" class="img-responsive" alt="" /></div>
    <form action="/try" method="post">
        <input name="temp" type="text" placeholder="Id" class="text"  >
        <input name="passw" type="password" placeholder="Password">
        <br>
        <font color="white"> ${error}</font>
        <br>

        <div class="submit"><input type="submit" onclick="myFunction()" value="Sign in" ></div>
        <div class="clear"></div>
        <div class="buttons">
        </div>
        <div class="new">
            <%--                <p><a href="#">Forgot Password ?</a></p>--%>
            <p class="sign">New here ?<a href="submitpage.jsp"> Sign Up</a></p>
            <div class="clear"></div>
        </div>
    </form>
</div>
<!--start-copyright-->
<!--http://localhost:8081/CatsLover_manager_web/src/main/java/com/CatsLover/controller/infotry/infopassw?temp=11&pass=22-->
<!--//end-copyright-->

</body>
</html>
