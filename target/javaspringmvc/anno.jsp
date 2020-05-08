<%--
  Created by IntelliJ IDEA.
  User: wac
  Date: 2020/3/30
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/anno/testRequestParam?name=呵呵">RequestParam</a>
<form action="/anno/ModelAttribute" method="post">
    姓名:<input type="text" name="name"><br>
    性别：<input type="text" name="sex"><br>
    <input type="submit" value="提交">
</form>
<a href="/anno/testPathVariable/8">PathVariable</a><br>
<a href="/anno/testCookieValue">CookieValue</a><br>
<a href="/anno/ModelAttribute">ModelAttribute</a><br>
<a href="/anno/testSessionAttributes">ModelAttribute</a><br>
<a href="/anno/testgetSessionAttribute">getSessionAttribute</a><br>
<a href="/anno/testdeleteSessionAttribute">deleteSessionAttribute</a><br>
</body>
</html>
