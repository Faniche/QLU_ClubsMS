<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/28
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>社团介绍</title>
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
                <li class="nav-item"><a href="${pageContext.request.contextPath}/handleClub/tomyclub" class="nav-link">我的社团</a></li>
                <li class="nav-item"><a href="gonggao.html" class="nav-link">公告</a></li>
                <li class="nav-item"><a href="${pageContext.request.contextPath}/handleClub/toclub" class="nav-link">社团介绍</a></li>
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

<%--<jsp:include page="nav_bar.jsp"></jsp:include>--%>
<!-- END nav -->

<section class="hero-wrap hero-wrap-2 js-fullheight" style="${pageContext.request.contextPath}/background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <h1 class="mb-3 bread">社团介绍</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href=" ${pageContext.request.contextPath}/@Resource
    private ClubsService clubsService;home.html">首页 <i class="ion-ios-arrow-forward"></i></a></span> <span>社团介绍 <i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry justify-content-end">
                    <a href="${pageContext.request.contextPath}/ @Resourceprivate ClubsService clubsService;blog-single.html" class="block-20" style="${pageContext.request.contextPath}/background-image: url('images/basketball.png');">
                    </a>
                    <div class="text p-4 float-right d-block">
                        <div class="d-flex align-items-center pt-2 mb-4">
                            <div class="one">
                                <span class="day">01</span>
                            </div>
                            <div class="two">
                                <span class="yr">激情刺激，团队合作</span>
                                <span class="mos">2019.06.19</span>
                            </div>
                        </div>
                        <h3 class="heading mt-2"><a href="${pageContext.request.contextPath}/joinclub.jsp">篮球社</a></h3>
                        <p>篮球社团以形式多样的活动丰富了学生的课余生活，给予同学一个展示自己的机会，让他们在自己热爱的空间里自由发挥，体验比赛与游戏的不同滋味，享受篮球带给他们的无穷乐趣</p>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/handleClub/tojoinclub" role="button">申请加入</a>
                    </div>
                </div>
            </div>
            <c:forEach items="${requestScope.clubslist}" var="item">
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry justify-content-end">
                    <a href="${pageContext.request.contextPath}/ " class="block-20" style="${pageContext.request.contextPath}/background-image: url('${clubsIcon.[item.name]}');">
                    </a>
                    <div class="text p-4 float-right d-block">
                        <div class="d-flex align-items-center pt-2 mb-4">
                            <div class="one">
                                <span class="day">01</span>
                            </div>
                            <div class="two">
                                <span class="yr">${item}</span>
                                <span class="mos">2019.06.19</span>
                            </div>
                        </div>
                        <h3 class="heading mt-2"><a href="${pageContext.request.contextPath}/joinclub.jsp">篮球社</a></h3>
                        <p>篮球社团以形式多样的活动丰富了学生的课余生活，给予同学一个展示自己的机会，让他们在自己热爱的空间里自由发挥，体验比赛与游戏的不同滋味，享受篮球带给他们的无穷乐趣</p>
                        <a class="btn btn-primary" href="${pageContext.request.contextPath}/handleClub/tojoinclub" role="button">申请加入</a>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
        <div class="row mt-5">
            <div class="col text-center">
                <div class="block-27">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section-parallax">
    <div class="parallax-img d-flex align-items-center">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <!--<h2>下面关于社团纳新的内容或者自由发挥</h2>-->
                    <h2> <p>创建我自己的社团</p></h2>
                    <div class="row d-flex justify-content-center mt-4 mb-4">
                        <a class="btn btn-lg btn-success" href="${pageContext.request.contextPath}/handleClub/tonewclub" role="button">点击去创建</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Eventalk</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-5">
                    <h2 class="ftco-heading-2">Useful Links</h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block">Speakers</a></li>
                        <li><a href="#" class="py-2 d-block">Shcedule</a></li>
                        <li><a href="#" class="py-2 d-block">Events</a></li>
                        <li><a href="#" class="py-2 d-block">Blog</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Privacy</h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block">Career</a></li>
                        <li><a href="#" class="py-2 d-block">About Us</a></li>
                        <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                        <li><a href="#" class="py-2 d-block">Services</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Have a Questions?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                            <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                            <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">

                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>



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
