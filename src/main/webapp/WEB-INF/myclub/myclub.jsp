<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/22
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <title>我的社团</title>
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
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index"><span>Club</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="${pageContext.request.contextPath}/index" class="nav-link">首页</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/clubs/myClubs" class="nav-link">我的社团</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/" class="nav-link">公告</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/clubs/Clubs" class="nav-link">社团介绍</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/message/show" class="nav-link">我的消息</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/" class="nav-link">下载专区</a></li>

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
<%--<jsp:include page="nav_bar.jsp"></jsp:include>--%>


<!-- END nav -->

<section class="hero-wrap hero-wrap-2 js-fullheight" style="${pageContext.request.contextPath}/background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <h1 class="mb-3 bread">我的社团</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="${pageContext.request.contextPath}/home.html">主页 <i class="ion-ios-arrow-forward"></i></a></span> <span>我的社团<i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-counter img" id="section-counter">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-6 d-flex">
                <div class="img d-flex align-self-stretch" style="${pageContext.request.contextPath}/background-image:url(images/club.jpg);"></div>
            </div>
            <div class="col-md-6 pl-md-5 py-5">
                <div class="row justify-content-start pb-3">
                    <div class="col-md-12 heading-section ftco-animate">
                        <span class="subheading">社团列表</span>
                        <h2 class="mb-4"><span>加入的</span> 社团</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-4 bg-light mb-4">
                            <div class="text">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <img src="${pageContext.request.contextPath}/images/my_clubs/basketball.jng" alert="图片错误" title="篮球社团"style="width:70px;height: 70px">
                                </div>
                                <span><a href ="${pageContext.request.contextPath}/handleClub/toqiutclub">篮球社</a></span>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section testimony-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <span class="subheading">你未加入的社团</span>
                <h2 class="mb-4"><span>优秀</span>社团</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="carousel-testimony owl-carousel">
                    <div class="item">
                        <div class="speaker">
                            <img src="${pageContext.request.contextPath}/images/my_clubs/basketball.jpg" class="img-fluid" alt="Colorlib HTML5 Template" >
                            <div class="text text-center py-3">
                                <h3>足球社</h3>
                                <span class="position">“人气王”</span>
                                <ul class="ftco-social mt-3">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
                <p align="center"><a href="club.html"><font color="blue " size="12">查看详情</font></a></p>
</section>




<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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