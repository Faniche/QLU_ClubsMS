<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/22
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--管理员的导航栏--%>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="home.html"><span>Club</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <%--首页--%>
                <li class="nav-item active"><a href="${pageContext.request.contextPath}/index" class="nav-link">首页</a>
                </li>
                <%--公告--%>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/announce/show" class="nav-link">公告</a>
                </li>
                <%--社团介绍--%>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/handleClub/showclub" class="nav-link">社团介绍</a>
                </li>
                <%--申请--%>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/message/show" class="nav-link">申请</a>
                </li>
                <%--文件管理--%>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/file/down" class="nav-link">文件管理</a>
                </li>
                <%--登录--%>
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

<script>
    $().ready(function () {
        if (${sessionScope.userinfo != null}) {
            var obj = document.getElementById("loginName");
            obj.innerText = "${sessionScope.userinfo.username}!";
            $("#login_btn").attr("href", "${pageContext.request.contextPath}/message/show")
        }
    })
</script>