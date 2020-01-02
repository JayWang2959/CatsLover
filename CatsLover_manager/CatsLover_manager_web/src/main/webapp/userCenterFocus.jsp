<%@ page import="com.CatsLover.pojo.CatsloverUser" %><%--
  Created by IntelliJ IDEA.
  User: wangj
  Date: 2020/1/1
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--<script language="javascript">--%>
<%--        function test () {--%>
<%--                $.ajax({--%>
<%--                        type: "Post",--%>
<%--                        url: "deleteUserFocusInfo",      //你的controller地址--%>
<%--                        data: {${CatsloverUser.userId}}--%>
<%--                });--%>
<%--        }--%>
<%--</script>--%>
<html>
<head>
<%--    <title>Title</title>--%>
<style>
        .div-td{width: 800px}
        .div-td table td{
                background: #f6f6f6; color: #344159; line-height: 40px;
        }
</style>
</head>
<body>
<div class="div-td">
<br><br><br>
关注列表
<table>
                <tr>
                        <td>ID</td>
                        <td>用户名</td>
                </tr>
        <c:forEach items="${focus_info}" var="CatsloverUser">

                <tr>
                        <td>${CatsloverUser.userId}</td>
                        <td>${CatsloverUser.userUsername}</td>
<%--                        <td><input type="button" value="取消关注" οnclick="test();"/></td>--%>
                        <td><a href="/deleteUserFocusInfo?userId=${CatsloverUser.userId}" >取消关注</a></td>
                </tr>
        </c:forEach>
</table>
</div>
</body>
</html>
