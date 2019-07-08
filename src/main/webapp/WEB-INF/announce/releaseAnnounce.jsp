<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/7/4
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-md-12 tab-wrap release_message">
    <div class="tab-content" id="v-pills-tabContent">
        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
             aria-labelledby="day-1-tab">
            <div>
                <div class="speaker-wrap ftco-animate d-flex">
                    <div class="text pl-md-5">
                        <c:if test="${msg!=null}">
                            <div class="alert alert-warning alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                    ${msg}
                            </div>
                        </c:if>
                        <form action="${pageContext.request.contextPath}/announce/release" method="post"
                              class="bg-light p-5 contact-form">
                            <div class="form-group">
                                <input type="text" name="topic" class="form-control" placeholder="主题">
                            </div>
                            <div class="form-group">
                            <textarea name="content" id="" cols="30" rows="7" class="form-control"
                                      placeholder="公告内容"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="发&nbsp;&nbsp;&nbsp;布" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
