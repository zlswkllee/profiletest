<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>明细</title>
</head>
<body>
<table align="center" border="1px"  cellpadding="0px" cellspacing="0px">
    <tr>
        <td>编号</td>
        <td>${profile.id}</td>
    </tr>
    <tr>
        <td>姓名</td>
        <td>${profile.name}</td>
    </tr>
    <tr>
        <td>生日</td>
        <td>${profile.birthday}</td>
    </tr>
    <tr>
        <td>性别</td>
        <td>${profile.gender}</td>
    </tr>
    <tr>
        <td>职业</td>
        <td>${profile.career}</td>
    </tr>
    <tr>
        <td>住所</td>
        <td>${profile.address}</td>
    </tr>
    <tr>
        <td>电话</td>
        <td>${profile.mobile}</td>
    </tr>
    
</table>
<img src="/img/${profile.picture}">
<br>
<a href="/profile/home"><button>返回</button></a>
</body>
</html>
