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

                            <%--超级管理员--%>
                            <c:if test="${role.id == 1}">
                                <jsp:include page="activityApply.jsp"/>
                                <jsp:include page="createClubApply.jsp"/>
                                <jsp:include page="destroyClubApply.jsp"/>
                            </c:if>
                            社长
                            <c:if test="${role.id == 2}">
                                <jsp:include page="activityApply.jsp"/>
                                <jsp:include page="joinClubApply.jsp"/>
<%--                                <jsp:include page="quitClubApply.jsp"/>--%>
                                <jsp:include page="createClubApply.jsp"/>
                                <jsp:include page="destroyClubApply.jsp"/>
                            </c:if>
<%--                            &lt;%&ndash;学生&ndash;%&gt;--%>
<%--                            <c:if test="${role.id == 3}">--%>
<%--                                <jsp:include page="joinClubApply.jsp"/>--%>
<%--                                <jsp:include page="quitClubApply.jsp"/>--%>
<%--                                <jsp:include page="createClubApply.jsp"/>--%>
<%--                            </c:if>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
