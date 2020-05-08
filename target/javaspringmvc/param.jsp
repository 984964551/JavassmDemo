<%--
  Created by IntelliJ IDEA.
  User: wac
  Date: 2020/3/29
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/requestparam/saveAccount" method="post">
    用户名：<input type="text" name="username"><br>
    密码：<input type="text" name="password"><br>
    存款：<input type="text" name="money"><br>
    用户姓名：<input type="text" name="user.name"><br>
    用户性别：<input type="text" name="user.sex"><br>
    用户姓名：<input type="text" name="list[0].name"><br>
    用户性别：<input type="text" name="list[0].sex"><br>
    用户姓名：<input type="text" name="map['hk'].name"><br>
    用户性别：<input type="text" name="map['hk'].sex"><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
