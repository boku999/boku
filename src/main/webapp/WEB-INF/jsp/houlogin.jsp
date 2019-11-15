<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>博库后台管理</title>
    <link type="text/css" rel="stylesheet" href="/statics/css/Login.css"/>
    <script type="text/javascript" src="/statics/js/jquery-1.12.4.js"></script>
    <script>
        $(function () {

            $("#container").hide();
            $("#container").fadeIn(4000);

            //用户名非空验证
            $("#uname").blur(function () {
                if ($(this).val() == "") {
                    $("#tra").html("用户名不能为空!");
                    return;
                } else if ($("#upwd").val() == "") {
                    $("#tra").html("密码不能为空!");
                    return;
                } else {
                    $("#tra").hide();
                }
            });
            //密码非空验证
            $("#upwd").blur(function () {
                if ($(this).val() == "") {
                    $("#tra").html("密码不能为空!");
                    return;
                } else if ($("#uname").val() == "") {
                    $("#tra").html("用户名不能为空!");
                    return;
                } else {
                    $("#tra").hide();
                }
            });


            //登录验证
            $("#btnLogin").click(function () {
                Login();
            });
            //单机回车的时候触发登录验证
            $(document).keydown(function (event) {
                if (event.keyCode == "13") {
                    Login();
                }
            });

        });

        //登录验证方法
        function Login() {
            if ($("#uname").val() == "" && $("#upwd").val() == "") {
                $("#tra").html("用户名和密码不能为空!");
            } else if ($("#uname").val() == "") {
                $("#tra").html("用户名不能为空!");
            } else if ($("#upwd").val() == "") {
                $("#tra").html("密码不能为空!");
            }
        }
    </script>
</head>

<body>
<div id="images">
    <div id="container">
        <table></table>
        <div class="black">
            <form action="/user/dologin.html" method="post" id="Myform">
                <table>
                    <thead>
                    <tr>
                        <th>
                            <h2>Login</h2>
                        </th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td colspan="2">
                            <hr>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input id="uname" name="uname" class="inputText" type="text" placeholder="请输入您的用户名"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input id="upwd" class="inputText" name="upwd" type="password" placeholder="请输入您的密码"/>
                        </td>
                    </tr>
                    </tr>
                    <tr id="tra">
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span></span>
                        </td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <input id="btnLogin" type="submit" value="登录"/>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>
</body>

</html>