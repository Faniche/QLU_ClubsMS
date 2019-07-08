<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/6/25
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>申请退团</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="jumbotron-narrow.css" rel="stylesheet">
    <script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
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
    <![endif]-->
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <div align="center"><h2>社团详细信息展示</h2></div>
        <br>&nbsp;<br>
        <div class="speaker-wrap ftco-animate d-flex">
            <div class="text pl-md-5"><table align="center" >
                <tr>
                    <td> <h4 class="speaker-name"><span class="position">社团名字：${clubDetail.clubs.name}</span></h4></td>
                </tr>
                <tr>
                <td><h4 class="speaker-name"><span class="position">社团编号：${clubDetail.clubs.id}</span></h4></td>
                </tr>
                <tr>
                <td><h4 class="speaker-name"><span class="position">社长：${clubDetail.leader}</span></h4></td>
                </tr>
                <tr>
                <td><h5 class="speaker-name"><span class="position">社团简介：</span></h5></td>
                </tr>
                </table>
                <p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${clubDetail.clubs.descript}</p>
                <div align="right"><span class="time">成立时间：${clubDetail.clubs.establisheddate}</span></div>
                <br>&nbsp;<br>
            </div>
        </div>
        <div align="center">
            <button class="btn btn-lg btn-danger" id="quit_club_btn" clubId="${clubDetail.clubs.id}">申请退团</button>
            &nbsp&nbsp&nbsp&nbsp&nbsp
            &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp
            <button class="btn btn-lg btn-info" onclick="window.history.back()">返回上层</button>
        </div>
    </div>
</div> <!-- /container -->

<script type="text/javascript">
    $("#quit_club_btn").click(function () {
        if (window.confirm("确定退出吗")) {
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/apply/quitClub",
                data: {'clubId':$(this).attr("clubId")},
                success: function () {
                    $("#quit_club_btn").prop("disabled",false);
                    alert("已提交申请");
                }
            })

        }
    })
</script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>

</body>
</html>
