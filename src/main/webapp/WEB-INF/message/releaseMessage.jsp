<%--
  Created by IntelliJ IDEA.
  User: Chare
  Date: 2019/7/2
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
    #member_table {
        display: none;
    }

    .club_member {
        display: none;
    }
</style>

<div class="col-md-12 tab-wrap release_message">
    <div class="tab-content" id="v-pills-tabContent">
        <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
             aria-labelledby="day-1-tab">
            <div>
                <div class="speaker-wrap ftco-animate d-flex">
                    <div class="text pl-md-5">
                        <form action="${pageContext.request.contextPath}/message/release" method="post"
                              class="bg-light p-5 contact-form">
                            <div class="form-group">
                                <%--提交选中的社团--%>
                                <select name="clubId" class="dropdown">
                                    <option id="default_select" selected>选择社团</option>
                                    <c:forEach var="item" items="${managedClubs}" varStatus="status">
                                        <option value="${item.id}"
                                                index="${status.index}">${item.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div id="member_table" class="form-group" id="select_member">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th><input type="checkbox" id="checkAll"></th>
                                        <th>id</th>
                                        <th>姓名</th>
                                        <th>社团</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${managedClubs}" var="club" varStatus="status">
                                        <c:forEach items="${clubAndMemberList[club.name]}" var="member">
                                            <tr class="club_member" clubIndex="${status.index}"
                                                select_member="${status.index}">
                                                    <%--提交选中的学生--%>
                                                <td><input type="checkbox" name="selectedMembers"
                                                           value="${member.member.id}"></td>
                                                <td>${member.member.id}</td>
                                                <td>${member.memberName}</td>
                                                <td>${member.clubName}</td>
                                            </tr>
                                        </c:forEach>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="form-group">
                            <textarea name="content" id="" cols="30" rows="7" class="form-control"
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

<script type="text/javascript">
    var selectedClub = 0;
    $("#default_select").click(function () {
        $("#member_table").css("display", "none");
    })

    $(".club_select").click(function () {
        $("#checkAll").attr("checked", false);
        $("input[name='selectedMembers']:checkbox").each(function() {
            $(this).attr("checked", false);
        });
        $("#member_table").css("display", "block");
        // 获取点击社团的索引
        var index = $(this).attr("index");
        selectedClub = index;
        var allmMembers = $("tr.club_member");
        allmMembers.css("display", "none");
        if (index == 0) {
            var club_members = $("[clubIndex='0']");
            club_members.css("display", "block");
        }
        if (index == 1) {
            var club_members = $("[clubIndex='1']");
            club_members.css("display", "block");
        }
        if (index == 2) {
            var club_members = $("[clubIndex='2']");
            club_members.css("display", "block");
        }
        if (index == 3) {
            var club_members = $("[clubIndex='3']")
            club_members.css("display", "block");
        }
    });

    $("#checkAll").click(function () {
        if (this.checked){
            $("input[name='selectedMembers']:checkbox").each(function() {
                $(this).attr("checked", true);
            })
        } else {
            $("input[name='selectedMembers']:checkbox").each(function() {
                $(this).attr("checked", false);
            })
        }
    })
</script>