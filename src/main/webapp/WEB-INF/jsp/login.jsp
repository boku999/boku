<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录-博库体验店</title>

    <link type="text/css" rel="stylesheet" href="/statics/css/style.css">


    <!-- <script src="js/img_ver.js" charset="utf-8"></script> -->
    <script language="javascript" src="/statics/js/img_ver.js" charset="UTF-8"></script>
    <style>
        .bxs-row {
            margin-bottom: 12px;
        }

        .logo-box {
            width: 404px;
            margin: 120px auto;
            border: 1px solid #e5e5e5;
            border-radius: 4px;
            box-shadow: 0 4px 18px rgba(0, 0, 0, 0.2);
            position: relative;
            overflow: hidden;
            height: 360px;
        }

        .login {
            position: absolute;
            width: 320px;
            left: 0;
            top: 0;
            padding: 42px 42px 36px;
            transition: all 0.8s;
        }

        .username,.password,.btn {
            height: 44px;
            width: 100%;
            padding: 0 10px;
            border: 1px solid #9da3a6;
            background: #fff;
            text-overflow: ellipsis;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -khtml-border-radius: 4px;
            border-radius: 4px;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
            color: #000;
            font-size: 1em;
            font-family: Helvetica, Arial, sans-serif;
            font-weight: 400;
            direction: ltr;
            font-size: 13px;
        }

        .submit {
            background-color: #0070ba;
            color: #fff;
            border: 1px solid #0070ba;
        }

        .submit:hover {
            background-color: #005ea6;
        }

        .verBox {
            position: absolute;
            width: 100%;
            text-align: center;
            left: 404px;
            top: 0;
            opacity: 0;
            transition: all 0.8s;
            padding-top: 55px;
        }

        .err {
            margin: 12px 0 0;
            line-height: 12px;
            height: 12px;
            font-size: 12px;
            color: red;
        }
        #tt {
            width: 100%;
            height:100%;
        }
        body{
            position: relative;
            background-color:#E4EBF5;
        }
        .logo-box{
            position: absolute;
            top:5%;
            right:10%;
        }
    </style>



    <script type="text/javascript" src="/statics/js/jquery-1.12.4.js"></script>
</head>
<body>

    <a href="/user/registered.html"><img src="/statics/img/logo.png"/></a>


    <div>
    <img src="/statics/img/bannner33.jpg" id="tt"/>
</div>


<div class="logo-box" >

    <div class="login" style="">

        <div class="bxs-row" style="text-align:center;">

            <img id="logo" src="/statics/images/logo.jpg" style="width:72px;"><span
                class="tips" style="color:red;">忍住不哭 来段口技</span>
        </div>

        <div class="bxs-row">
            <input type="text" class="username" placeholder="用户名" value="" name="uname">
            <p class=" err err-username"></p>
        </div>
        <div class="bxs-row">
            <input type="password" class="password" placeholder="密码" name="upwd">
            <p class="err err-password"></p>
        </div>
        <div class="bxs-row">
            <input type="submit" class="submit btn" value="登录">
        </div>
    </div>
    <div class="verBox">
        <div id="imgVer" style="display:inline-block;"></div>
    </div>
</div>


<script type="text/javascript">

    imgVer({
        el : '$("#imgVer")',
        width : '260',
        height : '116',
        img : [ '/statics/images/ver.png',
               '/statics/images/ver-1.png',
              '/statics/images/ver-2.png',
             '/statics/images/ver-3.png' ],
        success : function() {
            var username = $(".username").val();
            var password = $(".password").val();
            //alert('执行登录函数');
            $(".login").css({
                "left" : "0",
                "opacity" : "1"
            });
            $(".verBox").css({
                "left" : "404px",
                "opacity" : "0"
            });

            var url = "/user/islogin.html";
            $.post(url, {uname:username,upwd:password}, function(data) {
                if (data=='true') {
                    //登录成功，跳转页面
                    location.href='/book/Mnag.html';
                } else {
                    $(".tips").html('你是不是不知道账号密码！？？？');
                    $("#logo").attr("src", '/statics/images/login-err.png');
                }
            },"json");

         },
        // error : function() {
        //    alert('错误什么都不执行')
          //}
    });
    $(".submit").on('click', function() {
        if ($(".username").val() == '') {
            $(".tips").html('老兄！！你用户名呢！？？？');
            $("#logo").attr("src", '/statics/images/null-username.jpg');
            return false;
        } else if ($(".password").val() == '') {
            $(".tips").html('老兄！！你密码呢！？？？');
            $("#logo").attr("src", '/statics/images/null-password.jpg');
            return false;
        } else {
            $(".login").css({
                "left" : "-404px",
                "opacity" : "0"
            });
            $(".verBox").css({
                "left" : "0",
                "opacity" : "1"
            })
        }
        return true;
    })

</script>

</body>

</html>