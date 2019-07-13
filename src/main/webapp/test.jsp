<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/4
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <script type="text/javascript" src="/js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <%--大屏幕 大于1200  col-lg-2 显示6个
            中屏幕 大于992<1200   col-md-3 显示4个
            小屏幕 大于768<922    col-sm-6 显示2个
            最小屏 小于768        col-xs-12 显示1个--%>
            <div class="col-xs-6 col-sm-4 col-md-4 col-lg-2 " style="border: 1px solid red;">1111111</div>
            <div class="col-xs-6 col-sm-4 col-md-4 col-lg-2 " style="border: 1px solid red;">1111111</div>
            <div class="col-xs-6 col-sm-4 col-md-4 col-lg-2 " style="border: 1px solid red;">1111111</div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 " style="border: 1px solid red;">1111111</div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 " style="border: 1px solid red;">1111111</div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2 " style="border: 1px solid red;">1111111</div>
        </div>



    <h1>我是标题</h1>
    <span class="h1">我是标题span</span> <br/>

    <%--高亮--%>
    you can use  the mark  tag to <mark> hight hight</mark>
    <br/>
    <%--删除线--%>
    you can use  the mark  tag to <del> hight hight</del>
    <%--文本对齐类 将文本重新对齐--%>
    <p class="text-left">Left aligned text.</p>
    <p class="text-center">Center aligned text.</p>
    <p class="text-right">Right aligned text.</p>
    <p class="text-justify">Justified text.</p>
    <p class="text-nowrap">No wrap text.</p>

    <div class="table-responsive">
        <table class="table" >
            <tr class="success">
                <td>11111</td>
                <td>22222</td>
            </tr>
            <tr class="danger">
                <td>11111</td>
                <td>22222</td>
            </tr>
        </table>
    </div>
        <%------- 表 单 ------------------------------------------------------------------%>
        <%---把标签和控件放在一个带有 class .form-group 的 <div> 中。
        这是获取最佳间距所必需的。
        -向所有的文本元素 <input>、<textarea> 和 <select> 添加 class ="form-control" 。
        --%>
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="exampleInputFile">File input</label>
                <input type="file" id="exampleInputFile">
                <p class="help-block">Example block-level help text here.</p>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox"> Check me out
                </label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>

        <%--为 <form> 元素添加 .form-inline
        类可使其内容左对齐并且表现为 inline-block 级别的控件。--%>

        <form class="form-inline">
            <div class="form-group">
                <label for="exampleInputName2">Name</label>
                <input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail2">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
            </div>
            <button type="submit" class="btn btn-default">Send invitation</button>
        </form>
`       <%--通过为表单添加 .form-horizontal 类，并联合使用 Bootstrap 预置的栅格类，
        可以将 label 标签和控件组水平并排布局。这样做将改变 .form-group 的行为--%>
        <form class="form-horizontal">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Remember me
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-default">Sign in</button>
                </div>
            </div>
        </form>
        <%--通过将 .checkbox-inline 或 .radio-inline 类应用到一系列的多选框（checkbox）或单选框（radio）控件上，可以使这些控件排列在一行。--%>
        <label class="checkbox-inline">
            <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
        </label>
        <label class="checkbox-inline">
            <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
        </label>
        <label class="checkbox-inline">
            <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
        </label>
        <label class="radio-inline">
            <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
        </label>
        <label class="radio-inline">
            <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
        </label>
        <label class="radio-inline">
            <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3
        </label>
        <%--下拉列表--%>
        <select class="form-control">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>

        <select multiple class="form-control">
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
        </select>

        <form class="form-horizontal">
            <div class="form-group">
                <label class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                    <p class="form-control-static">email@example.com</p>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                </div>
            </div>
        </form>
        <%--Bootstrap 对表单控件的校验状态，如 error、warning 和 success 状态，都定义了样式。
        使用时，添加 .has-warning、.has-error 或 .has-success 类到这些控件的父元素即可。
任何包含在此元素之内的 .control-label、.form-control 和 .help-block 元素都将接受这些校验状态的样式。--%>
        <div class="form-group has-success">
            <label class="control-label" for="inputSuccess1">Input with success</label>
            <input type="text" class="form-control" id="inputSuccess1" aria-describedby="helpBlock2">
            <span id="helpBlock2" class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
        </div>
        <div class="form-group has-warning">
            <label class="control-label" for="inputWarning1">Input with warning</label>
            <input type="text" class="form-control" id="inputWarning1">
        </div>
        <div class="form-group has-error">
            <label class="control-label" for="inputError1">Input with error</label>
            <input type="text" class="form-control" id="inputError1">
        </div>
        <div class="has-success">
            <div class="checkbox">
                <label>
                    <input type="checkbox" id="checkboxSuccess" value="option1">
                    Checkbox with success
                </label>
            </div>
        </div>
        <div class="has-warning">
            <div class="checkbox">
                <label>
                    <input type="checkbox" id="checkboxWarning" value="option1">
                    Checkbox with warning
                </label>
            </div>
        </div>
        <div class="has-error">
            <div class="checkbox">
                <label>
                    <input type="checkbox" id="checkboxError" value="option1">
                    Checkbox with error
                </label>
            </div>
        </div>
        <%--class =  btn 将任何东西变成按钮 需要配合  btn-default a标签也可以--%>
        1.按钮颜色
        <!-- Standard button -->
        <button type="button" class="btn btn-default">（默认样式）Default</button>

        <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
        <button type="button" class="btn btn-primary">（首选项）Primary</button>

        <!-- Indicates a successful or positive action -->
        <button type="button" class="btn btn-success">（成功）Success</button>

        <!-- Contextual button for informational alert messages -->
        <button type="button" class="btn btn-info">（一般信息）Info</button>

        <!-- Indicates caution should be taken with this action -->
        <button type="button" class="btn btn-warning">（警告）Warning</button>

        <!-- Indicates a dangerous or potentially negative action -->
        <button type="button" class="btn btn-danger">（危险）Danger</button>

        <!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
        <button type="button" class="btn btn-link">（链接）Link</button>

        2.成组button
        <div class="btn-group" data-toggle="buttons">
            <label class="btn btn-primary">
                <input type="radio" name="options" id="option1"> 选项 1
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="options" id="option2"> 选项 2
            </label>
            <label class="btn btn-primary">
                <input type="radio" name="options" id="option3"> 选项 3
            </label>
        </div>

        <p>
            <button type="button" class="btn btn-primary btn-lg">（大按钮）Large button</button>
            <button type="button" class="btn btn-default btn-lg">（大按钮）Large button</button>
        </p>
        <p>
            <button type="button" class="btn btn-primary">（默认尺寸）Default button</button>
            <button type="button" class="btn btn-default">（默认尺寸）Default button</button>
        </p>
        <p>
            <button type="button" class="btn btn-primary btn-sm">（小按钮）Small button</button>
            <button type="button" class="btn btn-default btn-sm">（小按钮）Small button</button>
        </p>
        <p>
            <button type="button" class="btn btn-primary btn-xs">（超小尺寸）Extra small button</button>
            <button type="button" class="btn btn-default btn-xs">（超小尺寸）Extra small button</button>
        </p>

        <p class="text-muted">...</p>
        <p class="text-primary"><a>88888888888</a></p>
        <p class="text-success"><a>88888888888</a></p>
        <p class="text-info">...</p>
        <p class="text-warning">...</p>
        <p class="text-danger"><a>88888888888</a></p>


        <div class="dropdown">
            <!-- 下拉框 触发按钮 -->
            <button class="btn btn-success dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                下拉框
                <!--下拉框图片-->
                <span class="glyphicon glyphicon-arrow-down"></span>
            </button>
            <!-- 下拉菜单-->
            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
            </ul>
        </div>
        <div class="btn-group" role="group" aria-label="...">
            <button type="button" class="btn btn-default">Left</button>
            <button type="button" class="btn btn-default">Middle</button>
            <button type="button" class="btn btn-default">Right</button>
        </div>

        <div class="btn-toolbar" role="toolbar" aria-label="...">
            <div class="btn-group" role="group" aria-label="...">...</div>
            <div class="btn-group" role="group" aria-label="...">...</div>
            <div class="btn-group" role="group" aria-label="...">...</div>
        </div>




    </div>
</body>
</html>
