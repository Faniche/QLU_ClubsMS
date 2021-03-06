<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/22
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>主页</title>
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


<!-- END nav -->

<div class="hero-wrap js-fullheight" style="background-image: url('${pageContext.request.contextPath}/images/bg_1.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
            <div class="col-xl-10 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"> ${activity.topic} <br><span>具体时间 2019</span></h1>
                <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">${activity.time} 中国, 齐鲁工业大学</p>
                <div id="timer" class="d-flex mb-3">
                    <div class="time" id="days"></div>
                    <div class="time pl-4" id="hours"></div>
                    <div class="time pl-4" id="minutes"></div>
                    <div class="time pl-4" id="seconds"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section services-section bg-light">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block">
                    <div class="icon"><span class="flaticon-placeholder"></span></div>
                    <div class="media-body">
                        <h3 class="heading mb-3">活动举办地点</h3>
                        <p>	山东省齐鲁工业大学长清校区体育馆</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block">
                    <div class="icon"><span class="flaticon-world"></span></div>
                    <div class="media-body">
                        <h3 class="heading mb-3">举办单位</h3>
                        <p>百团大战</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block">
                    <div class="icon"><span class="flaticon-hotel"></span></div>
                    <div class="media-body">
                        <h3 class="heading mb-3">主办方</h3>
                        <p>信息学院.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block">
                    <div class="icon"><span class="flaticon-cooking"></span></div>
                    <div class="media-body">
                        <h3 class="heading mb-3">活动内容</h3>
                        <p>百团纳新</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <span class="subheading">优秀社团</span>
                <h2 class="mb-4"><span>优秀社团</span> 展示</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="carousel-testimony owl-carousel">
                    <c:forEach var="item" items="${clubsList}">
                    <div class="item">
                        <div class="speaker">
                            <img src="${clubsIcon.[item.]}" class="img-fluid" alt="Colorlib HTML5 Template">
                            <div class="text text-center py-3">
                                <h3>${clubsList.name}</h3>
                                <span class="position">“${clubsList.descript}”</span>
                                <ul class="ftco-social mt-3">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    <%--<div class="item">
                        <div class="speaker">
                            <img src="images/index/literature.jpg" class="img-fluid" alt="Colorlib HTML5 Template">
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
                            <img src="images/index/kongfu.jpg" class="img-fluid" alt="Colorlib HTML5 Template">
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

                    <div class="item">
                        <div class="speaker">
                            <img src="images/index/skate.jpg" class="img-fluid" alt="Colorlib HTML5 Template">
                            <div class="text text-center py-3">
                                <h3>轮滑社</h3>
                                <span class="position">“滑出精彩”</span>
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
                            <img src="images/index/poem.jpg" class="img-fluid" alt="Colorlib HTML5 Template">
                            <div class="text text-center py-3">
                                <h3>古诗文社</h3>
                                <span class="position">“独领风骚”</span>
                                <ul class="ftco-social mt-3">
                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <span class="subheading">社团活动时间表</span>
                <h2 class="mb-4"><span>重大事件</span> 时间表</h2>
            </div>
        </div>
        <div class="ftco-search">
            <div class="row">
                <div class="col-md-12 nav-link-wrap">
                    <div class="nav nav-pills d-flex text-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link ftco-animate active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Day 01 <span>21 Dec. 2019</span></a>

                        <a class="nav-link ftco-animate" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Day 02 <span>22 Dec. 2019</span></a>

                        <a class="nav-link ftco-animate" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Day 03 <span>23 Dec. 2019</span></a>

                        <a class="nav-link ftco-animate" id="v-pills-4-tab" data-toggle="pill" href="#v-pills-4" role="tab" aria-controls="v-pills-4" aria-selected="false">Day 04 <span>24 Dec. 2019</span></a>

                    </div>
                </div>
                <div class="col-md-12 tab-wrap">

                    <div class="tab-content" id="v-pills-tabContent">

                        <forEach var="activityLists" items="${activityList}">
                        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel" aria-labelledby="day-1-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url("${pageContext.request.contextPath}/images/index/basketball01.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">${activityList.time}</span>
                                    <h2><a href="#">${activityList.topic}</a></h2>
                                    <p>举行地址：${activityList.location}</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">视觉盛宴</a> <span class="position">让我们拭目以待</span></h3>
                                </div>
                            </div>
                            <%--<div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/index/liberature01.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">文艺大赛</a></h2>
                                    <p>这是文艺社团一年一度的文艺展览大会，届时会有很多多才多艺的社员给我们表演他们的才艺</p>
                                    <h3 class="speaker-name">&mdash;<a href="#">文艺大赛不容错过</a> <span class="position">等待你们哟</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/index/poem.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">古诗文朗诵</a></h2>
                                    <p>古诗文社团为对古代诗人的追念而组织的一场诗文朗诵，有不同时代，不同风格的诗文都会以不同的形式展现出来</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">李白、仓央嘉措</a> <span class="position">以诗会友</span></h3>
                                </div>
                            </div>--%>
                        </div>

                        <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-day-2-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url("${pageContext.request.contextPath}/images/index/skate.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">${activityList.time}</span>
                                    <h2><a href="#">${activityList.topic}</a></h2>
                                    <p>举行地址：${activityList.location} </p>
                                    <h3 class="speaker-name">&mdash; <a href="#">视觉盛宴</a> <span class="position">让我们拭目以待</span></h3>
                                </div>
                            </div>
                            <%--<div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/index/cartoon01.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">cosplay表演</a></h2>
                                    <p>动漫社组织的各类动漫活动和Cosplay表演</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">二次元</a> <span class="position">展现动漫活力,体验飞扬青春</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url('/images/index/kongfu01.jpg');"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <p>这是武术社团组着的一场才艺表演，有梅花拳，盘龙棍，洪家拳等才艺表演</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">梅花拳</a> <span class="position">让我们拥有完美的体魄</span></h3>
                                </div>
                            </div>--%>
                        </div>
                        <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-day-3-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url("${pageContext.request.contextPath}/images/index/Robot.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">${activityList.time}</span>
                                    <h2><a href="#">${activityList.topic}</a></h2>
                                    <p>举行地址：${activityList.location}</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">视觉盛宴</a> <span class="position">让我们拭目以待</span></h3>
                                </div>
                            </div>
                            <%--<div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/yumaoqiu01.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">羽毛球赛</a></h2>
                                    <p>羽毛球社团组织的球赛，届时有很多对羽毛球爱好者参加，来切磋球技，互娱互乐。</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">羽毛球</a> <span class="position">放飞自我</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/index/basketball01.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">篮球赛</a></h2>
                                    <p>篮球社团组织的球赛，届时有很多对篮球爱好者参加，来切磋球技，互娱互乐。</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">Brett Morgan</a> <span class="position">以球会友</span></h3>
                                </div>
                            </div>--%>
                        </div>
                        <div class="tab-pane fade" id="v-pills-4" role="tabpanel" aria-labelledby="v-pills-day-4-tab">
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url("${pageContext.request.contextPath}/images/bangqiu.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">${activityList.time}</span>
                                    <h2><a href="#">${activityList.topic}</a></h2>
                                    <p>举行地址：${activityList.location}</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">视觉盛宴</a> <span class="position">让我们拭目以待</span></h3>
                                </div>
                            </div>
                            <%--<div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/index/ping-pong.jpg);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">乒乓球比赛</a></h2>
                                    <p>乒乓球社团组织的球赛，届时有很多对乒乓球爱好者参加，来切磋球技，互娱互乐。 </p>
                                    <h3 class="speaker-name">&mdash; <a href="#">乒乓球</a> <span class="position">以球会友</span></h3>
                                </div>
                            </div>
                            <div class="speaker-wrap ftco-animate d-flex">
                                <div class="img speaker-img" style="background-image: url(images/index/football.png);"></div>
                                <div class="text pl-md-5">
                                    <span class="time">08: - 10:00</span>
                                    <h2><a href="#">足球赛</a></h2>
                                    <p>足球社团组织的球赛，届时有很多对足球爱好者参加，来切磋球技，互娱互乐。</p>
                                    <h3 class="speaker-name">&mdash; <a href="#">足球赛</a> <span class="position">以球会友</span></h3>
                                </div>
                            </div>--%>
                        </div>
                        </forEach>
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
<script src="js/jquery.timepicker.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>
