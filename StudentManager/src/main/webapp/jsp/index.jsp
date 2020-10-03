<%--
  Created by IntelliJ IDEA.
  User: 39740
  Date: 2020/10/3
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px" width="600px">
    <tr align="center">
        <td colspan="6">
            <h4>学员信息列表</h4>
        </td>
    </tr>
    <tr align="center">
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>住址</td>
        <td>邮编</td>
    </tr>
    <c:forEach items="${student}" var="item">
        <tr align="center">
            <td><a href="/upd/${item.sid}">${item.sid}</a></td>
            <td>${item.sname}</td>
            <td>${item.sgender}</td>
            <td>${item.sage}</td>
            <td>${item.saddress}</td>
            <td>${item.semail}</td>
        </tr>
    </c:forEach>
</table>
<p style="color:red;">${msg}</p>
</body>
</html>
