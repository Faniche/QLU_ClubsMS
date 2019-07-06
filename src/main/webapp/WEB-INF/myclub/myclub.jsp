<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/22
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<jsp:include page="/nav_bar.jsp"/>


<!-- END nav -->

<section class="hero-wrap hero-wrap-2 js-fullheight" style="${pageContext.request.contextPath}/background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <h1 class="mb-3 bread">我的社团</h1>
                <p class="breadcrumbs"><span class="mr-2">主页 <i class="ion-ios-arrow-forward"></i></span> <span>我的社团<i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
            <%--超级管理员--%>
            <c:if test="${role.id == 1}">
                <jsp:include page="supermanager.jsp"/>

            </c:if>

            <%--社长--%>
            <c:if test="${role.id == 2}">
                <jsp:include page="studentclub.jsp"/>
                <jsp:include page="managerclub.jsp"/>

            </c:if>
            <%--学生--%>
            <c:if test="${role.id == 3}">
                <jsp:include page="studentclub.jsp"/>
            </c:if>
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
                        <div class="text text-center py-1">
                            <h3>足球社</h3>
                            <span class="position">“人气王”</span>
                            <ul class="ftco-social mt-3">
                                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                            </ul>
                        </div>
                        </div>

                        <div class="speaker">
                            <img src="${pageContext.request.contextPath}/images/my_clubs/basketball.jpg" class="img-fluid" alt="Colorlib HTML5 Template" >
                            <div class="text text-center py-1">
                                <h3>足球社</h3>
                                <span class="position">“人气王”</span>
                                <ul class="ftco-social mt-3">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="speaker">
                            <img src="${pageContext.request.contextPath}/images/my_clubs/basketball.jpg" class="img-fluid" alt="Colorlib HTML5 Template" >
                            <div class="text text-center py-1">
                                <h3>社团名字</h3>
                                <span class="position">社团简介</span>
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