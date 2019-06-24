<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/22
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<script>
    $().ready(function () {
        if (${sessionScope.logininfo != null}) {
            var obj = document.getElementById("logintowelcome");
            obj.innerText = " Hi, ${sessionScope.logininfo.userName}!";
            $("#goal").attr("href", "${pageContext.request.contextPath}/personal/center.action")
        }
    })
</script>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="home.html"><span>Club</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="home.html" class="nav-link">首页</a></li>
                <li class="nav-item"><a href="myclub.html" class="nav-link">我的社团</a></li>
                <li class="nav-item"><a href="gonggao.html" class="nav-link">公告</a></li>
                <li class="nav-item"><a href="club.html" class="nav-link">社团介绍</a></li>
                <li class="nav-item"><a href="mynews_student.html" class="nav-link">我的消息</a></li>
                <li class="nav-item"><a href="download.html" class="nav-link">下载专区</a></li>
                <li class="nav-item cta mr-md-2"><a href="login.html" class="nav-link">登录</a></li>
            </ul>
        </div>
    </div>
</nav>