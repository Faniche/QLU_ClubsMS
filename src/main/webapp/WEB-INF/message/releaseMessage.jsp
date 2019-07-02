<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/7/2
  Time: 16:05
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
                        <form action="#" class="bg-light p-5 contact-form">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="社团">
                                <select class="dropdown">
                                    <option>test1</option>
                                    <option>test2</option>
                                    <option>test3</option>
                                    <option>test4</option>
                                    <option>test5</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Your Email">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Subject">
                            </div>
                            <div class="form-group">
                            <textarea name="" id="" cols="30" rows="7" class="form-control"
                                      placeholder="消息内容"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
