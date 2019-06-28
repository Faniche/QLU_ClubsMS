<%--
  Created by IntelliJ IDEA.
  User: gu
  Date: 2019/6/28
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/fileUp" method="post" enctype="multipart/form-data">
    姓名：<input type="text" name="empName">

    文件：<input type="file" name="info1">
    <input type="submit" value="提交"/>
</form>
</body>
</html>
