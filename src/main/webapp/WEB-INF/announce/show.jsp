<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/7/4
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>公告</title>
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
                <h1 class="mb-3 bread">公告</h1>
                <p class="breadcrumbs"><span class="mr-2"><a href="${pageContext.request.contextPath}/index">首页 <i
                        class="ion-ios-arrow-forward"></i></a></span>
                    <span>公告 <i class="ion-ios-arrow-forward"></i></span></p>
            </div>
        </div>
    </div>
</section>

<c:if test="">
    <jsp:include page="releaseAnnounce.jsp"/>
</c:if>

<section class="ftco-section bg-light">
    <div class="container">
        <div class="ftco-search">
            <div class="row">
                <div class="col-md-12 tab-wrap my_message">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
                             aria-labelledby="day-1-tab">
                            <div>
                                <c:forEach items="${announceList}" var="item">
                                    <div class="speaker-wrap ftco-animate d-flex">
                                            <%--                                        <div class="img speaker-img"--%>
                                            <%--                                             style="background-image: url('${pageContext.request.contextPath}/${clubsIcon[item.club]}');">--%>
                                            <%--                                        </div>--%>
                                        <div class="text pl-md-5">
                                            <span class="time">时间：${item.announce.releasedate}</span>
                                                <%--内容--%>
                                            <br>
                                            <p>${item.announce.topic}</p>
                                            <p>${item.announce.content}</p>
                                            <h3 class="speaker-name">&mdash; ${item.author}
                                            </h3>
                                            <c:if test="${role.id==1}">
                                                <span>
                                                <button type="button" class="btn btn-danger announce_del"
                                                        value="${item.announce.id}">删除</button>

                                                </span>
                                            </c:if>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
    $(".announce_del").click(function () {
        var obj = $(this).parents('span');
        if (window.confirm("确认删除吗？")){
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/announce/delete",
                data: {'id': $(this).attr("value")},
                success: function () {
                    obj.text('已删除');
                }
            })
        }
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
