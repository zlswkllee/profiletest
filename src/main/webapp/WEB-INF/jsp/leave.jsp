<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/10
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/addLeave" method="post">
        <input type="text" name="startDate"><br>
        <input type="text" name="endDate"><br>
        <input type="text" name="reason"><br>
        <input type="submit" value="提交">
    </form>
</body>
</html>
