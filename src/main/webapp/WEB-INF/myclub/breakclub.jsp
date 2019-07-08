<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/25
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>解散社团</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="jumbotron-narrow.css" rel="stylesheet">
    <script src="../../assets/js/ie8-responsive-file-warning.js"></script>
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
<div class="container">

    <div class="jumbotron">
        <form action="${pageContext.request.contextPath}/apply/destroyClubApply" method="post" class="form-horizontal">
            <div align="center"> <h2>社团详细信息展示</h2></div><br>&nbsp;<br>
            <div class="speaker-wrap ftco-animate d-flex">
                <div class="text pl-md-5">
                    <h4 class="speaker-name"><span class="position">社团名字：${clubDetail.clubs.name}</span></h4>
                    <h4 class="speaker-name"> <span class="position">社团编号：${clubDetail.clubs.id}</span></h4>
                    <h4 class="speaker-name"> <span class="position">社长：${clubDetail.leader}</span></h4>
                    <h5 class="speaker-name"> <span class="position">社团简介：</span></h5>
                    <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${clubDetail.clubs.descript}</p>
                    <div align="right"><span class="time">成立时间:${clubDetail.clubs.establisheddate}</span></div><br>&nbsp;<br>
                </div>
            </div >
            <div align="center">
                <input type="hidden" name="clubId" value="${clubDetail.clubs.id}">
                <input type="submit" class="btn btn-lg btn-danger" value="申请解散社团" >  &nbsp&nbsp&nbsp&nbsp&nbsp
                &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
                <a class="btn btn-lg btn-success" onclick="window.history.back()" role="button">返回上层</a>
            </div>
        </form>
    </div>
</div>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</body>
</html>