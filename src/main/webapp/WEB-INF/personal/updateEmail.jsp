<%--
  Created by IntelliJ IDEA.
  User: Clearlove
  Date: 2019/7/2
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
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
            <!--验证邮箱-->
            $("#email").blur(function () {
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
                            url: "${pageContext.request.contextPath}/email/emailcheck",<!-- 要传的地址 -->
                            type: "post",                        <!-- 传值的方式 -->
                            data: {"email": email},         <!-- 传的数据(json对象) -->
                            success: function (result) {   <!-- 成功后执行的代码 -->

                                if (result == "false") {
                                    alert("邮箱已被占用");
                                }

                            }
                        });

                    }
                }
            });
            $("#btn1").click(function () {
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
                <!--验证验证码-->
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
        });
    </script>

</head>
<body>
<jsp:include page="/nav_bar.jsp"></jsp:include>
<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <h2 class="mb-4">个人中心</h2>
            </div>
        </div>
        <div class="col-md-12 tab-wrap">

            <div class="tab-content" id="v-pills-tabContent">

                <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">

                    <div class="speaker-wrap ftco-animate d-flex">
                        <div class="text pl-md-5">
                            <form action="${pageContext.request.contextPath}/personal/email" method="post">
                                <label for="email" class="sr-only">邮箱</label>
                                <input type="email" name="email" id="email" class="form-control" placeholder="邮箱"
                                       required autofocus>
                                <tr><input type="text" placeholder="邮箱验证码" name="code" id="code" onkeypress=""
                                           style="width:200px;"/>
                                    <button type="button" id="btn1" class="btn btn-primary">获取验证码</button>
                                    <span style="color: red">${msg}</span>
                                </tr>
                                <br/>
                                <button type="button" id="loginBtn" class="btn btn-default">确定</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>

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