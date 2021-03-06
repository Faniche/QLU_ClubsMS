<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/6/29
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:forEach items="${applyList}" var="item">
    <c:if test="${item.apply.type == 1}">
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
                <h2>${item.applyType}</h2><br>
                    <%--申请内容--%>
                <p>${item.content}</p>

                <h3 class="speaker-name">&mdash; <a href="#">${item.clubs.name}</a> <span
                        class="position">${item.proposer}</span></h3><br>
                    <%--超级管理员--%>
                <c:if test="${role.id == 1}">
                    <%--未审核--%>
                    <c:if test="${item.apply.status == 0}">
                    <span>
                        <button type="button" class="btn btn-success creat-club-agree"
                                value="${item.apply.id}" clubId="${item.apply.clubid}">同意</button>
                        <button type="button" class="btn btn-danger creat-club-deny"
                                value="${item.apply.id}" clubId="${item.apply.clubid}">拒绝</button>
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
                    <%--学生--%>
                <c:if test="${role.id == 3}">
                    ${item.statusStr}
                </c:if>
            </div>
        </div>
    </c:if>
</c:forEach>

<script>
    $().ready(function () {
        $(".creat-club-agree").click(function () {
            var obj = $(this).parents('span');
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/clubs/create_agree",
                data: {'applyId': $(this).attr("value"), 'clubId': $(this).attr("clubId")},
                success: function () {
                    obj.text('同意');
                }
            })
        });
        $(".creat-club-deny").click(function () {
            var obj = $(this).parents('span');
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/clubs/create_deny",
                data: {'applyId': $(this).attr("value"), 'clubId': $(this).attr("clubId")},
                success: function () {
                    obj.text('拒绝')
                }
            })
        })
    })
</script>
