<%--
  Created by IntelliJ IDEA.
  User: wangj
  Date: 2020/1/1
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%--    <title>Title</title>--%>
</head>
<body>
<br><br><br>
关注列表
<c:forEach items="${focus_info}" var="CatsloverUser">
        <table>
        <tr>
                <td>${CatsloverUser.userId}</td>
                <td>${CatsloverUser.userUsername}</td>
        </tr>
        </table>
</c:forEach>

</body>
</html>
