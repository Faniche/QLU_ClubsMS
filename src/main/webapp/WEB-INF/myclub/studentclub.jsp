<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 阿布
  Date: 2019/7/6
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  %>
<section class="ftco-counter img" id="section-counter">
    <div class="container">
        <div class="row d-flex">
            <div class="col-md-6 d-flex">
                <%--                图片展示--%>
                <div class="img d-flex align-self-stretch"
                     style="background-image:url('${pageContext.request.contextPath}/images/my_clubs/shetuan.jpg');"></div>
            </div>
            <div class="col-md-6 pl-md-5 py-5">
                <div class="row justify-content-start pb-3">
                    <div class="col-md-12 heading-section ftco-animate">
                        <span class="subheading">社团列表</span>
                        <h2 class="mb-4"><span>与我有关</span>的社团</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 justify-content-center counter-wrap ftco-animate">
                        <div class="block-18 text-center py-4 bg-light mb-8">
                            <div class="text">
                                <div >
                                    <h3>我加入的社团</h3><br>
                                </div>
                                <c:forEach items="${joinedClubsList}" var="item">
                                    <!-- 循环查询到的表单-->
                                    <form method="post" action="${pageContext.request.contextPath}/handleClub/toqiutclub">
                                        <input type="submit" class="btn btn-success" value="${item.name}">
                                        <input type="hidden" name="clubId" value="${item.id}">
                                    </form>
                                    <br>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</section>
