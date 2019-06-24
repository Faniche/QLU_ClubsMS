<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/24
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>添加成员</title>

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

    <script type="text/javascript">
        $(function () {
            $("#addMember").click(function () {
                var
            }
                $.ajax({
                    uri: "${pageContext.request.contextPath}/login/findByName",     // 提交路径
                    data: $("#inputName").val(),                                    // 提交参数
                    dataType: "json",                                               // 返回数据类型
                    success(): function() {

                    }
                })
            })
        <%--})--%>
    </script>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/nav_bar.jsp"/>

<section class="ftco-section contact-section">
    <div style="height: 100px"></div>
    <div class="container">
        <div class="row block-8 text-center">
            <div class="col-md-3"></div>
            <div class="col-md-6 order-md-last d-flex">
                <form action="${pageContext.request.contextPath}/login/findByName"
                      class="bg-light p-5 contact-form">
                    <div class="form-group">
                        <input id="inputName" name="name" type="text" class="form-control" placeholder="姓名">
                    </div>
                    <div class="form-group">
                        <input id="find" type="button" value="查找" class="btn btn-primary py-3 px-5">
                    </div>
                </form>

            </div>
        </div>

        <div class="row block-8 text-center">
            <div class="col-md-3"></div>
            <div class="col-md-6 order-md-last d-flex">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th id="">id</th>
                        <th>姓名</th>
                        <th colspan="2">用户名</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="info" items="${userList}">
                        <tr>
                            <td>${info.id}</td>
                            <td>Bangalore</td>
                            <td>560001</td>
                            <td>
                                <button id="addMember">添加</button> <span>${msg}</span>
                            </td>
                        </tr>
                    </c:forEach>
                    <%--<tr>--%>
                        <%--<td>Tanmay</td>--%>
                        <%--<td>Bangalore</td>--%>
                        <%--<td>560001</td>--%>
                        <%--<td>--%>
                            <%--<button id="addMember">添加</button>--%>
                        <%--</td>--%>
                    <%--</tr>--%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

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
<script src="${pageContext.request.contextPath}/js/jquery.timepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="${pageContext.request.contextPath}/js/google-map.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>
</html>
