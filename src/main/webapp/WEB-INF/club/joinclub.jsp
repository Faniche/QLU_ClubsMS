<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/25
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>申请加入社团</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="jumbotron-narrow.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">


    <div class="jumbotron" align="center">
        <h1>加入社团申请表</h1><br>
        &nbsp;<br>
        <form action="" method="" class="form-horizontal">

            <div class="row d-flex justify-content-center">
                <div align="center">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-4 control-label">社团名字</label>
                        <div class="col-sm-4">
                            <input type="email" class="form-control" name="joinclubname" id="inputEmail3" placeholder="确定你要加入的社团名字">
                        </div>
                    </div>
                    <div  class="col-sm-12">
                        <p class="lead">对你自己做简单介绍，为什么加入社团？</p>
                        <textarea  class="col-sm-4 form-control" name="joinclubmessage" rows="10" cols="80" >

                    </textarea>
                    </div>
                    <br>&nbsp<br>

                    <input type="submit" class="btn btn-lg btn-success" value="提交申请" >  &nbsp&nbsp&nbsp&nbsp&nbsp
                    &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
                    <a class="btn btn-lg btn-success" href="club.jsp" role="button">返回上层</a>

                </div>
            </div>


        </form>
    </div>





</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
