<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
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
    <style>
        body{
            background: url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586367238565&di=2c3245a66fe271b6c16cb8eb9ca61082&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-03-14%2F5aa896c84b3d8.jpg") no-repeat center;
        }
        .a{
            margin-top: 40px;
        }
        #male{
            margin-left: 20px;
        }
        #female{
            margin-left: 20px;
        }
        .b{
            text-align: center;
            margin-top: 60px;
        }
        .btn{
            text-align: center;
            margin-top: 20px;
            margin-left: 530px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="b">
    <h3>添加联系人</h3>
    </div>
<form action="/user/insertuser" method="post">
    <div class="form-group">
        <label for="exampleInputEmail1" class="a">姓名</label>
        <input type="text" class="form-control" id="exampleInputEmail1" name="name">
    </div>
    <label>性别</label>
    <input type="radio" name="sex" value="男" id="male">男
    <input type="radio" name="sex" value="女" id="female">女
    <div class="form-group">
        <label for="exampleInputPassword1">年龄</label>
        <input type="text" class="form-control" id="exampleInputPassword1" name="age">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword2">地址</label>
        <input type="text" class="form-control" id="exampleInputPassword2" name="adress">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword3">QQ</label>
        <input type="text" class="form-control" id="exampleInputPassword3" name="qq">
    </div>
    <div class="form-group">
        <label for="exampleInputPassword4">邮箱</label>
        <input type="text" class="form-control" id="exampleInputPassword4" name="email">
    </div>
    <button type="submit" class="btn btn-default">提交</button>
</form>
</div>
</body>
</html>