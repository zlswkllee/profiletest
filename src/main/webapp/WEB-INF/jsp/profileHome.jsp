<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/28
  Time: 19:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>


    <script>
        $(function(){

            $(".del").click(function(){
                var id = $(this).attr("id");
                alert(id);
                $.post("/profile/delete/"+id,{"_method":"delete"}, function(profile){

                  $("#tr"+id).remove();

                    alert(profile.name);
                },"json");
            });
        });
    </script>
</head>
<body>
    <div><span>您好！ ${sessionScope.user.username}&nbsp;<a href="/leave">我要请假</a><a href="/leaveList">审批假条</a> <a href="/user/log">退出</a></span></div>
    <div>
    <table align="center" border="1px" width="60%" cellpadding="0px" cellspacing="0px">
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>生日</th>
            <th>性别</th>
            <th>职业</th>
            <th>住所</th>
            <th>电话</th>
            <th>管理员</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${pageInfo.list}" var="i" varStatus="index">
            <tr id = "tr${i.id}">
                <td>${i.id}</td>
                <td>${i.name}</td>
                <td>${i.birthday}</td>
                <td>${i.gender}</td>
                <td>${i.career}</td>
                <td>${i.address}</td>
                <td>${i.mobile}</td>
                <td>${i.user.username}</td>
                <td><a href="/profile/detail?id=${i.id}"><button id="detail">明细</button></a> <a href="/profile/updatePre?id=${i.id}"><button id="update">修改</button></a><button id="${i.id}" class="del">删除</button></td>
            </tr>
        </c:forEach>
    </table>

    </div>
        <div >
            当前第${pageInfo.pageNum}页.总共${pageInfo.pages}页.共${pageInfo.total}条记录&nbsp;
            <c:if test="${pageInfo.hasPreviousPage==false }">
                首页|上一页
            </c:if>
            <c:if test="${pageInfo.hasPreviousPage==true }">
                <a href= "/profile/home?pn=1">首页</a>
                <a href= "/profile/home?pn=${pageInfo.pageNum-1 }">上一页</a>
            </c:if>

            <c:forEach items="${pageInfo.navigatepageNums}" var="page_num">
                <c:if test="${page_num == pageInfo.pageNum}">
                    <a href="javascript:void(0)">${page_num}</a>
                </c:if>
                <c:if test="${page_num != pageInfo.pageNum}">
                    <a href="/profile/home?pn=${page_num}">${page_num}</a>
                </c:if>
            </c:forEach>

            <c:if test="${pageInfo.hasNextPage==false }">
                下一页|尾页
            </c:if>
            <c:if test="${pageInfo.hasNextPage==true }">
                <a href= "/profile/home?pn=${pageInfo.pageNum+1 }">下一页</a>
                <a href= "/profile/home?pn=${pageInfo.pages }">尾页</a>
            </c:if>
        </div>


</body>
</html>
