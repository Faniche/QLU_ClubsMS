<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/7/6
  Time: 22:46
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <title>社员管理</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="dashboard.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-sm-offset-3 col-md-12 col-md-offset-0 main">
            <div align="center"> <h1 class="page-header">社团成员管理</h1>
                <div>
                    &nbsp;<br>
                </div>
            </div>
            <h2 class="sub-header">可添加或者删除社员</h2>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>学号</th>
                        <th>姓名</th>
                        <th>邮箱</th>
                        <th>登录名</th>
                        <th>密码</th>
                        <td clospan="2" align="center"><b>操作</b></td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="item" items="${allLoginList}" >
                    <tr>
                        <td>${item.id}</td>
                        <th>${item.name}</th>
                        <td>${item.email}</td>
                        <td>${item.username}</td>
                        <td>${item.password}</td>
                        <td><a href="${pageContext.request.contextPath}/member/delete/${item.id}" >删除</a>&nbsp;&nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/member/insert">添加</a>${msg}
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
<%--                <form action="${pageContext.request.contextPath}/member/insert" method="post">--%>
<%--                <table class="table table-striped">--%>
<%--                    <tr>--%>
<%--                        <td>--%>
<%--                        <td>        学号：<input type="text" name="stuName"> </td>--%>
<%--                        <td>        姓名：<input type="text" name="name"> </td>--%>
<%--                        <td>       clubid：<input type="date" name="clubid"> </td>--%>
<%--                        <td>       入团日期：<input type="date" name="brithday"> </td>--%>
<%--                        <td>       <input type="submit" value="添加"></td>--%>
<%--                    </tr>--%>
<%--                </table>--%>
<%--                </form>--%>
            </div>
            <div>
                &nbsp;
            </div>

            <div align="center" ><button type="button" class="btn btn-warning" onclick="window.history.back()"><h3>点击完成退出</h3></button></div>
        </div>
    </div>
</div>
<form action="" method="post" id="form01">
    <input type="hidden" name="_method" value="delete">
</form>
</div>
<script type="text/javascript">
    $(function(){
        $(".mydel").click(function(){
            //alert(this.href);
            var h=this.href;
            $("#form01").attr("action",h).submit();

            return false;
        });

    });
</script>

<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="../../assets/js/vendor/holder.min.js"></script>
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>


