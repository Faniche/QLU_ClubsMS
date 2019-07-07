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
<%--                <div class="img d-flex align-self-stretch" style="background-image:url(images/shetuan.jpg);"></div>--%>
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
                                <!-- 循环查询到的表单-->

                                <form method="post" action="/handleClub/quitclub">
                                    <input type="button" class="btn btn-success" value="社团名字">&nbsp;&nbsp;&nbsp;
                                    <input type="submit" class="btn btn-danger" value="点击操作">
                                    <input type="hidden" name="clubid" value="">
                                    <input type="hidden" name="clubname" value="">
                                </form><br>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</section>

<%--<section class="ftco-section testimony-section">--%>
<%--    <div class="container">--%>
<%--        <div class="row justify-content-center mb-5 pb-3">--%>
<%--            <div class="col-md-7 text-center heading-section ftco-animate">--%>
<%--                <span class="subheading">你未加入的社团</span>--%>
<%--                <h2 class="mb-4"><span>优秀</span>社团</h2>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-12 ftco-animate">--%>
<%--                <div class="carousel-testimony owl-carousel">--%>
<%--                    <div class="item">--%>
<%--                        <div class="speaker">--%>
<%--                            <img src="${pageContext.request.contextPath}/images/my_clubs/basketball.jpg" class="img-fluid" alt="Colorlib HTML5 Template" >--%>
<%--                            <div class="text text-center py-1">--%>
<%--                                <h3>足球社</h3>--%>
<%--                                &lt;%&ndash;                            <span class="position">“人气王”</span>&ndash;%&gt;--%>
<%--                                <ul class="ftco-social mt-3">--%>

<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="speaker">--%>
<%--                            <img src="${pageContext.request.contextPath}/images/my_clubs/basketball.jpg" class="img-fluid" alt="Colorlib HTML5 Template" >--%>
<%--                            <div class="text text-center py-1">--%>
<%--                                <h3>足球社</h3>--%>
<%--                                &lt;%&ndash;                                <span class="position">“人气王”</span>&ndash;%&gt;--%>
<%--                                <ul class="ftco-social mt-3">--%>

<%--                                </ul>--%>
<%--                            </div>--%>
<%--                        </div>--%>

<%--                        <div class="speaker">--%>
<%--                            <img src="${pageContext.request.contextPath}/images/my_clubs/basketball.jpg" class="img-fluid" alt="Colorlib HTML5 Template" >--%>
<%--                            <div class="text text-center py-1">--%>
<%--                                <h3>社团名字</h3>--%>
<%--                                &lt;%&ndash;                                <span class="position">社团简介</span>&ndash;%&gt;--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <p align="center"><a href="club.html"><font color="blue " size="12">查看详情</font></a></p>--%>
<%--</section>--%>