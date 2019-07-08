<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/25
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>申请加入社团</title>
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
    &nbsp;<br> &nbsp;<br>
</div>

<div class="container">
    <div class="jumbotron" align="center">
        <h1>加入社团申请表</h1><br>
        &nbsp;<br>
        <form action="${pageContext.request.contextPath}/apply/joinClubApply" method="post" class="form-horizontal">
            <div class="row d-flex justify-content-center">
                <div align="center">
                    <div class="form-group">
                        <label  class="col-sm-4 control-label">社团名字</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" name="clubname"  placeholder="${clubname}">
                        </div>
                    </div>
                    <div  class="col-sm-12">
                        <p class="lead">对你自己做简单介绍，为什么加入社团？</p>
                        <textarea  class="col-sm-4 form-control" name="joinclubmessage" rows="10" cols="80" ></textarea>
                    </div>
                    <br>&nbsp<br>
                    <input type="hidden" name="clubid" value="${clubid}"><!--社团ID传入到后台-->
                    <input type="submit" class="btn btn-lg btn-success" value="提交申请" >  &nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
                    <a class="btn btn-lg btn-info" onclick="window.history.back()">返回上层</a>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
