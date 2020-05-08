<%--
  Created by IntelliJ IDEA.
  User: wac
  Date: 2020/3/30
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.3.1.js"></script>
    <script>
        //页面加载，绑定单机事件
        $(function () {
            $("#btn").click(function () {
                // alert("hello button");
                //编写json格式，设置属性和值
                $.ajax({
                    url:"user/testAjax",
                    contentType:"application/json;charset=UTF-8",
                    data:'{"username":"hk","password":"wac","age":18}',
                    datyType:"json",
                    type:"post",
                    success:function (data) {
                        alert(data.username);
                        alert(data.password);
                    }
                })
            });
        });
    </script>
</head>
<body>
<a href="/user/testString">testString</a><br>
<a href="/user/testvoid">testvoid</a><br>
<a href="/user/testModelAndView">ModelAndView</a><br>
<a href="/user/testForwardOrRedircet">ForwardOrRedircet</a><br>
<button id="btn">发送Ajax请求</button>
</body>
</html>
