<%--
  Created by IntelliJ IDEA.
  User: gu
  Date: 2019/6/28
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件下载</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/file/down.chao"
      method="get">
    <input type="submit" value="下载">
</form>
</body>
</html>