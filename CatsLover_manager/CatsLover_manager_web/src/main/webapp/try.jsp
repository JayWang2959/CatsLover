<%--
  Created by IntelliJ IDEA.
  User: wangj
  Date: 2020/1/1
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    hahahaa
    <c:forEach var="i" begin="1" end="5">
    Item <c:out value="${i}"/><p>
        </c:forEach>
</body>
</html>
