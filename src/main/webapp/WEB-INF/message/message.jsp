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
                                    <div class="img speaker-img"
                                         style="background-image: url('${pageContext.request.contextPath}/${clubsIcon[item.club]}');">
                                    </div>
                                    <div class="text pl-md-5">
                                        <span class="time">时间：${item.message.releasedate}</span>
                                            <%--内容--%>
                                        <br><br>
                                        <p>${item.message.content}</p>
                                        <h3 class="speaker-name">&mdash; <a href="${pageContext.request.contextPath}/handleClub/tojoinclub">${item.club}</a></h3>
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
