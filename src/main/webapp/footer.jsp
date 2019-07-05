<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/7/4
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">QLU Club</h2>
                    <p>相同的爱好让我们聚到了一起，让我们一起到达人生巅峰</p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a id="wechat"><span class="icon-wechat"></span></a></li>
                        <li class="ftco-animate"><a id="qq"><span class="icon-qq"></span></a></li>
                        <li class="ftco-animate"><a id="weibo"><span class="icon-weibo"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-5">
                    <h2 class="ftco-heading-2">本站资源</h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block">公告</a></li>
                        <li><a href="#" class="py-2 d-block">社团介绍</a></li>
                        <li><a href="#" class="py-2 d-block">下载</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">有问题？</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon icon-map-marker"></span>
                                <span class="text">中国, 山东省, 济南市, 长清区, 大学路&nbsp;3501&nbsp;号</span>
                            </li>
                            <li><a><span class="icon icon-phone"></span><span
                                    class="text">+86 183 4008 4008</span></a></li>
                            <li><a><span class="icon icon-envelope"></span><span class="text">guoyanan@gmail.com</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    本网站所有权益归RAYUK公司所有
                    <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                     target="_blank">RAYUK</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>
<script type="text/javascript">
    $("#wechat").click(function () {
        window.open("${pageContext.request.contextPath}/images/contact/wechat.png", "_self");
    });

    $("#weibo").click(function () {
        window.open("${pageContext.request.contextPath}/images/contact/weibo.png", "_self");
    });

    $("#qq").click(function () {
        window.open("${pageContext.request.contextPath}/images/contact/qq.png", "_self");
    });
</script>