<%--
  Created by IntelliJ IDEA.
  User: Clearlove
  Date: 2019/6/28
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>注册界面</title>
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
            $("#username").blur(function () {
                <!--验证用户名-->
                if ($("input[name=username]").val() == "") {
                    alert("用户名不能为空");
                } else {

                    <!-- 获取输入的账号 -->
                    var username = $("input[name=username]").val();
                    <!-- 通过ajax方式将值传到后台 -->
                    $.ajax({
                        url: "${pageContext.request.contextPath}/register/usernamecheck",<!-- 要传的地址 -->
                        type: "post",                        <!-- 传值的方式 -->
                        data: {"username": username},         <!-- 传的数据(json对象) -->
                        success: function (result) {           <!-- 成功后执行的代码 -->
                            if (result == "false") {
                                alert("账号已存在");
                            }

                        }
                    });
                }
            });
            $("#id").blur(function () {
                <!--验证学号-->
                if ($("input[name=id]").val() == "") {
                    alert("学号不能为空");
                } else {
                    <!-- 获取输入的账号 -->
                    var id = $("input[name=id]").val();
                    <!-- 通过ajax方式将值传到后台 -->
                    $.ajax({
                        url: "${pageContext.request.contextPath}/register/idcheck",<!-- 要传的地址 -->
                        type: "post",                        <!-- 传值的方式 -->
                        data: {"id": id},         <!-- 传的数据(json对象) -->
                        success: function (result) {           <!-- 成功后执行的代码 -->
                            if (result == "false") {
                                alert("学号不存在");
                            }

                        }
                    });
                }
            });

            $("#pwd1").blur(function () {
                if ($("input[name=pwd1]").val() == "") {
                    alert("密码不能为空");
                }
            });
            $("#email").blur(function () {
                <!--验证邮箱-->
                if ($("input[name=email]").val() == "") {
                    alert("邮箱不能为空");
                } else {
                    <!-- 获取输入的账号 -->
                    var email = $("input[name=email]").val();
                    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
                    if (!reg.test(email)) {
                        alert('邮箱格式不正确，请重新填写!');
                        return false;
                    } else {

                        <!-- 通过ajax方式将值传到后台 -->
                        $.ajax({
                            url: "${pageContext.request.contextPath}/register/emailcheck",<!-- 要传的地址 -->
                            type: "post",                        <!-- 传值的方式 -->
                            data: {"email": email},         <!-- 传的数据(json对象) -->
                            success: function (result) {   <!-- 成功后执行的代码 -->

                                if (result == "false") {
                                    alert("邮箱已被注册");
                                }

                            }
                        });

                    }
                }
            });
            $("#btn1").click(function () {
                <!--验证验证码-->
                var email = $("input[name=email]").val();

                <!-- 通过ajax方式将值传到后台 -->
                $.ajax({
                    url: "${pageContext.request.contextPath}/email/emailcode",<!-- 要传的地址 -->
                    type: "post",                        <!-- 传值的方式 -->
                    data: {"email": email},         <!-- 传的数据(json对象) -->
                    success: function (result) {           <!-- 成功后执行的代码 -->
                        alert("验证码已经发送")
                        if (result == "false") {

                        }

                    }
                });
            });
            $("#loginBtn").click(function () {
                if ($("input[name=code]").val() == "") {
                    alert("验证码不能为空");
                } else {
                    <!-- 获取输入的验证码 -->
                    var code = $("input[name=code]").val();
                    <!-- 通过ajax方式将值传到后台 -->
                    $.ajax({
                        url: "${pageContext.request.contextPath}/email/checkCode",<!-- 要传的地址 -->
                        type: "post",                        <!-- 传值的方式 -->
                        data: {"code": code},     <!-- 传的数据(json对象) -->
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


            function check1() {
                <!--验证两次验证码是否一致-->
                pwd1 = document.getElementById("pwd1").value;
                pwd2 = document.getElementById("pwd2").value;
                if (pwd1 != pwd2) {
                    alert("两次密码不一致！");
                    return false;
                }
                return true;
            }
        });

    </script>
</head>
<script type="text/javascript">

</script>


<div class="hero-wrap js-fullheight" style="background-color: white;" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start"
             data-scrollax-parent="true">
            <div class="col-xl-8 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"> 齐鲁工业大学 <br><span>社团之夜 2019</span>
                </h1>
                <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">December 21-24, 2019.
                    Paris, Italy</p>
                <div id="timer" class="d-flex mb-3">
                    <div class="time" id="days"></div>
                    <div class="time pl-4" id="hours"></div>
                    <div class="time pl-4" id="minutes"></div>
                    <div class="time pl-4" id="seconds"></div>
                </div>
            </div>
            <div class="col-xl-4 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <h2 class="form-signin-heading">注册</h2>
                <span>${msg}</span>
                <form action="${pageContext.request.contextPath}/register/Loginregister" method="post">

                    <input type="text" name="username" id="username" class="form-control" placeholder="用户名" required
                           autofocus>
                    <br/>
                    <input type="text" name="id" id="id" class="form-control" placeholder="学号" required autofocus>
                    <br/>
                    <input type="text" name="name" id="inputText3" class="form-control" placeholder="姓名" required
                           autofocus>
                    <br/>
                    <label for="email" class="sr-only">邮箱</label>
                    <input type="email" name="email" id="email" class="form-control" placeholder="邮箱" required
                           autofocus>
                    <br/>
                    <input type="text" placeholder="邮箱验证码" name="code" id="code" onkeypress=""
                             style="width:200px;"/>
                        <button type="button" id="btn1" class="btn btn-primary">获取验证码</button>


                    <br/>
                    <br/>
                    <input type="password" name="password" id="pwd1" class="form-control" placeholder="密码" required>
                    <br/>
                    <input type="password" name="password" id="pwd2" class="form-control" placeholder="确认密码" required>
                    <br/>
                    <button onclick="return check1()" id="loginBtn" class="btn btn-lg btn-primary btn-block"
                            type="button">确定
                    </button>
                </form>
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