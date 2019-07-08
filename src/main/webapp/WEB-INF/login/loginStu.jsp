<%--
  Created by IntelliJ IDEA.
  User: Clearlove
  Date: 2019/6/29
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>登录界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/aos.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.timepicker.css">


    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/icomoon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function () {
            <!--验证验证码-->
            $("#loginBtn").click(function () {
                if ($("input[name=captcha]").val() == "") {
                    alert("验证码不能为空");
                } else {
                    <!-- 获取输入的验证码 -->
                    var verifyCode = $("input[name=captcha]").val();
                    <!-- 通过ajax方式将值传到后台 -->
                    $.ajax({
                        url: "${pageContext.request.contextPath}/login/checkVerifyCode",<!-- 要传的地址 -->
                        type: "post",                        <!-- 传值的方式 -->
                        data: {"verifyCode": verifyCode},     <!-- 传的数据(json对象) -->
                        success: function (result) {           <!-- 成功后执行的代码 -->
                            if (result == "false") {
                                alert("验证码错误");
                            } else {
                                $("form").submit();
                            }

                        }
                    });
                }
            });
            <!-- 刷新图片 -->
            $("#refresh").unbind("click").bind("click", function () {
                <!-- 传递一个随机数给后台 -->
                $("#createCheckCode").attr("src", "${pageContext.request.contextPath}/login/checkCaptchaCode?r" + Math.random());
            });
        });
    </script>
</head>

<body>


<div class="hero-wrap js-fullheight" style="background-color: white;" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
             data-scrollax-parent="true">
            <div class="col-xl-8 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">${latestActivity.topic}
                    <br><span>具体时间 2019</span>
                </h1>
                <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">${latestActivity.time}
                    中国, 齐鲁工业大学</p>
                <div id="timer" class="d-flex mb-3">
                    <div class="time" id="days"></div>
                    <div class="time pl-4" id="hours"></div>
                    <div class="time pl-4" id="minutes"></div>
                    <div class="time pl-4" id="seconds"></div>
                </div>
            </div>
            <div class="col-xl-4 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <span><a href="${pageContext.request.contextPath}/login/login" class="">账号登录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
                        href="${pageContext.request.contextPath}/login/email" class="">邮箱登录</a></span>
                <h2 class="form-signin-heading">请登录</h2>
                <span style="color: red">${msg}</span>
                <form action="${pageContext.request.contextPath}/login/loginStucheck" method="post">
                    <label for="inputText" class="sr-only">学号</label>
                    <input type="text" name="id" id="inputText" class="form-control" placeholder="学号" required
                           autofocus>
                    <br/>
                    <label for="inputPassword" class="sr-only">密码</label>
                    <input type="password" name="password" id="inputPassword" class="form-control" placeholder="密码"
                           required>
                    <br/>
                    <span>
                         <input type="text" placeholder="输入四位验证码" name="captcha" id="captcha" onkeypress=""
                                class="form-control" style="width:200px;"/>
                   <a id="refresh" class="nav-link"><img src="${pageContext.request.contextPath}/login/checkCaptchaCode"
                                                         id="createCheckCode"
                                                         align="middle" style="width:150px;"/></a>
                    </span>
                    <button class="btn btn-lg btn-primary btn-block" id="loginBtn" type="button">确定</button>
                </form>
                <span><a href="${pageContext.request.contextPath}/register/register"
                         class="nav-link">没有账号？点此注册</a></span>
                <span><a href="${pageContext.request.contextPath}/register/forgetpsw"
                         class="nav-link">忘记密码？</a></span>
            </div>
        </div>

    </div>
</div>


<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>
<script type="text/javascript">
    function makeTimer() {
        var endTime = new Date(${applicationScope.latestActivityDate});
        endTime = (Date.parse(endTime) / 1000);
        var now = new Date();
        now = (Date.parse(now) / 1000);
        var timeLeft = endTime - now;
        var days = Math.floor(timeLeft / 86400);
        var hours = Math.floor((timeLeft - (days * 86400)) / 3600);
        var minutes = Math.floor((timeLeft - (days * 86400) - (hours * 3600)) / 60);
        var seconds = Math.floor((timeLeft - (days * 86400) - (hours * 3600) - (minutes * 60)));
        if (hours < "10") {
            hours = "0" + hours;
        }
        if (minutes < "10") {
            minutes = "0" + minutes;
        }
        if (seconds < "10") {
            seconds = "0" + seconds;
        }

        $("#days").html(days + "<span>Days</span>");
        $("#hours").html(hours + "<span>Hours</span>");
        $("#minutes").html(minutes + "<span>Minutes</span>");
        $("#seconds").html(seconds + "<span>Seconds</span>");
    }

    setInterval(function () {
        makeTimer();
    }, 1000);
</script>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-migrate-3.0.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>
<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/js/aos.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.timepicker.js"></script>
<script src="${pageContext.request.contextPath}/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="${pageContext.request.contextPath}/js/google-map.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>

</body>
</html>