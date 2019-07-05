<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/29
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach items="${applyList}" var="item">
    <c:if test="${item.apply.type == 5}">
        <div class="speaker-wrap ftco-animate d-flex">
                <%--    社团Logo--%>
                <%--    <div class="img speaker-img" style="background-image: url(${clubsIcon.[item.clubs.name]});"></div>--%>
            <div class="img speaker-img"
                 style="background-image: url('${pageContext.request.contextPath}/${clubsIcon[item.clubs.name]}');">
            </div>
            <div class="text pl-md-5">
                    <%--申请时间--%>
                <span class="time">时间：${item.apply.date}</span>
                    <%--申请类型--%>
                <h2 class="h2">${item.applyType}</h2><br>
                    <%--申请内容--%>
                <p>${item.content}</p>
                <p>活动时间：&nbsp;<fmt:formatDate value="${item.activity.time}"/></p>
                <p>活动地点：&nbsp;${item.activity.location}</p>
                <p>活动经费：&nbsp;${item.activity.money}</p>
                <h3 class="speaker-name">&mdash; <a href="">${item.clubs.name}</a> <span
                        class="position">${item.proposer}</span></h3><br>
                    <%--超级管理员--%>
                <c:if test="${role.id == 1}">
                    <%--未审核--%>
                    <c:if test="${item.apply.status == 0}">
                    <span>
                        <button type="button" class="btn btn-success act-agree"
                                value="${item.activity.id}" apply="${item.apply.id}">同意</button>
                        <button type="button" class="btn btn-danger act-deny"
                                value="${item.activity.id}" apply="${item.apply.id}">拒绝</button>
                        <span></span>
                    </span>
                    </c:if>
                    <%--已审核--%>
                    <c:if test="${item.apply.status != 0 && item.statusStr != '被拒绝'}">
                        ${item.statusStr}
                    </c:if>
                    <c:if test="${item.apply.status != 0 && item.statusStr == '被拒绝'}">
                        拒绝
                    </c:if>
                </c:if>
                    <%--社长--%>
                <c:if test="${role.id == 2}">
                    ${item.statusStr}
                </c:if>
            </div>
        </div>
    </c:if>
</c:forEach>
<script>
    $().ready(function () {
        $(".act-agree").click(function () {
            var obj = $(this).parents('span');
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/activity/agree",
                data: {'activityId':$(this).attr("value"),'applyId':$(this).attr("apply")},
                success: function () {
                    obj.text('同意');
                }
            })
        });
        $(".act-deny").click(function () {
            var obj = $(this).parents('span');
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/activity/deny",
                data: {'activityId':$(this).attr("value"),'applyId':$(this).attr("apply")},
                success: function () {
                    obj.text('拒绝');
                }
            })
        })
    })
</script>
