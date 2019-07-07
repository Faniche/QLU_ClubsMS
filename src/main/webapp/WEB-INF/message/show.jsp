<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/25
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>我的消息</title>
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
    <style type="text/css">
        .my_message {
            display: none;
        }

        .release_message {
            display: none;
        }
    </style>
</head>
<body>

<jsp:include page="/nav_bar.jsp"/>

<section class="hero-wrap hero-wrap-2 js-fullheight"
         style="background-image: url('${pageContext.request.contextPath}/images/bg_2.jpg');"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <h1 class="mb-3 bread">我的消息</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="${pageContext.request.contextPath}/index">首页 <i
                        class="ion-ios-arrow-forward"></i></a></span>
                    <span>我的消息 <i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section bg-light">
    <div class="container">
        <div class="ftco-search">
            <div class="row">

                <div class="col-md-12 nav-link-wrap">
                    <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist"
                         aria-orientation="vertical">
                        <a class="nav-link ftco-animate active" id="my_apply" data-toggle="pill" href="#v-pills-2"
                           role="tab" aria-controls="v-pills-2" aria-selected="false">申请</a>
                        <c:if test="${sessionScope.role.id != 1}">
                            <a class="nav-link ftco-animate" id="my_message" data-toggle="pill" href="#v-pills-1"
                               role="tab" aria-controls="v-pills-1" aria-selected="true">我的消息</a>
                        </c:if>
                        <c:if test="${sessionScope.role.id == 2}">
                            <a class="nav-link ftco-animate" id="release_message" data-toggle="pill" href="#v-pills-3"
                               role="tab" aria-controls="v-pills-3"
                               aria-selected="false">发布消息</a>
                        </c:if>
                    </div>
                </div>
                <c:if test="${sessionScope.role.id == 2 || sessionScope.role.id == 3}">
                    <jsp:include page="message.jsp"></jsp:include>
                </c:if>
                <jsp:include page="apply.jsp"/>
                <c:if test="${sessionScope.role.id == 2}">
                    <jsp:include page="releaseMessage.jsp"></jsp:include>
                </c:if>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    $().ready(function () {
        $("#my_apply").click(function () {
            $(".my_apply").css("display", "block");
            $(".my_message").css("display", "none");
            $(".release_message").css("display", "none");
        })

        $("#my_message").click(function () {
            $(".my_apply").css("display", "none");
            $(".my_message").css("display", "block");
            $(".release_message").css("display", "none");
        })

        $("#release_message").click(function () {
            $(".my_apply").css("display", "none");
            $(".my_message").css("display", "none");
            $(".release_message").css("display", "block");
        })
    })
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
