<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/22
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>我的社团</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<jsp:include page="${pageContext.request.contextPath}/nav_bar.jsp"/>

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
<!-- END nav -->

<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <h1 class="mb-3 bread">我的社团</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="home.html">主页 <i class="ion-ios-arrow-forward"></i></a></span> <span>我的社团<i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-counter img" id="section-counter">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-6 d-flex">
                <div class="img d-flex align-self-stretch" style="background-image:url(images/club.jpg);"></div>
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
                                    <img src="images/my_clubs/basketball.jng" alert="图片错误" title="篮球社团"style="width:70px;height: 70px">

                                </div>
                                <strong class="number" data-number="30">0</strong>
                                <span><a href ="clubinfo.html">篮球社</a></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-4 bg-light mb-4">
                            <div class="text">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <img src="images/my_clubs/football.png" alert="图片错误" title="篮球社团"style="width:70px;height: 70px">
                                </div>
                                <strong class="number" data-number="200">0</strong>
                                <span><a href="clubinfo.html">足球社</a></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-4 bg-light mb-4">
                            <div class="text">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <img src="images/my_clubs/kongfu.jpg" alert="图片错误" title="篮球社团"style="width:70px;height: 70px">
                                </div>
                                <strong class="number" data-number="2500">0</strong>
                                <span><a href ="clubinfo.html">武术社</a></span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-4 bg-light mb-4">
                            <div class="text">
                                <div class="icon d-flex justify-content-center align-items-center">
                                    <img src="images/my_clubs/literature.jpg" alert="图片错误" title="篮球社团"style="width:70px;height: 70px">
                                </div>
                                <strong class="number" data-number="40">0</strong>
                                <span><a href src="clubinfo.html">文艺社</a></span>
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
                            <img src="images/my_clubs/basketball.jpg" class="img-fluid" alt="Colorlib HTML5 Template" >
                            <div class="text text-center py-3">
                                <h3>篮球社</h3>
                                <span class="position">“人气王”</span>
                                <ul class="ftco-social mt-3">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="speaker">
                            <img src="images/my_clubs/literature.jpg" class="img-fluid" alt="Colorlib HTML5 Template">
                            <div class="text text-center py-3">
                                <h3>文艺社</h3>
                                <span class="position">“文艺界的一股清流”</span>
                                <ul class="ftco-social mt-3">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="item">
                        <div class="speaker">
                            <img src="images/my_clubs/kongfu.jpg" class="img-fluid" alt="Colorlib HTML5 Template">
                            <div class="text text-center py-3">
                                <h3>武术社团</h3>
                                <span class="position">“强身健体，耀我中华”</span>
                                <ul class="ftco-social mt-3">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <p align="center"><a href="club.html"><font color="blue " size="12">查看详情</font></a></p>
</section>




<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>