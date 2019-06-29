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
                <h1 class="mb-4">消&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;息</h1>
            </div>
        </div>
        <div class="ftco-search">
            <div class="row">
                <div class="col-md-12 tab-wrap">
                    <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
                             aria-labelledby="day-1-tab">
                            <c:forEach items="${messageList}" var="item">
                            <div class="speaker-wrap ftco-animate d-flex">
<%--                                社团Logo--%>
<%--                                <div class="img speaker-img"--%>
<%--                                     style="background-image: url(${clubsIcon.[item.clubs.name]});"></div>--%>
<%--                                <div class="text pl-md-5">--%>
                                    <div class="img speaker-img"
                                         style="background-image: url('${pageContext.request.contextPath}/images/icon/basketball.jpg');"></div>
                                    <div class="text pl-md-5">
                                            <%--消息发布时间--%>
                                        <span class="time">时间：${item.message.releasedate}</span>
                                            <%--申请类型--%>
<%--                                        <h2><a href="#">${item.applyType}</a></h2>--%>
                                            <%--申请内容--%>
                                        <p>${item.message.content}</p>
                                        <h3 class="speaker-name">&mdash; <a href="#">${item.club}</a>
<%--                                            <span class="position">${item.proposer}</span>--%>
                                        </h3>
                                        <p>
<%--                                            <button type="button" class="btn btn-success">同意</button>&nbsp;&nbsp;&nbsp;<button--%>
<%--                                                type="button" class="btn btn-danger">拒绝--%>
<%--                                        </button>--%>
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
