<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style type="text/css">
        body{
            background: url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586367238565&di=2c3245a66fe271b6c16cb8eb9ca61082&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-03-14%2F5aa896c84b3d8.jpg") no-repeat center;
        }
        table{
            margin-top: 20px;
        }
        td,th{
            text-align: center;
        }
        #height{
            margin-top: 60px;
        }
        /*#table{*/
            /*margin-top: 200px;*/
        /*}*/
    </style>
    <script>
        function deleteUser(id) {
            if (confirm("您确定要删除吗？")){
                location.href="/user/deleteuser?id="+id;
            }
        }
        window.onload=function () {
            //给选中添加单机事件
            var DeleteSelect=document.getElementById("DeleteSelect");
            DeleteSelect.onclick=function () {
                //提交表单
                document.getElementById("form").submit;
            }
        }
    </script>
</head>
<body>
<div class="container">
<table border="1" class="table table-bordered table-hover" id="table" >
    <div id="height">
    <h3 style="text-align: center">用户信息表</h3>
    <div style="float: left">
        <form action="/user/findbypage" method="post">
                <label for="exampleInputName2">姓名</label>
                <input type="text" name="name" id="exampleInputName2">
            <label for="exampleInputName2">籍贯</label>
            <input type="text" name="adress" id="exampleInputName3">
                <label for="exampleInputEmail2">邮箱</label>
                <input type="text" name="email" id="exampleInputEmail2">
            <button type="submit" class="btn btn-default">查询</button>
        </form>
    </div>
    <div style="float: right;margin: 5px">
        <a class="btn btn-primary" href="/add.jsp">添加联系人</a>
        <a class="btn btn-primary" href="javascript:void(0);"id="DeleteSelect">删除选中</a>
    </div>
    </div>
    <tr>
        <th><input type="checkbox"></th>
        <td>编号</td>
        <td>姓名</td>
        <td>性别</td>
        <td>年龄</td>
        <td>籍贯</td>
        <td>电话</td>
        <td>邮箱</td>
        <td colspan="2">操作</td>
    </tr>
    <form id="form" action="${pageContext.request.contextPath}/DeleteSelect" method="post">
    <c:forEach items="${pb.list}" var="user" varStatus="s">
        <tr>
            <td><input type="checkbox" name="ids" value="${user.id}"></td>
            <td>${s.count}</td>
            <td>${user.name}</td>
            <td>${user.sex}</td>
            <td>${user.age}</td>
            <td>${user.adress}</td>
            <td>${user.qq}</td>
            <td>${user.email}</td>
            <td><a class="btn btn-default btn-group-sm" href="/user/findusertoupdate?id=${user.id}">修改</a>&nbsp;
                <a class="btn btn-default btn-group-sm" href="javascript:deleteUser(${user.id});">删除</a>
            </td>
        </tr>
    </c:forEach>
    </form>
</table>
    <div>
        <nav aria-label="Page navigation">
            <ul class="pagination">
                    <li>
                    <a href="/user/findbypage?currentPage=${pb.currentPage-1}&rows=5&name=${pb.user.name}&adress=${pb.user.adress}&email=${pb.user.email}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <c:forEach begin="1" end="${pb.totalPage}" var="i">
                    <c:if test="${pb.currentPage==i}">
                        <li class="active"><a href="/user/findbypage?currentPage=${i}&rows=5&name=${pb.user.name}&adress=${pb.user.adress}&email=${pb.user.email}">${i}</a></li>
                    </c:if>
                <c:if test="${pb.currentPage!=i}">
                    <li><a href="/user/findbypage?currentPage=${i}&rows=5&name=${pb.user.name}&adress=${pb.user.adress}&email=${pb.user.email}">${i}</a></li>
                </c:if>
                </c:forEach>
                <li>
                    <a href="/user/findbypage?currentPage=${pb.currentPage+1}&rows=5&name=${pb.user.name}&adress=${pb.user.adress}&email=${pb.user.email}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <span style="font-size: 20px">
                    共${pb.totalCount}条记录，共${pb.totalPage}页
                </span>
            </ul>
        </nav>
    </div>
</div>
</body>
</html>