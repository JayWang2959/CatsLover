<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2019/12/28
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>参加比赛</title>
    <style type="text/css">
        h1,h2,h3,h4,h5,h6{ display:inline;}
    </style>
</head>
<body background="images/1.jpg">
<style>
    .white {
        font-size: 60px;
        color:#FF0000;
        font-style:inherit;
    }
    .white {
        font-size: 60px;
        color:#0000FF;
        font-style:inherit;
    }
    .white{
        font-size: 24px;
        color:#FFFF00;
        font-style:inherit;
    }
</style>
<center>
    <h1 class="blue">比赛</h1><h1 >报名</h1><h1 class="red">管理</h1>
</center>
<p></p>
<form action="applyupload.jsp" method="post" enctype="multipart/form-data">
    <div align="center">
        <h1 class="bubble-legend-symbol">请填写详细信息</h1>
        <a  href = "homepage.jsp" >点击返回主界面</a >
    </div>
    <table width="52%" border="3" align="center">yyy
        <td align='center' width="43%" ><div align="center">猫咪昵称:</div></td>
        <td width="50"><div align="left">
            <input type="text" name="cat_name">
            <%--            name    --%>
        </div></td>
        </tr>
        <tr bgcolor="#FFFFCC">
            <td align='center' width="43%" ><div align="center">主人id:</div></td>
            <td width="50"><div align="left">
                <input type="text" name="user_id">
                <%--           sex     --%>
            </div></td>
        </tr>
        <tr bgcolor="#FFFFCC">
            <td align='center' width="43%" ><div align="center">参赛宣言:</div></td>
            <td width="200"><div align="left">
                <input type="text" name="apply">
            </div></td>
        </tr>
<%--        <tr bgcolor="#FFFFCC">--%>
<%--            <td align='center' width="43%" ><div align="center">选择你要参赛的图片:</div></td>--%>
<%--            <td width="200"><div align="left">--%>
<%--                <input type="file" name="photo" value="" />--%>
<%--            </div></td>--%>
<%--        </tr>--%>
        <p></p>
    </table>
    <p align="center">
        <input type="submit" value="提交" name="Submit"/>
        <input type="Reset" value="重置" name="Reset"/>
    <p>
</form>
</body>
</html>
