<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/22
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>我的消息</title>
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


<jsp:include page="/nav_bar.jsp"/>


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

<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <h1 class="mb-3 bread">我的消息</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="home.html">首页 <i class="ion-ios-arrow-forward"></i></a></span> <span>我的消息 <i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <span class="subheading">我的消息</span>

            </div>
        </div>
        <div class="ftco-search">
            <div class="row">
                <div class="col-md-12 nav-link-wrap">
                    <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link ftco-animate active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">第一页</a>

                        <a class="nav-link ftco-animate" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">第二页 </a>

                        <a class="nav-link ftco-animate" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">第三页 </a>

                        <a class="nav-link ftco-animate" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab" aria-controls="v-pills-4" aria-selected="false">第四页</a>

                    </div>
                </div>
                <div class="col-md-12 tab-wrap">

                    <div class="tab-content" id="v-pills-tabContent">

                        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url('/images/basketball.png');"></div>
                                <div class="text pl-md-5">
                                    <span class="time">时间：2019-6-13 14:28</span>
                                    <h2><a href="#">消息</a></h2>
                                    <p>加入篮球社成功</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">篮球社</a> <span class="position">许伟</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/football.png);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">时间：2019-6-13 15:22</span>
                                    <h2><a href="#">消息</a></h2>
                                    <p>全体成员今晚18:00点去一号公教楼JT105</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">足球社</a> <span class="position">杨秋日</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url('/images/table tennis.png');"></div>
                                <div class="text pl-md-5">
                                    <span class="time">时间： 2019-6-20 20:12</span>
                                    <h2><a href="#">消息</a></h2>
                                    <p>您已经成功退出乒乓球社团</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">乒乓球社</a> <span class="position">小羊驼</span></h3>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-day-2-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_1.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Introduction to Wordpress 5.0</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_2.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Best Practices For Programming WordPress</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_3.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Web Performance For Third Party Scripts</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-day-3-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_1.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Introduction to Wordpress 5.0</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_2.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Best Practices For Programming WordPress</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_3.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Web Performance For Third Party Scripts</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-day-4-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_1.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Introduction to Wordpress 5.0</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_2.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Best Practices For Programming WordPress</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/person_3.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">Web Performance For Third Party Scripts</a></h2>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">Founder of Wordpress</span></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>