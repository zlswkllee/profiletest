<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/29
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改</title>
</head>
<body>
<form action="/profile/update" method="post" enctype="multipart/form-data">
    编号：<input type="text" name="id" value="${profile.id}" readonly="readonly"><br>
    姓名：<input type="text" name="name" value="${profile.name}"><br>
    生日：<input type="date" name="birthday" value="${profile.birthday}"><br>
    性别：<input type="text" name="gender" value="${profile.gender}"><br>
    职业：<input type="text" name="career" value="${profile.career}"><br>
    住所：<input type="text" name="address" value="${profile.address}"><br>
    电话：<input type="text" name="mobile" value="${profile.mobile}"><br>
    头像：<input type="file" name="picture"><br>
    <input type="submit" value="修改">
</form>
<a href="/profile/home"><button>返回</button></a>
</body>
</html>
