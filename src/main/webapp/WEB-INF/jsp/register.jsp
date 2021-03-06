<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/28
  Time: 17:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script src="/js/jquery-3.4.1.js"></script>
    <script src="/js/jquery.validate.min.js"></script>
    <script src="/js/messages_zh.js"></script>


    <script>
        $(function(){

            $("#ff").validate({
                rules:{
                    username:"required",
                    password:{required:true,digits:true},
                    repassword:{equalTo:"[name='password']"}

                },
                messages:{
                    username:"必填字段",
                    password:{required:"必填字段",digits:"密码为数字"},
                    repassword:{equalTo:"输入不一致"}
                }
            });
        })
    </script>
    <style type="text/css">

        label.error{
            color:red;
            margin-left: 5px;
        }

    </style>
</head>
<body>
<div class="container">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <div class="panel-title">
                <p class="text-center">
                    登录
                </p>
            </div>
        </div>
    </div>
    <div class="panel-body">
        <form action="/user/registerR" method="post" id="ff" class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-4 control-label" for="username">
                    用户名：
                </label>
                <div class="col-sm-4">
                    <input name="username" type="text" id="username" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="password">
                    密码：
                </label>
                <div class="col-sm-4">
                    <input name="password" type="text" id="password" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label" for="repassword">
                    确认密码：
                </label>
                <div class="col-sm-4">
                    <input name="repassword" type="text" id="repassword" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-2">
                    <button type="submit" class="btn btn-default btn-primary form-control">登录</button>
                </div>
                <div class="col-sm-2">
                    <button type="reset" class="btn btn-default btn-primary form-control">重置</button>
                </div>
            </div>

        </form>
    </div>

</div>




</body>
</html>
