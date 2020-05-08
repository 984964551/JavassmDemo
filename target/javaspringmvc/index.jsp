<%--
  Created by IntelliJ IDEA.
  User: wac
  Date: 2020/3/4
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>$Title$</title>
    <style>

    </style>
  </head>
  <body>
  <c:if test="${user1.username=='anjie'}">
  <div align="center">安老师好，安老师欢迎您！--___--</div><br>
  </c:if>
  <c:if test="${user1.username=='wac'}">
    <div align="center">成成大帅哥，欢迎您</div><br>
  </c:if>
  <div align="center">
  <a href="${pageContext.request.contextPath}/FindUserByPageServlet">查寻所有用户的信息</a>
  </div>
  </body>
</html>
