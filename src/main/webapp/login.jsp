<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>表单验证</title>
    <style>
        body{
            background: url("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586367238565&di=2c3245a66fe271b6c16cb8eb9ca61082&imgtype=0&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2018-03-14%2F5aa896c84b3d8.jpg") no-repeat center;
        }
        .all{
            width: 900px;
            height: 500px;
            border: 3px;
            background-color:rgba(0,0,0,0.1) ;
            margin: auto;
            margin-top: 80px;
        }
        .left{
              float: left;
              margin: 15px;
              margin-top: 100px;
          }
        .right{
            float: right;
            margin: 15px;
            margin-top: 100px;
        }
        .right > p:first-child{
            color: red;
            font-size: 20px;
        }
        .left > p:first-child{
            color: red;
            font-size: 20px;
        }
        .left > p:last-child{
            color: #FFD026 ;
            font-size: 20px;
        }
        .center{
            border: 1px;
            float: left;
            width: 450px;
            margin-top: 150px;
            margin-left:100px ;
        }
        .right > p:first-child{
            font-size: 10px;
        }
        .right p a{
            color: pink;
        }
        .td_left{
            width: 100px;
            text-align:center ;
            height: 45px;
        }
        .td_right{
            margin-right: 50px;
            width: 500px;
        }
        #username,#password,#email,#name,#phonenumber,#birthday{
            width: 251px;
            height: 32px;
            border: 1px solid gray;
            border-radius:5px;
            padding-left: 10px;
        }
        #buttons-hbox{
            width: 80px;
            height: 40px;
            color: red;
        }
        .error{
            color: red;
        }
        .wrong{
            color: red;
        }
    </style>
    <script>
        window.onload=function () {
            var img=document.getElementById("img");
            img.onclick=function () {
                img.src="/admin/checkcode?time="+new Date().getTime();
            }
        }
    </script>
</head>
<body>
<div class="all">
    <div class="left">
    <p>管理员登录</p>
    <p> User Login</p>
</div>
    <div class="right">
        <a href="${pageContext.request.contextPath}/regist.jsp"><h3>没账号？点击注册</h3></a>
    </div>
    <div class="center">
        <div class="form">
            <form action="/admin/findlogin" method="post">
                <table>
                    <tr>
                        <td class="td_left"><label for="username">用户名：</label></td>
                        <td class="td_right"><input type="text" name="username" id="username" placeholder="请输入用户名">
                            <span id="s_username"class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="password">密码：</label></td>
                        <td class="td_right"><input type="password" name="password" id="password"placeholder="请输入密码">
                            <span id="s_password" class="error"></span></td>
                        <td> <div class="wrong">${login_error}</div></td>
                    </tr>
                    <tr>
                        <td class="td_left"><label for="password">验证码：</label></td>
                        <td class="td_right"><input type="text" name="checkcode" id="name">
                            <span id="#name" class="error"></span></td>
                        <td colspan="1"><img src="/admin/checkcode" id="img"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <div class="wrong">${check_error}</div></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center" ><input type="submit" value="登录" id="buttons-hbox"></td>
                    </tr>

                </table>
            </form>
        </div>
    </div>
</div>

</body>
</html>