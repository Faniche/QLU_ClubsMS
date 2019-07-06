<%@ page import="com.qlu.entity.Login" %><%--
  Created by IntelliJ IDEA.
  User: Clearlove
  Date: 2019/7/1
  Time: 15:43
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
                        <div class="img speaker-img"
                             style="background-image: url('${pageContext.request.contextPath}/images/message/personal.jpg')"></div>
                        <div class="text pl-md-5">
                            <table class="table table-bordered">
                                <tr>
                                    <th>用户名</th>
                                    <td>
                                    ${sessionScope.userinfo.username}
                                    <td><a href="${pageContext.request.contextPath}/personal/updateusername">
                                        <button type="button" class="btn btn-default" id="Btn1">修改用户名</button></td>
                                    </td>
                                </tr>
                                <tr>
                                    <th>学号</th>
                                    <td>${sessionScope.stuidInfo.id}</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th>姓名</th>
                                    <td>${sessionScope.userinfo.name}</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th>邮箱</th>
                                    <td>${sessionScope.userinfo.email}</td>
                                    <td><a href="${pageContext.request.contextPath}/personal/updateEmail">
                                        <button type="button" class="btn btn-default" id="Btn2">更新邮箱</button>
                                    </a></td>
                                </tr>
                                <tr>
                                    <th>密码</th>
                                    <td>**************</td>
                                    <td><a href="${pageContext.request.contextPath}/personal/updatepassword">
                                        <button type="button" class="btn btn-default" id="Btn3">修改密码</button>
                                    </a></td>
                                </tr>

                            </table>
                        </div>
                    </div>
                </div>


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
