<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<meta name="description" content="博库网品种丰富的中文网上书店，160万种图书在线热销！图书、音像、软件正品行货超低折扣，全场免邮，支持全国货到付款。" />
<meta name="keywords" content="博库网,博库,博库书城,网上书店,网上买书,图书,影视,音像,软件"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" type="text/css" href="/statics/css/myframe.css" />
<link rel="stylesheet" type="text/css" href="/statics/css/public.css" />
<link rel="stylesheet" type="text/css" href="/statics/css/component.css" />
<link rel="stylesheet" type="text/css" href="/statics/css/module.css" />

<!-- 字体图标 -->
<link rel="stylesheet" type="text/css" href="/statics/css/iconfonts.css" />

<script type="text/javascript" src="/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/statics/js/component.js"></script>

<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="/statics/css/flexslider.css" />
<script type="text/javascript" src="/statics/js/flexslider.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title">博库网</title>

<style>
	a{
		padding-bottom: -10px;
	}
	a:hover{
		color: blue;
		
	}
	
</style>
<script type="text/javascript">
	$(function() {
		$("#MyForm").submit(function() {
			return chck();
		});
		
		$(".dj").click(function(){
		
		var url="YanzServlet?opr=dj";
		$.get(url,null,function(data){
		
		$("input[name='sjs']").val(data);
		
		});
		
		});
	});
	function chck() {
		var name = $("input[name='user_name']").val();
		var pwd = $("input[name='pwd']").val();
		var sjs = $("input[name='sjs']").val();
		var yzm = $("input[name='yzm']").val();
		if (name == "" || name == null) {
			alert("用户名不能为空！");
			return false;
		} else if (pwd == "" || pwd == null) {
			alert("密码不能为空！");
			return false;
		} else if(yzm == "" || yzm == null){
			alert("验证码不能为空");
			return false;
		}
		else if(yzm!=sjs){
			alert("验证码不正确");
			return false;
		}
		return true;
	}
</script>

</head>
<body>

<!-- 头部 -->
<div class="header-2 bc-f oh">

    <!-- 顶部 小标题  登录信息-->
<div class="bc-f5 ht-30 lh-30">
    <div class="wd-1200 ma fs-12 cl-6">
        <p class="fl">
                        <a class="hover cl-6" href="/login.php" target="_blank" title="登录">登录</a>
            <span class="pd-0005 cl-c">|</span>
            <a class="mr-30 hover cl-6" href="/passport/register.php" target="_blank" title="免费注册">免费注册</a>
                        <a class="hover cl-6" href="/download.php" target="_blank" title="下载博库APP"><span class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr">&#xe933;</span>下载博库APP</a>
        </p>
        <p class="fr">
            <a class="hover fr cl-6" href="javascript:void()" onclick="openQimooChat();" title="联系客服">联系客服</a>
            <span class="pd-0015 cl-c fr">|</span>
            <a class="hover fr cl-6" href="/user/shop/settings.php" target="_blank" title="店铺管理">店铺管理</a>
            <span class="pd-0015 cl-c fr">|</span>
            <a class="hover fr cl-6" href="/user/collection.php" target="_blank" title="收藏夹">收藏夹</a>
            <span class="pd-0015 cl-c fr">|</span>
            <div class="fr mouseenter-box mouseenter mouseleave pr">
                <label class="cp">我的博库<span class="icon-down-line ml-5 fs-11">&#xe91e;</span></label>
                <div class="acount">
                    <a class="hover cl-6 to-hd" href="/user/"  target="_blank" title="">我的博库</a>
                    <a class="hover cl-6 to-hd" href="/user/orders/order.php" target="_blank" title="">我的订单</a>
                    <a class="hover cl-6 to-hd" href="/user/coupon.php" target="_blank" title="">我的优惠券</a>
                    <a class="hover cl-6 to-hd" href="/user/collection.php" target="_blank" title="">我的收藏</a>
                    <a class="hover cl-6 to-hd" href="/user/account.php" target="_blank" title="">我的收入</a>
                    <a class="hover cl-6 to-hd" href="/user/message.php" target="_blank" title="">官方消息</a>
                    <a class="hover cl-6 to-hd" href="javascript:void(0);" title=""></a>
                </div>
            </div>
            <div class="cb"></div>
        </p>
        <div class="cb"></div>
    </div>
</div>
    <div class="wd-1200 ma bb-1-e8">
        <div class="logo">
            <a class="db logo-box fl" href="/index.php">
                <img src="img/logo.png" alt="" height="45" class="db hidden">
            </a>
            <div class="cb"></div>
        </div>
    </div>

</div><div class="content" style="border: 0px solid red; width: 500px;">
    <div class="reg-bar-tips mt-25">
        <p class="lh-2 fs-16"><strong>用户注册</strong></p>
        <div class="ht-30 pr">
            <div class="reg-bar step-1 active wd-585 lh-2p2 cl-f">
                <p class="ta-ct">1.填写注册信息</p>
                <span class="item"></span>
            </div>
         
        </div>
    </div>
    <div class="wd-720 mg-a mt-20" style="border: 0px solid red; width: 400px;">
        <form class="reg-frame lh-2p5" action="UserServlet?opr=zc" method="post" id="MyForm">
            <ul>
                <li>
                    <!-- .reg-err 表单错误信息显示区域 除了找回密码发送验证 不用cl-rd 其余所有错误同意使用cl-rd -->
                    <div class="pl-90 reg-err ht-35"></div>
                </li>
                <li >
                    <div class="wd-90 ta-rt fl">用户名：</div>
                    <div class="fl pr">
                        <input class="wd-266 ht-24 lh-24 pd-0406" type="text" name="user_name" id="dl" value="">
                        <span class="icon-zzwrong-block cl-67"></span>
                    </div>
                    <div class="fl ml-10">
                        <p>&nbsp;</p>
                    </div>
                    <div class="cb"></div>
                </li>
               <li class="mt-20" style=" border: 0px solid red;">
                    <div class="wd-90 ta-rt fl" style="border: 0px solid red;">验证码：</div>
                    <div class="fl" >
                        <div class="fl pr">
                            <input class="wd-156 ht-24 lh-24 pd-0406" type="text" name="yzm" id="smscode" value="" style="width: 120px;"/>
                            	
                            <span class="icon-zzwrong-block cl-67"></span>
                        </div>
                        <div class="fl pr">
                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input class="wd-156 ht-24 lh-24 pd-0406" type="text" readonly="readonly" name="sjs" id="smscode" value="yanzen" style="width: 75px;font-size: 17px;margin: 0px;"/>
                            	
                            <span class="icon-zzwrong-block cl-67"></span>
                        </div>
                        <a class="dj">换一换</a>
                    </div>
                    <div class="fl ml-10">
                        <p>&nbsp;</p>
                    </div>
                    <div class="cb"></div>
                </li>
                <li class="mt-20">
                    <div class="wd-90 ta-rt fl">密 码：</div>
                    <div class="fl pr">
                        <input class="wd-266 ht-24 lh-24 pd-0406" type="password"  name="pwd" id="password" value="" maxlength="20">
                        <span class="icon-zzwrong-block cl-67"></span>
                        <span class="icon-zzeye-block cl-dc"></span>
                    </div>
                    <div class="fl ml-10 cl-9 hidden">
                        <p>密码可使用字母加数字或符号的组合长度6-20个字符</p>
                    </div>
                    <div class="cb"></div>
                </li>
                <li class="wd-370 ta-ct">
                    <button class="reg-btn mt-35 lh-2p4" style="cursor:pointer"  type="submit">注册</button>
                    <div class="wd-328 ma">
                        <p class="ta-rt cl-bl-l" style="cursor:pointer">已有账号&nbsp;<a class="cl-bl-l" href="/login.php">前往登录</a></p>
                    </div>
                </li>
            
            </ul>
        </form>
    </div>
</div>



<style type="text/css">
    .popup-box .titleBox {
        height: 40px;
        line-height: 40px;
        background-color: #f3f3f3;
        font-size: 14px;
        font-weight: bold;
        color: #212121;
        padding: 0 20px;
    }
    .popup-box .contentBox {
        line-height: 25px;
        max-height: 340px;
        overflow-y: scroll;
        padding: 10px 20px;
    }
    .popup-box .contentBox p {
        font-weight: bold;
    }
    .popup-box .buttonBox {
        height: 90px;
        text-align: center;
        line-height: 90px;
    }
</style>


<!-- 底部 -->

    <!-- 底部 -->
   <!-- 底部 -->
	<div class="footer">
		<!-- tag -->
		<div class="tag">
			<ul class="clearfix">
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="img/zheng.png" width="50"
					height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场正品</p>
						<p>出版社直采·博库正品</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="img/sheng.png" alt=""
					width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场满59包邮</p>
						<p>惊喜不断·让利多多</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="img/huo.png" alt=""
					width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">门店自取</p>
						<p>就近取货·方式灵活</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="img/hao.png" alt=""
					width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">售后无忧</p>
						<p>服务体验·更加精彩</p>
					</div>
					<div class="cb"></div></li>
			</ul>
		</div>
		<div class="wd-1200 ma pd-2000 clearfix"></div>
		<!-- copyright -->
		<div class="copyright">
			<div class="wd-605 ma cl-9 ta-ct" style="width: 656px;">
				<div class="fl lh-50">
					<img src="img/jingcha.png"
						alt="" height="36" class="va-md pd-0005 defaultlazy"> <a
						href="/system/refer.php" target="_blank"> <img
						src="img/huizhang.png" alt=""
						height="36" class="va-md pd-0005 defaultlazy"> </a>
				</div>
				<div class="fl pd-0010">
					<p>©Copyright 2005-2017 bookuu.com 版权所有</p>
					<p>增值电信业务经营许可证:浙B2-2011021</p>
					<a class="copyRightA"
						href="#"
						target="_blank">出版物经营许可证新出发浙批字第300411号</a>
				</div>
				<div class="fl lh-50">
					<a
						href="#"
						target="_blank"><img
						src="img/knetSealLogo.png"
						alt="" height="30" class="va-md pd-0005 defaultlazy">
					</a> <a href="#"
						target="_blank"><img
						src="img/cert.png" alt=""
						height="30" class="va-md pd-0005 defaultlazy">
					</a>
				</div>
				<div class="cb"></div>
			</div>
		</div>
	</div>
<style type="text/css">
    .copyRightA {
        color: #999;
    }
    .copyRightA:hover {
        color: #fff;
    }
</style>


<script type="text/javascript">

    var qimoClientId = {};
    var m7CardInfo = {
        "left":{
            "url": ""
        },
        "right1": {
            "text": "",
            "color": "",
            "fontSize": 12
        },
        "right2": {
            "text": "",
            "color": "",
            "fontSize": 12
        },
        "right3": {
            "text": "",
            "color": "",
            "fontSize": 14
        },
        "extraInfos": [],
        "url": "//www.bookuu.com/"
    };
    var chatflag = 0;

    //获取用户登陆信息并

    $.ajax({
        type: "post",
        url: "/ajax/user.php",
        dataType: "json",
        success: function (data) {
            var user_str = '';
            if(data.code == "0000" && data.info.is_login == 1){
                $("#header_user_session_userid").val(data.info.userid);
                $("#header_user_session_name").val(data.info.name);
                $("#header_user_session_mobilephone").val(data.info.mobilephone);
                $("#header_user_session_header").val(data.info.header);
                //console.log(11);
                user_str += '欢迎，' + data.info.name;
                user_str += '<span class="pd-0005 cl-c">|</span>';
                user_str += '<a class="mr-30 hover cl-6" href="/login.php?act=loginout" title="退出登录">退出登录</a>';

                qimoClientId = {
                    userId: data.info.userid, 
                    nickName: data.info.name,
                    customField: { //扩展字段，json对象，对象中的key-value都自定义
                        "用户UID":data.info.userid,
                        "用户名称":data.info.name,
                        "手机号码":data.info.mobilephone
                    }
                };
                
                chatflag = 1;

                var dq_goods_id = "";
                                    
                if(dq_goods_id != ""){
                    //扩展信息
                    m7CardInfo = {
                        "left":{
                            "url": "https://bnmppic.bookuu.com/"  // 左侧图片地址，可不填
                        },
                        "right1": {
                            "text": "",  // 首行文字内容，展示时超出两行隐藏，卡片上单行隐藏
                            "color": "#595959",                 // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
                            "fontSize": 12                      // 字体大小， 默认12 ， 请传入number类型的数字
                        },
                        "right2": {
                            "text": "",        // 第二行文字内容，展示时超出两行隐藏，卡片上单行隐藏
                            "color": "#595959",                 // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
                            "fontSize": 12                      // 字体大小， 默认12 ， 请传入number类型的数字
                        },
                        "right3": {
                            "text": "¥",           // 第三行文字内容，展示时超出两行隐藏，卡片上单行隐藏
                            "color": "#ff6b6b",                 // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#ff6b6b
                            "fontSize": 14                      // 字体大小， 默认14 ， 请传入number类型的数字
                        },
                        "extraInfos": [],             // 额外信息，访客不可见，座席点击卡片上的更多可见，可不填，字符串形式的文本数组
                        "url": "//www.bookuu.com/detail.php?id="                     // 点击可跳转的链接
                    };
                }

            }else{
                user_str += '<a class="hover cl-6" href="/login.php" target="_blank" title="登录">登录</a><span class="pd-0005 cl-c">|</span><a class="mr-30 hover cl-6" href="/passport/register.php" target="_blank" title="免费注册">免费注册</a>';
            }

            user_str += '<a class="hover cl-6" href="/download.php" target="_blank" title="下载博库APP"><span class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr">&#xe933;</span>下载博库APP</a>';

            $("#www_user_session_info").html(user_str);

        }
    });

</script>

<script type='text/javascript' src='https://webchat.7moor.com/javascripts/7moorInit.js?accessId=92464560-3f16-11e9-8a25-8d8585556f17&autoShow=false&language=ZHCN' async='async'>
</script>

<script type="text/javascript">
    function openQimooChat(){
        if(chatflag == 1){
            console.log(qimoClientId);
            console.log(m7CardInfo);
        }
        window.qimoChatClick();
    }
</script>
    <script>
        $(function(){
            //频道 tab切换
            $(".my_tab").click(function(){
                var tabId = $(this).attr("data-id");
                $(this).addClass('on-click');
                $(this).siblings().removeClass('on-click');

                $("#my_tab_"+tabId).removeClass("dn");
                $("#my_tab_"+tabId).siblings(".my_tab_content").addClass('dn');

                //tablazy 图片加载
                let id = "#my_tab_"+ tabId + ' img'
                 slidingImgs = $(id);
                for ( i = 0; i < slidingImgs.length; i++) {
                    // 遍历操作
                    if(slidingImgs[i].getAttribute('data-srctaplazy')){
                        slidingImgs[i].src = slidingImgs[i].getAttribute('data-srctaplazy');
                        slidingImgs[i].removeAttribute('data-srctaplazy');
                    }
                }
            });
        });

        // 懒加载
        lazyLoading();

        // 菜单
        mouseenterAndTab();
        
        $(function(){

            //公共：加入收藏
            $('.collect').on('click', function(){
                var _span = $(this).find('span');

                var goods_id = $(this).attr('goods-id');
                if( _span.hasClass('icon-star-line') ){
                    $.ajax({
                        type: "get",
                        url:"/ajax/collect.php",
                        data: {act:'collect',type:'add',id:goods_id},
                        dataType: "json",
                        success: function(data) {
                            if(parseInt(data.status) == 1){
                                alert(data.info);

                                _span.removeClass('icon-star-line').addClass('icon-star-block').html('&#xe945;');
                                $('.collect').removeClass('bd-1-a cl-9').addClass('bd-1-bl-d cl-bl-l');
                                


                            } else if(parseInt(data.status) == 404){
                                window.location.href = data.info;
                            } else {
                                alert(data.info);
                            }
                        }
                    });
                }else{
                    confirm('', '你要取消收藏该商品吗?', '', function(res){
                        if (res) {
                            $.ajax({
                                type: "get",
                                url:"/ajax/collect.php",
                                data: {act:'collect',type:'delete',id:goods_id},
                                dataType: "json",
                                success: function(data) {
                                    if(parseInt(data.status) == 1){
                                        alert(data.info);

                                        _span.removeClass('icon-star-block').addClass('icon-star-line').html('&#xe946;');
                                        $('.collect').removeClass('bd-1-bl-d cl-bl-l').addClass('bd-1-a cl-9');

                                    } else if(parseInt(data.status) == 404){
                                        window.location.href = data.info;
                                    } else {
                                        alert(data.info);
                                    }
                                }
                            });
                        }else{
                            _span.removeClass('icon-star-line').addClass('icon-star-block').html('&#xe945;');
                            $('.collect').removeClass('bd-1-a cl-9').addClass('bd-1-bl-d cl-bl-l');
                        }
                    });
                }

            });

            getCartNum();

            //公共：加入购物车
            $('.addcart').on('click',function(){
                var goods_id = $(this).attr('goods-id');
                var number = $(this).attr('goods-number');
                $.ajax({
                    type: "post",
                    url:"/ajax/cart.php?act=add",
                    data: {id:goods_id,number: typeof(number) == 'undefined' ? 1 :number},
                    dataType: "json",
                    success: function(data) {
                        if(parseInt(data.status) == 404){
                            window.location.href = data.info;
                        }else{
                            if(data.status == 200){
                                $('.cart_num').addClass('bc-rd-d pd-0005').html(data.list_number);
                            }
                            alert(data.info);
                        }
                    },error:function(){
                        alert('加入失败');
                    }
                });
            });

            //公共：签到
            $('.checkin').on('click',function(){
                $.ajax({
                    type: "post",
                    url:"/ajax/checkin.php?act=signed",
                    data: {},
                    dataType: "json",
                    success: function(data) {
                        if(parseInt(data.status) == 404){
                            window.location.href = data.info;
                        }else{
                            alert(data.info);
                        }
                    },error:function(){
                        alert('签到失败');
                    }
                });
            });

        });

        //获取购物车的数量
        function getCartNum(){
            var num = getCookie('gwshoppingcart');
            if(num == null){
                //公共：购物车数量统计
                $.ajax({
                    type: "get",
                    url:"/ajax/cart.php?act=count",
                    dataType: "json",
                    success: function(data) {
                        if( parseInt(data.status) == 200 && parseInt(data.list_number)>0){
                            $('.cart_num').addClass('bc-rd-d pd-0005').html(data.list_number);
                        }
                    }
                });
            }
            if(num >0 ){
                $('.cart_num').addClass('bc-rd-d pd-0005').html(num);
            }
        }

        function getCookie(name) {
            var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
            if(arr=document.cookie.match(reg))
                return unescape(arr[2]);
            else
                return null;
        }

        // 进度条
        $('.progress-box').progress();

    </script>

</body>

</html>