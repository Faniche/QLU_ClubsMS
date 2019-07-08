<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/25
  Time: 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>申请创建社团</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="jumbotron-narrow.css" rel="stylesheet">
    <script src="../../assets/js/ie8-responsive-file-warning.js"></script>
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
<div>
    <br>&nbsp;<br>
</div>
<div class="container">
    <div class="jumbotron" align="center">
        <h1>新社团申请表</h1><br>
        &nbsp;<br>
        <form action="${pageContext.request.contextPath}/apply/createClubApply" method="post" class="form-horizontal">
            <div class="row d-flex justify-content-center">
                <div align="center">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-4 control-label">社团名字:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="name" id="inputEmail3" placeholder="确定你的社团名字">
                        </div>
                    </div>
                    <p class="lead">对你的新社团做简单介绍</p>
                    <textarea  class="col-sm-12 form-control" name="descript"  rows="6" cols="65"  ></textarea>
                    </div>
                    <br>&nbsp<br>
                    <input type="submit" class="btn btn-lg btn-success" value="提交申请" >  &nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
                    <a class="btn btn-lg btn-info" onclick="window.history.()">返回上层</a>
                </div>
        </form>
    </div>
</div>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
