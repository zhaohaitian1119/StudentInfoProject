<%--
  Created by IntelliJ IDEA.
  User: 39740
  Date: 2020/10/3
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/upds" method="post">
    <table border="1px">
        <tr align="center">
            <td colspan="2">
                <h4>
                    学员信息修改
                </h4>
            </td>
        </tr>
        <tr>
            <td>姓名:</td>
            <td>
                <input type="hidden" name="sid" value="${studentinfo.sid}">
                <input type="text" name="sname" value="${studentinfo.sname}">
            </td>
        </tr>
        <tr>
            <td>年龄:</td>
            <td>
                <input type="text" name="sage" value="${studentinfo.sage}">
            </td>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
                <input type="text" name="sgender" value="${studentinfo.sgender}">
            </td>
        </tr>
        <tr>
            <td>家庭住址:</td>
            <td>
                <input type="text" name="saddress" value="${studentinfo.saddress}">
            </td>
        </tr>
        <tr>
            <td>邮箱:</td>
            <td>
                <input type="text" name="semail" value="${studentinfo.semail}">
            </td>
        </tr>
        <tr align="center">
            <td colspan="2">
                <input type="submit" value="提交">
                <input type="reset" value="重置">
            </td>
        </tr>
    </table>
</form>
</body>
</html>

