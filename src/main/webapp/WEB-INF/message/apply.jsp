<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/25
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="ftco-section bg-light">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-3">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <!--                <span class="subheading">Testimonial</span>-->
                <h1 class="mb-4">申&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请</h1>
            </div>
        </div>
        <div class="ftco-search">
            <div class="row">
                <div class="col-md-12 tab-wrap">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
                             aria-labelledby="day-1-tab">

                            <c:forEach items="${applyList}" var="item">
                                <div class="speaker-wrap ftco-animate d-flex">
                                        <%--                                社团Logo--%>
                                        <%--                                <div class="img speaker-img"--%>
                                        <%--                                     style="background-image: url(${clubsIcon.[item.clubs.name]});"></div>--%>
                                        <%--                                <div class="text pl-md-5">--%>
                                    <div class="img speaker-img"
                                         style="background-image: url('${pageContext.request.contextPath}/images/icon/basketball.jpg');"></div>
                                    <div class="text pl-md-5">
                                            <%--申请时间--%>
                                        <span class="time">时间：${item.apply.date}</span>
                                            <%--申请类型--%>
                                        <h2><a href="#">${item.applyType}</a></h2><br>
                                            <%--申请内容--%>
                                        <p>${item.content}</p>
                                        <c:if test="${item.apply.type == 5}">

                                            <p>活动时间：&nbsp;${item.activity.time}</p>
                                            <p>活动地点：&nbsp;${item.activity.location}</p>
                                            <p>活动经费：&nbsp;${item.activity.money}</p>
                                        </c:if>

                                        <h3 class="speaker-name">&mdash; <a href="#">${item.clubs.name}</a> <span
                                                class="position">${item.proposer}</span></h3>
                                        <p>
                                                <%--超级管理员(处理创建社团，解散社团，活动申请)--%>
                                            <c:if test="${role.id == 1}">
                                            <c:if test="${item.apply.status == 0}">
                                            <button type="button" class="btn btn-success">同意</button>&nbsp;&nbsp;&nbsp;<button
                                                type="button" class="btn btn-danger">拒绝
                                            </c:if>
                                            <c:if test="${item.apply.status != 0 && item.statusStr != '被拒绝'}">
                                                ${item.statusStr}
                                            </c:if>
                                            <c:if test="${item.apply.status != 0 && item.statusStr == '被拒绝'}">
                                            拒绝
                                            </c:if>
                                            </c:if>
                                                <%--社长--%>
                                            <c:if test="${role.id == 2 && (item.apply.type == 3 || item.apply.type == 4)}">
                                            <button type="button" class="btn btn-success">同意</button>&nbsp;&nbsp;&nbsp;<button
                                                    type="button" class="btn btn-danger">拒绝
                                            </button>
                                            </c:if>
                                                <%--社长的一般申请--%>
                                            <c:if test="${role.id == 2 && (item.apply.type == 1 || item.apply.type == 2|| item.apply.type == 5)}">
                                                ${item.statusStr}
                                            </c:if>
                                                <%--学生的申请或社长的一般申请--%>
                                            <c:if test="${role.id == 3}">
                                                ${item.statusStr}
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
</section>
