<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/22
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script>
    $().ready(function () {
        if (${sessionScope.userinfo != null}) {
            var obj = document.getElementById("loginName");
            obj.innerText = " Hi, ${sessionScope.userinfo.username}!";
            $("#login_btn").attr("href", "${pageContext.request.contextPath}/message/show")
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
                <li class="nav-item active"><a href="${pageContext.request.contextPath}/index" class="nav-link">首页</a></li>
                <li class="nav-item"><a href="myclub.html" class="nav-link">我的社团</a></li>
                <li class="nav-item"><a href="gonggao.html" class="nav-link">公告</a></li>
                <li class="nav-item"><a href="club.html" class="nav-link">社团介绍</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/message/show" class="nav-link">我的消息</a></li>
                <li class="nav-item"><a href="download.html" class="nav-link">下载专区</a></li>

                <li class="nav-item cta mr-md-2">
                <a id="login_btn" href="${pageContext.request.contextPath}/login/login" class="nav-link">
                        <span id="loginName">
                            登录
                        </span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>