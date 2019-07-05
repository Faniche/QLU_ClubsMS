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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Carousel Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="jumbotron-narrow.css" rel="stylesheet">
    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath}/../../assets/js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${pageContext.request.contextPath}/https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}/https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script>
    $().ready(function () {
        if (${sessionScope.userinfo != null}) {
            var obj = document.getElementById("loginName");
            obj.innerText = " Hi, ${sessionScope.userinfo.username}!";
            $("#login_btn").attr("href", "${pageContext.request.contextPath}/message/show")
        }
    })
</script>

<jsp:include page="/nav_bar.jsp"/>
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
<c:forEach items="${clubslist}" var="item">
<div class="container marketing">
    <hr class="featurette-divider">
    <div class="row featurette">
        <div  class="col-md-12 col-md-offset-0">
            <div class="jumbotron" align="center">
                <h2>${item.name}</h2><br>
                &nbsp;<br>
                <form action="${pageContext.request.contextPath}/handleClub/tojoinclub" method="post" class="form-horizontal">
                    <div class="row d-flex justify-content-center">
                        <div align="center">
                            <div class="form-group">
                                <label  class="col-sm-4 control-label">社团ID:${item.id}</label>
                                <label  class="col-sm-6 control-label">社长ID:${item.leaderId}</label>
                                <label  class="col-sm-4 control-label">创建日期:${item.establisheddate}</label>
                            </div>
                            <div  class="col-sm-12">
                                <p class="lead">社团简介</p>
                                <textarea  class="col-sm-12 form-control" name="joinclubmessage"  rows="6" cols="65"  >${item.descript}</textarea>
                            </div>
                            <br>&nbsp<br>
                                <input type="hidden" name="clubid" value="${item.id}"><!--社团ID传入到后台-->
                                <input type="hidden" name="clubname" value="${item.name}"><!--社团名字传入到后台-->
                                <input type="submit" class="btn btn-lg btn-success" value="申请加入" >  &nbsp&nbsp&nbsp&nbsp&nbsp
                                &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
                                <a class="btn btn-lg btn-success" href="${pageContext.request.contextPath}/handleClub/giveupjoin" role="button">详细信息</a>
                            </div>
                        </div>
                </form>
            </div>
        </div>
<%--        <div class="col-md-6 col-md-pull-6">--%>
<%--            <div class="jumbotron" align="center">--%>
<%--                <h3>社团名字</h3><br>--%>
<%--                &nbsp;<br>--%>
<%--                <form action="${pageContext.request.contextPath}/apply/insertapply" method="post" class="form-horizontal">--%>

<%--                    <div class="row d-flex justify-content-center">--%>
<%--                        <div align="center">--%>
<%--                            <div class="form-group">--%>
<%--                                <label  class="col-sm-4 control-label">社团ID:</label>--%>
<%--                                <label  class="col-sm-6 control-label">社长ID:</label>--%>
<%--                                <label  class="col-sm-4 control-label">创建日期:</label>--%>
<%--                            </div>--%>
<%--                            <div  class="col-sm-12">--%>
<%--                                <p class="lead">社团简介</p>--%>
<%--                                <textarea  class="col-sm-12 form-control" name="joinclubmessage" rows="6" cols="50" ></textarea>--%>
<%--&lt;%&ndash;                                <input type="hidden" name="date" value="<fmt:formatDate value="${date} pattern="yyyy-MM-dd "/>&ndash;%&gt;--%>
<%--                            </div>--%>
<%--                            <br>&nbsp<br>--%>
<%--                            <input type="submit" class="btn btn-lg btn-success" value="申请加入" >  &nbsp&nbsp&nbsp&nbsp&nbsp--%>
<%--                            &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp--%>
<%--                            <a class="btn btn-lg btn-success" href="${pageContext.request.contextPath}/handleClub/giveupjoin" role="button">详细信息</a>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
</div>
</c:forEach>









<section class="ftco-section-parallax">
    <div class="parallax-img d-flex align-items-center">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <form action="${pageContext.request.contextPath}/handleClub/tonewclub" method="post">
                <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
                    <!--<h2>下面关于社团纳新的内容或者自由发挥</h2>-->
                    <h2><p>创建我自己的社团</p></h2>
                    <div class="row d-flex justify-content-center mt-4 mb-4">
                        <input class="btn btn-lg btn-success" type="submit" value="点击去创建"></a>
                    </div>
                </div>
                </form>
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
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
<script src="${pageContext.request.contextPath}/../../assets/js/vendor/holder.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="${pageContext.request.contextPath}/../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
