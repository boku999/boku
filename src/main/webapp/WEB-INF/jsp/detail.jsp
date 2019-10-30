<%@ page language="java" import="java.util.*" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<meta name="description"
	content="博库网品种丰富的中文网上书店，160万种图书在线热销！图书、音像、软件正品行货超低折扣，全场免邮，支持全国货到付款。" />
<meta name="keywords" content="博库网,博库,博库书城,网上书店,网上买书,图书,影视,音像,软件" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" href="css/MyCss01.css" />
<link rel="stylesheet" href="css/MyCss02.css" />
<link rel="stylesheet" href="css/MyCss03.css" />
<link rel="stylesheet" href="css/MyCss04.css" />


<!-- 字体图标 -->
<link rel="stylesheet" href="css/MyCss05.css" />

<script type="text/javascript" src="js/MyJs01.js"></script>
<script type="text/javascript" src="js/MyJs02.js"></script>

<!-- FlexSlider -->
<link rel="stylesheet" href="css/MyCss06.css" />
<script type="text/javascript" src="js/MyJs03.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />

<title id="www_pc_title">二手时间-四月物语</title>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="css/jcountdown.css" type="text/css"></link>
</head>
<body>

	<!-- 头部 -->
	<div class="header bc-f">
		<!-- 顶部 小标题  登录信息-->
		<div class="bc-f5 ht-30 lh-30">
			<div class="wd-1200 ma fs-12 cl-6">
				<p class="fl" id="www_user_session_info">

					<c:choose>
					<c:when test="${isok==false }">
						<a class="hover cl-6" href="login.jsp" title="登录">登录</a>
						<span class="pd-0005 cl-c">|</span>
						<a class="mr-30 hover cl-6" href="registered.jsp" title="免费注册">免费注册</a>
					</c:when>
					<c:otherwise>
					欢迎：${uid.uname}
					<span class="pd-0005 cl-c">|</span>
						<a class="mr-30 hover cl-6" href="BookServlet?opr=out&isok=false"
							title="退出登陆">退出登陆</a>
					</c:otherwise>
					</c:choose>
					<a class="hover cl-6" href="#" target="_blank"
						title="下载博库APP"> <span
						class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr"></span>下载博库APP</a>
				</p>
				<p class="fr">
					<a class="hover fr cl-6" href="javascript:void()"
						onclick="openQimooChat();" title="联系客服">联系客服</a> <span
						class="pd-0015 cl-c fr">|</span> <a class="hover fr cl-6"
						href="/user/shop/settings.php" target="_blank" title="店铺管理">店铺管理</a>
					<span class="pd-0015 cl-c fr">|</span> <a class="hover fr cl-6"
						href="/user/collection.php" target="_blank" title="收藏夹">收藏夹</a> <span
						class="pd-0015 cl-c fr">|</span>
				<div class="fr mouseenter-box mouseenter mouseleave pr">
					<label class="cp">我的博库<span
						class="icon-down-line ml-5 fs-11"></span>
					</label>
					<div class="acount">
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的博库</a>
						<a class="hover cl-6 to-hd" href="#"
							 title="">我的订单</a> <a class="hover cl-6 to-hd"
							href="#" target="_blank" title="">我的优惠券</a> <a
							class="hover cl-6 to-hd" href="#"
							target="_blank" title="">我的收藏</a> <a class="hover cl-6 to-hd"
							href="#" target="_blank" title="">我的收入</a> <a
							class="hover cl-6 to-hd" href="#" target="_blank"
							title="">官方消息</a> <a class="hover cl-6 to-hd"
							href="javascript:void(0);" title=""></a>
					</div>
				</div>
				<div class="cb"></div>
				</p>
				<div class="cb"></div>
				<input type="hidden" id="header_user_session_userid" value="" /> <input
					type="hidden" id="header_user_session_name" value="" /> <input
					type="hidden" id="header_user_session_mobilephone" value="" /> <input
					type="hidden" id="header_user_session_header" value="" />
			</div>
		</div>
		<!-- logo+搜索+购物车 -->
		<div class="wd-1200 ma">
			<div class="search-container" id="search-container">
				<div class="logo-container">
					<a class="db logo-box fl" href="Mnag.jsp"> <img
						src="img/logo.png" alt=""
						width="220" class="db" alt="logo" draggable="false" /> </a>
					<!-- 搜索 -->
					<div class="fl">
						<div class="search-box">
							<div class="fl wd-480 pr zi-1 associate-container">
								<input type="text" id="gudingsearch" placeholder="新课标" value=""
									class="bd-n searchkey">
								<ul class="associate-box history">

								</ul>
							</div>
							<p class="fr icon-search-line cl-f fs-27 tosearch">搜索</p>
							<div class="cb"></div>
						</div>
						<p class="fs-12 lh-25  tip">
							<a target="_blank" class="cl-rd-l" href="#"
								title="长安十二时辰">长安十二时辰</a> <span class="cl-9 pd-0005">|</span> <a
								target="_blank" class="cl-9" href="#"
								title="快乐读书吧">快乐读书吧</a> <span class="cl-9 pd-0005">|</span> <a
								target="_blank" class="cl-9" href="#"
								title="平凡的世界">平凡的世界</a> <span class="cl-9 pd-0005">|</span> <a
								target="_blank" class="cl-9" href="#"
								title="夏洛的网">夏洛的网</a> <span class="cl-9 pd-0005">|</span> <a
								target="_blank" class="cl-9" href="#" title="旅行">旅行</a>
						</p>
						<div class="cb"></div>
					</div>
					<!-- uid==》登录的uid -->
					<div class="fr ta-rt mt-8 cart">
						<!-- uid=0当没有登陆的时候	-->
						<a class="fs-16 bd-1-d br-4 pd-0610 cart-box"
							href="UserBooksServlet?opr=gwc&usid=${uid.uid}"> <span
							class="icon-cart-block mr-10 cl-a9 pr tp-3 fs-18"></span>
							<span class="mr-5">购物车</span> <label
							class="cl-f fw-nm br-10 cart_num"></label> </a>
					</div>
					<div class="cb"></div>
				</div>
			</div>
			<!-- 分类 -->
			<div class="nav-box">
				<div class="type fl public">
					<a target="_blank" class="db cl-f title" href="Classification.jsp"><span
						class="icon-type-line cl-f mr-10 pr tp-2"></span>所有商品分类</a>

				</div>
				<div class="nav fl">
					<!--固定导航菜单-->
					<a target="_blank" class="db pd-0015 fl on-mouse" href="#"><span>首页</span>
					</a> <a target="_blank" class="db pd-0015 fl " href="#"><span>新品</span>
					</a> <a target="_blank" class="db pd-0015 fl " href="#"><span>限时购</span>
					</a> <a target="_blank" class="db pd-0015 fl " href="#"><span>排行榜</span>
					</a>
					<!--<a target="_blank" class="db pd-0030 fl " href="/grouplist.php"><span>拼团</span></a>-->
					<!--自定义导航菜单-->
					<span class="db pd-0015 fl">|</span> <a target="_blank"
						class="db pd-0015 fl " href="#"> <span>图书馆</span>
					</a> <a target="_blank" class="db pd-0015 fl " href="#">
						<span>文创馆</span> </a> <a target="_blank" class="db pd-0015 fl "
						href="#"> <span>生活美学馆</span> </a>
				</div>
				<div class="cb"></div>
			</div>
		</div>
	</div>

	<script>
        $(function(){
            //默认搜索词更新
            var bar_type = 'detail';
            if(bar_type == 'index' || bar_type == 'detail'){
                $("#gudingsearch").attr('value','');
            }
            $.ajax({
                type: "post",
                url: "/ajax/getdefaultkey.php",
                dataType: "json",
                success: function (data) {
                    var defaultkey = '';
                    if(data.code == "0000"){
                        defaultkey = data.info.defaultkey;
                        $("#gudingsearch").attr('placeholder',defaultkey);
                    }
                }
            });
        })
        // 滚动交互
        $(window).on('scroll', function(){
            var _scroll = $(window).scrollTop();
            if(_scroll >= 200 ){
                $('#search-container').addClass('active');
            }else{
                $('#search-container').removeClass('active');
            }
        });
        $(".tosearch").click(function(){
            var key = $(this).parent().find(".searchkey").val();
            if(key == ''){
                key = $(this).parent().find(".searchkey").attr('placeholder');
            }
            location.href = '/search.php?k=' + key;
        });


        function getKeyMore(_associateBox,_key){

            console.log('开始请求',_key);
            //获取关联词
            $.ajax({
                type: "post",
                url:"/goods/search.php",
                data: {act:"getMoreKeys",keyword:_key},
                dataType: "json",
                success: function(data) {
                    if(data.length > 0){
                        _associateBox.empty();
                        var str = "";
                        for(var i=0;i<data.length;i++){
                            var search_url = '/search.php?k=' + data[i].key;
                            str += '<li class="associate-content">'+
                                    '<a class="fl" href="'+search_url+'">'+data[i].akey+'</a>'+
                                    '<label class="fr delete"><span class="icon-close-line fr">&#xe919;</span></label>'+
                                    '<div class="cb"></div>'+
                                    '</li>';
                        }
                        _associateBox.append(str);
                    }
                }
            });
        }
        function getHistoryKeys(_associateBox,_key){
            console.log('历史记录',_key);
            //获取最近搜索
            $.ajax({
                type: "post",
                url:"/goods/search.php",
                data: {act:"getHistoryKeys",keyword:_key},
                dataType: "json",
                success: function(data) {
                    if(data.length > 0){
                        _associateBox.empty();
                        var str = '<li class="associate-title">'+
                                '<div class="fl text">最近搜索</div>'+
                                '<label class="fr delete all"><span class="icon-delete-line">&#xe91d;</span></label>'+
                                '<div class="cb"></div>'+
                                '</li>';
                        for(var i=0;i<data.length;i++){
                            var search_url = '/search.php?k=' + data[i].key;
                            str += '<li class="associate-content">'+
                                    '<a class="fl" href="'+search_url+'">'+data[i].key+'</a>'+
                                    '<label class="fr delete"><span class="icon-close-line fr">&#xe919;</span></label>'+
                                    '<div class="cb"></div>'+
                                    '</li>';
                        }
                        _associateBox.append(str);
                    }
                }
            });
        }
        var timer1 = '';    //定时器1
        var timer2 = '';    //定时器2

        $('body').on('hover', '.associate-box li.associate-content', function(){
            $('.associate-box li.associate-content').removeClass('active');
            $(this).addClass('active');
        });

        //输入完成回车搜索
        $('body').on('keyup focus', '.search-box input', function(event){
            var e = event || window.event || arguments.callee.caller.arguments[0];


            var _this = $('.search-box input');
            var _inputId = _this.attr("id");
            var _key = _this.val();
            var _associateContainer = _this.parents('.associate-container');
            var _associateBox = _this.siblings('.associate-box');
            var _associateTitle = _associateBox.find('.associate-title');   //最近搜索
            var _associateLi = $('.associate-box li');
            var _associateLiActive = $('.associate-box li.active');
            // 键盘向上
            if( e && e.keyCode == 38 ){
                var _associateTitleLength = _associateTitle.length;
                var _associateContentLength = _associateLi.length;
                var _associateContentActiveLength = _associateLiActive.length;
                var _index = _associateLiActive.index();
                _associateLi.removeClass('active');
                _index = _index - 1;
                // 历史记录
                if( _associateTitleLength == 0 ){
                    // 第一次focuse
                    if( _index == -1 ) _index = _associateContentLength - 1;
                    if( _associateContentActiveLength == 0 ) _index = 0;
                }else{
                    // 第一次focuse
                    if( _index == 0 ) _index = _associateContentLength - 1;
                    if( _associateContentActiveLength == 0 ) _index = 1;

                }
                _associateLi.eq( _index ).addClass('active');
                _this.val( _associateLi.eq( _index ).find('a').text() );

                return false;
            }
            // 键盘向下
            if ( e && e.keyCode == 40 ){
                var _associateTitleLength = _associateTitle.length;
                var _associateContentLength = _associateLi.length;
                var _associateContentActiveLength = _associateLiActive.length;
                var _index = _associateLiActive.index();
                _associateLi.removeClass('active');
                _index = _index + 1;
                // 历史记录
                if( _associateTitleLength == 0 ){
                    if( _associateContentActiveLength == 0 || _index == _associateContentLength ) _index = 0;
                }else{
                    if( _associateContentActiveLength == 0 || _index == _associateContentLength ) _index = 1;
                }
                _associateLi.eq( _index ).addClass('active');
                _this.val( _associateLi.eq( _index ).find('a').text() );

                return false;
            }
            //清空
            _associateBox.empty();
            // 文字为空，显示搜索记录
            if( _key == '' ){
                //延迟xx
                if(timer2){
//                    console.log(22,timer2);
                    clearTimeout(timer2);
                    console.log('未结束',timer2);
                } else{
                    console.log('开始了');
                }
                timer2 = setTimeout(function(){getHistoryKeys(_associateBox, _key)},600);
                _associateBox.addClass('history');
            }else{
                //延迟xx
                if(timer1){
//                    console.log(11,timer1);
                    clearTimeout(timer1);
                    console.log('未结束',timer1);
                } else{
                    console.log('开始了');
                }
                timer1 = setTimeout(function(){getKeyMore(_associateBox, _key)},600);
                _associateBox.removeClass('history');
            }
            // 搜索出来数据不为空才显示出来
            _associateBox.css('display', 'block');
            // enter键
            if( e && e.keyCode == 13 ){
                if( _key == '' ){
                    _key = _this.attr('placeholder');
                    _this.val(_key);
                }
                location.href = '/search.php?k=' + _key;
            }
        });
        $('.search-box input').on('blur', function(){
            blurFunc();
        });
        // 删除历史记录
        $('body').on('click', '.associate-box label.delete', function(){
            var _this = $(this);
            var _associateBox = _this.parents('.associate-box');
            var _input = _this.parents('.search-box').find('input');
            var _associateContent = _this.parents('.associate-content');
            var _associateTitle = _associateBox.find('.associate-title');
            var keyword = _associateContent.children("a").html();
            if( _this.hasClass('all') ){
                _associateBox.empty();
                keyword = '';
            }
            _associateContent.remove();
            var _contentLength = _associateBox.find('.associate-content').length;
            if( _contentLength == 0 ){
                _associateTitle.remove();
                _associateBox.css('display', 'none');
            }else{
//                _input.focus();
            }
            //删除记录
            $.ajax({
                type: "post",
                url:"/goods/search.php",
                data: {act:"deleteKeys",keyword:keyword},
                dataType: "json",
                success: function(data) {

                }
            });
        });
        $('.associate-box').on('mouseenter', function(){
            var _input = $('.search-box input');
            _input.off('blur');
        });
        $('.associate-box').on('mouseleave', function(){
            var _input = $('.search-box input');
            _input.on('blur', function(){
                blurFunc();
            });
        });
        function blurFunc(){
            var _associateBox = $('.search-box .associate-box');
            _associateBox.css('display', 'none');
        }
        
 

    </script>


	<script type="text/javascript">
    
    $(function(){
    
    $("#MyaddPrice02").click(function(){
    
  	var shref="UserBooksServlet?opr=add&usid=${uid.uid}&bokimg=${bookxq.bookimg }&boksj=${bookxq.price}&bokdj=${bookxq.discount}&bookids=${bookxq.bookid }&bokname=${bookxq.bookname}&count="+$("#countss").val();
  	
    $("#ids").attr("href",shref);
    
    });
    
    
    })
    
    
    
    </script>

	<style type="text/css">
.content_height img {
	display: block;
}
</style>
	<div class="section">
		<div class="wd-1200 ma">
			<!-- 当前位置 -->
			<p class="lh-50 cl-3">
				您的当前位置：<a target="_blank" href="/category.php">全部分类</a> ＞ <a
					target="_blank" href="/search.php?cid=10">图书</a> > <a
					target="_blank" href="/search.php?cid=1018">诗歌散文</a> > <a
					target="_blank" href="/search.php?cid=101801">纪实文学</a>
			</p>

			<!-- 商品详情 -->
			<div class="clearfix pt-20"
				style="border: 0px solid red;margin-left: 100px;">
				<div class="fl wd-430 mr-20">
					<!-- 商品展示 大图-->
					<div id="slider" class="flexslider bd-1-f5 ht-430">
						<div id="activity_img" class="tip-box dn"></div>
						<ul class="slides">


							<!--data-bgimg商品图片 data-tmp点击显示大图-->
							<img src="${bookxq.bookimg }" />


						</ul>
					</div>

					<!-- 商品展示 小图-->
					<!--<div id="carousel" class="flexslider bd-1-f5">
                    <ul class="slides">
                                                <li data-thumb="https://wdimg3.bookuu.com/goods/19/44/28/3446110.jpg" class="cp">
                            <div class="db square-box one-one bgimg lazyload hidden initial" data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/19/44/28/3446110.jpg@!w210);" data-tmp="https://wdimg3.bookuu.com/goods/19/44/28/3446110.jpg@!w210"></div>
                        </li>
                                            </ul>
                </div>-->

				</div>

				<!-- 商品名称 -->
				<div class="fl wd-520">
					<p class="bname" class="fs-18 cl-3 lh-40 to-hd fw-bd mb-10">
						<span id="www_goods_tags" class="cl-rd-l"></span>
						 <span id="www_goods_name" >${bookxq.bookname }</span>
					</p>
					<span id="www_goods_upper_title" style="color:grey;">
						${bookxq.info } </span>
					<div class="cl-9 mt-10 lh-30 mb-10">
						作者：<a href="/search.php?k=(白俄)S.A.阿列克谢耶维奇|译者:吕宁思" target="_blank"
							class="cl-bl-l mr-50">${bookxq.author }</a> 出版社：<a
							href="/search.php?k=中信" target="_blank" class="cl-bl-l">${bookxq.sell
							}</a>
					</div>
					<!--定位-->
					<input type="hidden" id="www_goods_rushbuy_info" value="">
					<!-- 今日 限时抢购活动-->



					<!-- 价格和优惠活动-->
					<div class="bc-e5 pd-15">
						<table width="100%" class="lh-30">
							<tr>
								<td width="70" class="cl-9">定 价</td>
								<td class="cl-3"><del 
										id="www_goods_market_price">¥${bookxq.discount }</del> <span
									class="cl-9 pd-0020" id="www_goods_commission_key"></span> <span
									id="www_goods_commission_val"></span>
								</td>
							</tr>
							<tr>
								<td width="70" class="cl-9 lh-40">售 价</td>
								<td><label class="cl-rd"> ¥<span name="boksj"
										class="fs-28 mr-10 pr tp-5" id="www_goods_price">${bookxq.price
											}</span> </label>
								</td>
							</tr>
						</table>
					</div>
					<div class="pd-0015">
						<table width="100%" class="lh-30 mt-10">

							<tr id="www_goods_activity_info">

							</tr>

							<!-- <tr>
                            <td class="pr clearfix">
                                <div class="cp addressAction clearfix fl">
                                    <div class="fl pd-0005 to-hd wd-120" id="www_goods_zip_addr"></div>
                                    <div class="fr pd-0005">
                                        <span class="icon-down-line ml-5 fs-11">&#xe91e;</span>
                                        <span class="icon-up-line ml-5 dn fs-11">&#xe95e;</span>
                                    </div>
                                </div>
                                <div class="fs-12 cl-9 fl ml-10" id="www_goods_zip_fee"></div>
                                <div class="postageBox dn">
                                    <div class="title clearfix" id="www_user_region">
                                        <div class="wd-110 fl item active">收货地址</div>
                                        <div class="wd-110 fl item">其他地址</div>
                                    </div>
                                    <div class="context">
                                        
                                    </div>
                                </div>
                                <div class="postageLayer dn"></div>
                            </td>
                        </tr> -->
							<!--<tr>
                            <td width="70" class="cl-9">运费</td>
                            <td class="cl-3" id="www_goods_post_money"></td>
                        </tr>-->

							<input type="hidden" id="sku_deelp" value="0">

							<!--定位-->
							<input type="hidden" id="www_good_sale_info" value="">


							<tr>
								<td width="70" class="cl-9">数量</td>
								<td class="cl-3 clearfix">
									<div class="count-box mt-2 mr-20 fl clearfix">

										<!-- 减少数量 -->
										<div class="count-sub fl cl-c" onclick="MycountSub(this);">-</div>
										<input id="countss" class="text fl number-box" type="text"
											value="1" onkeyup="MyinputChange(this);">
										<!-- 增加数量 -->
										<div class="count-add fr" onclick="MycountAdd(this);">+</div>
									</div> <sapn id="www_goods_stores" class="cl-9 fl goods-store"
										goods-store="1931"> </sapn>
								</td>
								<input type="hidden" name="xxx" value="" />
							</tr>
						</table>
					</div>


					<!-- 购买该图书 -->
					<a><div id="MyaddPrice">
							<h3>立即购买</h3>
						</div> </a>

					<!-- 
               		uid ==> 登陆用户id
               		BookId==>图书id
               		count==>该图书的数量
               		
               	-->


					<a id="ids"
						href="UserBooksServlet?opr=add&usid=${uid.uid}&Bookids=${bookxq.bookid }$count=">
						<div id="MyaddPrice02" value="">
							<h3>加入购物车</h3>
						</div> </a>



					<style type="text/css">
#MyaddPrice h3 {
	text-align: center;
	margin-top: 14px;
	color: white;
}

#MyaddPrice {
	width: 180px;
	height: 50px;
	border: 1px solid #2AB4E8;
	margin-top: 20px;
	background-color: #2AB4E8;
}

#MyaddPrice02 {
	width: 180px;
	height: 50px;
	border: 1px solid #2AB4E8;
	margin-left: 200px;
	margin-top: -52px;
	background-color: #D5F0FB;
	background-image: url(img/GouWuChe.png);
	background-repeat: no-repeat;
	background-position: 30px 10px;
}

#MyaddPrice02 h3 {
	margin-left: 60px;
	margin-top: 14px;
	color: #2AB4E8;
}

.addressAction {
	border: 1px #ddd solid;
	height: 28px;
	line-height: 28px;
	width: 160px;
	display: inline-block;
}

.postageLayer {
	position: fixed;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	background-color: transparent;
	z-index: 1000;
}

.postageBox {
	position: absolute;
	top: 28px;
	width: 340px;
	background-color: #fff;
	border: 1px #ddd solid;
	z-index: 1001;
	padding: 10px;
}

.postageBox .title {
	width: 260px;
	border-bottom: 1px #ddd solid;
	color: #999;
}

.postageBox .title .item {
	padding: 0 10px;
	cursor: pointer;
}

.postageBox .title .item.active {
	color: #333;
}

.postageBox .context .distribute {
	padding: 0 10px;
}

.postageBox .context .distribute .tit {
	padding: 10px 0;
	font-size: 12px;
	cursor: pointer;
}

.postageBox .context .distribute .con {
	font-size: 12px;
	line-height: 22px;
	cursor: pointer;
}

.postageBox .context .addr {
	padding: 10px 0;
	max-height: 200px;
	overflow-y: scroll;
}

.postageBox .context .addr li {
	padding: 5px 0 5px 40px;
	line-height: 1.5;
	position: relative;
	cursor: pointer;
}

.postageBox .context .addr li .icon-address-line {
	position: absolute;
	left: 10px;
	font-size: 18px;
	top: 9px;
}
</style>
					<script type="text/javascript">
                    

                    
                </script>

					<input type="hidden" id="rush_goods_id" value="100103330">



					<!-- 加入购物车 -->


					<!-- 服务 -->
					<table width="100%" class="cl-6 lh-60">
						<tr>
							<td width="70" class="cl-9">服务</td>
							<td><label class="mr-30"> <span
									class="icon-right-block cl-rd-l mr-2">&#xe934;</span> <span>正品保证</span>
							</label> <label class="mr-30"> <span
									class="icon-right-block cl-rd-l mr-2">&#xe934;</span> <span>七天无理由退换货</span>
							</label> <label id="www_goods_integral"> </label>
							</td>
						</tr>
					</table>

				</div>

				<!-- 当前商品所在的店铺 -->


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

                var dq_goods_id = "100103330";
                                    
                if(dq_goods_id != ""){
                    //扩展信息
                    m7CardInfo = {
                        "left":{
                            "url": "https://bnmppic.bookuu.com/goods/19/44/28/3446110.jpg"  // 左侧图片地址，可不填
                        },
                        "right1": {
                            "text": "二手时间",  // 首行文字内容，展示时超出两行隐藏，卡片上单行隐藏
                            "color": "#595959",                 // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
                            "fontSize": 12                      // 字体大小， 默认12 ， 请传入number类型的数字
                        },
                        "right2": {
                            "text": "2015年诺贝尔文学奖得主阿列克谢耶维奇重磅新作，历时二十年采访，再现苏联解体后转型时代普通人带血的历史 凤凰卫视《锵锵三人行》窦文涛 梁文道 《总编辑时间》点评** ",        // 第二行文字内容，展示时超出两行隐藏，卡片上单行隐藏
                            "color": "#595959",                 // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
                            "fontSize": 12                      // 字体大小， 默认12 ， 请传入number类型的数字
                        },
                        "right3": {
                            "text": "¥38.90",           // 第三行文字内容，展示时超出两行隐藏，卡片上单行隐藏
                            "color": "#ff6b6b",                 // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#ff6b6b
                            "fontSize": 14                      // 字体大小， 默认14 ， 请传入number类型的数字
                        },
                        "extraInfos": [],             // 额外信息，访客不可见，座席点击卡片上的更多可见，可不填，字符串形式的文本数组
                        "url": "//www.bookuu.com/detail.php?id=100103330"                     // 点击可跳转的链接
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

				<script type='text/javascript'
					src='https://webchat.7moor.com/javascripts/7moorInit.js?accessId=92464560-3f16-11e9-8a25-8d8585556f17&autoShow=false&language=ZHCN'
					async='async'>
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
        // 懒加载
        lazyLoading();
        // 菜单
        mouseenterAndTab();
        
        $(function(){

            getCartNum();


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

        function getCookie(name)
        {
            var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
            if(arr=document.cookie.match(reg))
                return unescape(arr[2]);
            else
                return null;
        }
    </script>


				<script type="text/javascript">

        $(function(){
            // 商品详情
            $('#slider').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                slideshow: false,
                sync: "#carousel"
            });
            $('#carousel').flexslider({
                animation: "slide",
                controlNav: false,
                animationLoop: false,
                slideshow: false,
                itemWidth: 80,
                itemMargin: 5,
                asNavFor: '#slider'
            });

            // 商品列表
            $('.flexslider.product-six').flexslider({
                animation: "slide",
                animationLoop: false,
                itemWidth: 200,
                itemMargin: 0,
                controlNav: ''
            });
        });

        // 锚点跳转 评论/商品详情 展示
        function linkTo(_this, _type){
            var _anchor = $('#anchor-' + _type).offset().top + 1;
            // 两个商品评价按钮关联
            if( ! $(_this).parents('#detail-menu').length == 0 ){
                _anchor = $('#anchor-' + _type).offset().top;
            }
            $('body, html').animate({scrollTop: _anchor}, 300);      // body兼容chrome，html兼容firefox
            if(_type == 'judge'){
                var content = $('#anchor-'+_type).find('div');
                if(content.length == 0){
                    ajaxloadcollect(_type);
                }
            }
        }

        // 好评
        $('.good-container').each(function(){
            var _tmp = parseInt( $(this).find('.good-percent').text() );
            if( ! isNaN( _tmp ) ){
                $(this).find('.good-line').animate({ width: _tmp }, 'slow');
            }
        });

        // 单张图片放大
        $('.action-zoom').on('click', function(){
            var _src = $(this).siblings('.square-box.one-one').data('tmp');
            if ( ! _src ) {
                // _src = 'https://bnmpstyle.bookuu.com/wap/images/wu.jpg';
            }
            var obj = {
                color: '#000',
                zoomboxHtml:  '<div class="wd-50p ma"><div class="bgimg square-box one-one" style="background-image: url(' + _src + ');"></div></div>'
            };
            imgZoom(obj);
        });

        //排序
        function sortt(str){
            var arr = str.split(",");
            arr.sort();
            return arr.join(",");
        }


        //当滚到动 评论模块时候，自动加载内容
        var isload = 0;
        $(window).scroll(function () {
            var bodyheight = 1400;//body 中几个相对固定的div的高度之和
            var headerheight = $(".header").height();//头部高度
            var goodsheight = 550;
            var cainixihuan = '0';
            var detailheight = $(".goods_destail_show").height();
            var contetnheight = $(".content_height").height();//动态内容详情的高度
            var scrollTop = $(window).scrollTop();//距离滚动条顶端的距离
            var content = $('#anchor-judge').find('div');
            var ccon = '<img src="https://bnmpstyle.bookuu.com/www/images/loading.gif" style="margin-top:20px;">';
            var guding = headerheight+goodsheight+parseInt(cainixihuan);
            var biandong = 0;
            if(contetnheight < detailheight){
                biandong = contetnheight;
            }else{
                biandong = detailheight;
            }
            //当滚动条滑动到据底部120px时触发
            if(scrollTop >= guding+biandong){
                if(content.length == 0 && isload == 0){
                    isload = 1;
                    ajaxloadcollect('judge');
                }
            }
        });

        function ajaxloadcollect(_type){
            $('#anchor-' + _type).html('<img src="https://bnmpstyle.bookuu.com/www/images/loading.gif" style="margin-top:20px;">');
            $.ajax({
                type: "get",
                url:"/ajax/assess.php",
                data: {act:'detail',type:'list',goods_id:$('#anchor-' + _type).attr("goods-id")},
                dataType: "html",
                success: function(data) {
                    $('#anchor-' + _type).html(data);
                }
            });
        }

        var tel = false;

        function sendReminder(activity_id){
            var goods_id = $("#rush_goods_id").val();
            var phone = $("#tel-number").val();

            //发送
            $.ajax({
                type: "post",
                url: "/system/sendsms.php",
                dataType: "json",
                data: { "act": "sendRushSms","goods_id":goods_id,"activity_id":activity_id,"phone":phone},
                success: function (data) {

                    //清空错误信息
                    $('.reminds-err').html("").hide();
                    //隐藏设置弹窗
                    $('.remind-tip').addClass('hidden');

                    if(data.code == "0000"){
                        location.href = location.href;
                    }else{
                        alert(data.msg);return false;
                    }
                }
            });
        }

        function checkPhone(telNumber){
            var reg = /^1[3|4|5|7|8|9][0-9]\d{8}$/;
            if(telNumber == '' || !reg.test(telNumber)){
                $('.reminds-err').html("请输入正确的手机号").show();
                return false;
            }
            return true;
        }
    </script>

				<script>
        //增加减少购物车
        // add
        function MycountAdd(_this){
            var goods_store = parseInt($(".goods-store").attr("goods-store"));
            var _numBox = $(_this).parents('.count-box').find('.number-box'),
                    _numVal = parseInt(_numBox.val()),
                    _subBox = $(_this).parents('.count-box').find('.count-sub'),
                    _addBox = $(_this).parents('.count-box').find('.count-add');

            if(_numVal>=1 && _numVal < goods_store){
                _numVal++;
                _numBox.val( _numVal );
                _addBox.removeClass('cl-c');
                if(_numVal>1){
                    _subBox.removeClass('cl-c');
                }
                $(".addcart").attr("goods-number",_numVal);
                return false;
            }else{

                if( _numVal >= goods_store){
                    alert('库存数量不足',function(){
                        _numVal = goods_store;
                        _numBox.val(_numVal);
                        _addBox.removeClass('cl-c');
                        _subBox.addClass('cl-c');
                    });
                }else{
                    _numVal =1 ;
                    _numBox.val( _numVal );
                    _addBox.removeClass('cl-c');
                    _subBox.addClass('cl-c');
                }

                $(".addcart").attr("goods-number",_numVal);
                return false;
            }

        }
        // sub
        function MycountSub(_this){
            var goods_store = parseInt($(".goods-store").attr("goods-store"));
            var _numBox = $(_this).parents('.count-box').find('.number-box'),
                    _numVal = parseInt(_numBox.val()),
                    _addBox = $(_this).parents('.count-box').find('.count-add'),
                    _subBox = $(_this).parents('.count-box').find('.count-sub');

            if(_numVal > goods_store){
                alert('库存数量不足',function(){
                    $(".addcart").attr("goods-number",'1');
                });
                return false;
            }

            if( _numVal > 1){
                _numVal--;
                _numBox.val( _numVal );
                _addBox.removeClass('cl-c');
                _subBox.removeClass('cl-c');
            }else{
                _numVal = 1;
                _numBox.val(_numVal);
                _addBox.removeClass('cl-c');
                _subBox.addClass('cl-c');
            }

            if(_numVal ==1){
                _subBox.addClass('cl-c');
            }

            $(".addcart").attr("goods-number",_numVal);
        }
        // input
        function MyinputChange(_this){
            var goods_store = parseInt($(".goods-store").attr("goods-store"));
            var _val = parseInt( $(_this).val() ),
                    _number = $(_this).parents('.delete-box').find('.number-box'),
                    _addBox = $(_this).siblings('.count-add'),
                    _subBox = $(_this).siblings('.count-sub');

            // 负数和非int型，强制转换为1
            if( isNaN(_val) || _val <= 1 ){
                _subBox.addClass('cl-c');
                _addBox.removeClass('cl-c');
                _val = 1;
            }

            if(_val > goods_store){
                alert('库存数量不足',function(){
                    _val = 1;
                    _addBox.removeClass('cl-c');
                    _subBox.addClass('cl-c');
                    $(_this).val(_val);
                    $(".addcart").attr("goods-number",_val);
                    return false;
                });
            } else{
                _addBox.removeClass('cl-c');
                _subBox.removeClass('cl-c');
            }

            $(_this).val( _val );
            $(".addcart").attr("goods-number",_val);
        }
    </script>
				<script type="text/javascript">
    $('.search-container').removeAttr('id');
    // 锚点
    $('.anchor-action li').anchor();


    // 店铺信息
    var shop_name = "博库体验店";
    var shop_demo = "博库体验店";
    var shop_signs = "https://bnmpstyle.bookuu.com/wap/images/default_shop.png";

    var province_id = 0;
    var city_id = 0;

    //用户信息
    $(function(){

        $("#www_user_shop_signs").attr('src','');
        $("#www_user_shop_signs").attr('alt','');
        $("#www_user_shop_name").html('');
        //店铺信息
        $.ajax({
            type: "post",
            url: "/ajax/shop.php",
            dataType: "json",
            success: function (data) {
                shop_str = '';
                if("0000" == data.code){
                    shop_name = data.info.shop_name;
                    shop_demo = data.info.shop_demo;
                    shop_signs = data.info.shop_signs;
                }
                $("#www_user_shop_signs").attr('src',shop_signs);
                $("#www_user_shop_signs").attr('alt',shop_demo);
                $("#www_user_shop_name").html(shop_name);
            }
        });
//        console.log(22);
//        /*
        //限时抢购信息
        $.ajax({
            type: "post",
            url: "/ajax/goods.php?goods_id=100103330",
            dataType: "json",
            success: function (data) {
                var rs_str = '';
                if(data.code == "0000"){
                    var goods = data.info;
                    if(goods.if_presold == 1){
                        $("#www_goods_tags").html("[预售]");
                    }
                    $("#www_goods_name").html(goods.goods_name);

                    $(".commentCount").html(goods.comment_count);

                    //限时抢购活动
                    var rush_str = "";
                    //秒杀预热
                    if(goods.activity.presingle && goods.activity.presingle.base_id == 11 && goods.activity.presingle.activity_flag == 2){
                        rush_str += '<div class="pr ht-40 lh-40 cl-f">';
                        rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/bg/secKill-bg.png" alt="" width="100%" class="db">';
                        rush_str += '<div class="pafull-box">';
                        rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/bg/secKill.png" alt="'+ goods.activity.single.base_name+'" height="40" class="fl">';
                        rush_str += '<span class="fs-12 ml-10">秒杀价：￥'+ goods.activity.presingle.activity_price;
                        rush_str += ' 限量：'+ goods.activity.presingle.all_set_number + '件';
                        rush_str += '</span>';
                        rush_str += '<div class="countdown mt-8 fr mr-10"></div>';
                        rush_str += '<div class="fr mr-5">距开始:</div>';
                        rush_str += '<div class="cb"></div>';
                        rush_str += '</div>';
                        rush_str += '</div>';
                        $("#www_goods_rushbuy_info").after(rush_str);

                        var url = 'https://bnmpstyle.bookuu.com/www/js/jcountdown/jquery.jcountdown.min.js';
                        var script = document.createElement('script');
                        script.type = "text/javascript";

                        if (script.readyState) {  //IE
                            script.onreadystatechange = function () {
                                if (script.readyState == "loaded" ||
                                        script.readyState == "complete") {
                                    script.onreadystatechange = null;
                                }
                            };
                        } else {  //Others
                            script.onload = function () {
                                var b = new Date;
                                var b = -b.getTimezoneOffset() / 60;
                                var i = goods.activity.presingle.activity_stime.replace(/-/g, "/");
                                var config = {
                                    timeText: i, //倒计时时间
                                    timeZone: b, //时区
                                    style: "flip", //显示的样式，可选值有flip,slide,metal,crystal
                                    color: "black", //显示的颜色，可选值white,black
                                    width: 120, //倒计时宽度
                                    textGroupSpace: 20, //天、时、分、秒之间间距
                                    textSpace: 0, //数字之间间距
                                    reflection: false, //是否显示倒影
                                    reflectionOpacity: 10, //倒影透明度
                                    reflectionBlur: 0, //倒影模糊程度
                                    dayTextNumber: 3, //倒计时天数数字个数
                                    displayDay: false, //是否显示天数
                                    displayHour: !0, //是否显示小时数
                                    displayMinute: !0, //是否显示分钟数
                                    displaySecond: !0, //是否显示秒数
                                    displayLabel: false, //是否显示倒计时底部label
                                    onFinish: function() {}
                                };
                                $(".countdown").jCountdown(config);
                            };
                        }

                        script.src = url + '?' + 'time=' + Date.parse(new Date());
                        document.body.appendChild(script);
                    }
                    //已经开始的秒杀
                    if(goods.activity.single.activity_presecond && goods.activity.single.activity_flag == 1 && goods.activity.single.base_id == 11 && goods.activity.single.activity_status == 1){
                        rush_str += '<div class="pr ht-40 lh-40 cl-f">';
                        rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/bg/secKill-bg.png" alt="" width="100%" class="db">';
                        rush_str += '<div class="pafull-box">';
                        rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/bg/secKill.png" alt="'+ goods.activity.single.base_name+'" height="40" class="fl">';
                        
                        if(goods.activity.single.residue_number > 0){
                            rush_str += '<span class="fs-12 ml-10">秒杀进行中！</span>';
                        }else{
                            rush_str += '<span class="fs-12 ml-10">来晚了，'+goods.activity.single.all_set_number+'件商品已抢完</span>';
                        }

                        rush_str += '<div class="countdown mt-8 fr mr-10"></div>';
                        rush_str += '<div class="fr mr-5">距结束:</div>';
                        rush_str += '<div class="cb"></div>';
                        rush_str += '</div>';
                        rush_str += '</div>';
                        $("#www_goods_rushbuy_info").after(rush_str);

                        var url = 'https://bnmpstyle.bookuu.com/www/js/jcountdown/jquery.jcountdown.min.js';
                        var script = document.createElement('script');
                        script.type = "text/javascript";

                        if (script.readyState) {  //IE
                            script.onreadystatechange = function () {
                                if (script.readyState == "loaded" ||
                                        script.readyState == "complete") {
                                    script.onreadystatechange = null;
                                }
                            };
                        } else {  //Others
                            script.onload = function () {
                                var b = new Date;
                                var b = -b.getTimezoneOffset() / 60;
                                var i = goods.activity.single.activity_etime.replace(/-/g, "/");
                                var config = {
                                    timeText: i, //倒计时时间
                                    timeZone: b, //时区
                                    style: "flip", //显示的样式，可选值有flip,slide,metal,crystal
                                    color: "black", //显示的颜色，可选值white,black
                                    width: 120, //倒计时宽度
                                    textGroupSpace: 20, //天、时、分、秒之间间距
                                    textSpace: 0, //数字之间间距
                                    reflection: false, //是否显示倒影
                                    reflectionOpacity: 10, //倒影透明度
                                    reflectionBlur: 0, //倒影模糊程度
                                    dayTextNumber: 3, //倒计时天数数字个数
                                    displayDay: false, //是否显示天数
                                    displayHour: !0, //是否显示小时数
                                    displayMinute: !0, //是否显示分钟数
                                    displaySecond: !0, //是否显示秒数
                                    displayLabel: false, //是否显示倒计时底部label
                                    onFinish: function() {}
                                };
                                $(".countdown").jCountdown(config);
                            };
                        }

                        script.src = url + '?' + 'time=' + Date.parse(new Date());
                        document.body.appendChild(script);

                    }else if(goods.activity.single.activity_presecond && goods.activity.single.activity_flag == 1 && goods.activity.single.base_id == 2 && goods.activity.single.activity_status == 1){
                        rush_str += '<div class="pr ht-40 lh-40 cl-f">';
                        rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/bg/flashsale.png" alt="" width="100%" class="db">';
                        rush_str += '<div class="pafull-box">';
                        rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/icon/flashsale2.png" alt="'+ goods.activity.single.base_name+'" height="20" class="ml-5 pr tp-10 fl">';
                        rush_str += '<span class="fs-12 ml-10">抢购价：￥'+ goods.activity.single.activity_price;
                        rush_str += ' 限量：'+ goods.activity.single.all_set_number + '件';
                        rush_str += '</span>';
                        rush_str += '<span class="fs-12 ml-10">抢购进行中……</span>';
                        rush_str += '<div class="countdown mt-8 fr mr-10"></div>';
                        rush_str += '<div class="cb"></div>';
                        rush_str += '</div>';
                        rush_str += '</div>';
                        $("#www_goods_rushbuy_info").after(rush_str);

                        var url = 'https://bnmpstyle.bookuu.com/www/js/jcountdown/jquery.jcountdown.min.js';
                        var script = document.createElement('script');
                        script.type = "text/javascript";

                        if (script.readyState) {  //IE
                            script.onreadystatechange = function () {
                                if (script.readyState == "loaded" ||
                                        script.readyState == "complete") {
                                    script.onreadystatechange = null;
                                }
                            };
                        } else {  //Others
                            script.onload = function () {
                                var b = new Date;
                                var b = -b.getTimezoneOffset() / 60;
                                var i = goods.end_time;
                                var config = {
                                    timeText: i, //倒计时时间
                                    timeZone: b, //时区
                                    style: "flip", //显示的样式，可选值有flip,slide,metal,crystal
                                    color: "black", //显示的颜色，可选值white,black
                                    width: 120, //倒计时宽度
                                    textGroupSpace: 20, //天、时、分、秒之间间距
                                    textSpace: 0, //数字之间间距
                                    reflection: false, //是否显示倒影
                                    reflectionOpacity: 10, //倒影透明度
                                    reflectionBlur: 0, //倒影模糊程度
                                    dayTextNumber: 3, //倒计时天数数字个数
                                    displayDay: false, //是否显示天数
                                    displayHour: !0, //是否显示小时数
                                    displayMinute: !0, //是否显示分钟数
                                    displaySecond: !0, //是否显示秒数
                                    displayLabel: false, //是否显示倒计时底部label
                                    onFinish: function() {}
                                };
                                $(".countdown").jCountdown(config);
                            };
                        }

                        script.src = url + '?' + 'time=' + Date.parse(new Date());
                        document.body.appendChild(script);
                    }else{
                        //明日 限时抢购活动
                        if(goods.rush_purchase_info){
                            rush_str += '<div class="pr ht-40 lh-40 cl-f">';
                            rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/bg/flashsale2.png" alt="" width="100%" class="db">';
                            rush_str += '<div class="pafull-box">';
                            rush_str += '<img src="https://bnmpstyle.bookuu.com/www/images/icon/flashsale2.png" alt="'+goods.activity.single.base_name+'" height="20" class="ml-5 pr tp-10 fl">';
                            rush_str += '<span class="fs-12 ml-10">即将开抢……</span>';
                            rush_str += '<span class="fs-16 mr-5">¥'+goods.rush_purchase_info.activity_price+'</span>';
                            rush_str += '<del class="fs-12 mr-5">¥'+goods.market_price+'</del>';
                            rush_str += '<span class="fs-12 mr-5">限'+goods.rush_purchase_info.all_set_number +'件</span>';
                            rush_str += '<label class="fs-12 mr-10">开抢时间：'+goods.rush_purchase_info.act_stime+'</label>';
                            rush_str += '</div>';

                            $("#www_goods_rushbuy_info").after(rush_str);
                        }
                    }

                    //获取活动标识
                    if(goods.is_activity_img != ''){
                        $("#activity_img").append('<img src="'+goods.is_activity_img+'">');
                        $("#activity_img").removeClass('dn');
                    }

                    //商品定价
                    $("#www_goods_market_price").html("¥" + goods.market_price);
                    //佣金
                    if(goods.agent){
                        $("#www_goods_commission_key").html("卖家佣金");
                        $("#www_goods_commission_val").html("¥" + goods.brokerage);
                    }

                    $("#www_goods_price").html(goods.price);

                    //商品活动
                    if(goods.activity.single.activity_flag || goods.activity.muti || (goods.ticket_count && goods.activity.single.noticket == 1)){
                        var goods_activity_str = '';
                        goods_activity_str += '<td width="70" valign="top" class="cl-9">活　动</td>';
                        goods_activity_str += '<td>';
                        if(goods.activity.single.noticket == 1){
                            goods_activity_str += '<p class="mt-5">';
                            goods_activity_str += '<span class="cl-rd bd-1-rd pd-0204 br-4 mr-5">限制</span>';
                            goods_activity_str += '<span class="cl-6">不支持使用优惠券</span>';
                            goods_activity_str += '</p>';
                        }
                        if(goods.activity.single.activity_presecond && goods.activity.single.activity_flag == 1){
                            goods_activity_str += '<p class="cl-rd">';
                            goods_activity_str += '<span class="cl-rd bd-1-rd pd-0204 br-4 mr-5">' + goods.activity.single.base_name + '</span>';
                            goods_activity_str += '</p>';
                        }
                        if(goods.activity.muti){
                            var list = goods.activity.muti;
                            for (var i=0;i<list.length;i++){
                                goods_activity_str += '<p class="cl-rd">';
                                goods_activity_str += '<span class="cl-rd bd-1-rd pd-0204 br-4 mr-5">'+ list[i].activity_name +'</span>';
                                goods_activity_str += '</p>';
                            }
                        }
                        if(goods.ticket_count && goods.activity.single.noticket == 1){
                            goods_activity_str += '<p class="cl-rd">';
                            goods_activity_str += '<span class="cl-rd bd-1-rd pd-0204 br-4 mr-5">优惠劵</span>';
                            goods_activity_str += '<span>有' + goods.ticket_count +'张优惠劵</span>';
                            goods_activity_str += '</p>';
                        }


                        goods_activity_str += '</td>';

                        $("#www_goods_activity_info").html(goods_activity_str);

                    }

                    //运费
                    // var post_money_str = '';
                    // if(goods.post_free_money > 0){
                    //     post_money_str = '满' + goods.post_free_money + '包邮';
                    // }else{
                    //     post_money_str = '包邮';
                    // }
                    // $("#www_goods_post_money").html(post_money_str);

                    $("#sku_deelp").val(goods.goods_sku_count);

                    var sku_str = "";
                    if(goods.sku_count == 1){
                        var skulist = goods.sku_list.goods_sku;

                        for (var i=0;i<skulist.length;i++){
                            sku_str += '<tr>';
                            sku_str += '<td class="lh-45" valign="top">';
                            sku_str += '<span class="cl-9">'+skulist[i].sku_name +'</span>';
                            sku_str += '</td>';
                            sku_str += '<td class="tab-box">';
                            sku_str += '<ul class="fs-15 tab-title tab-order" id="sku_item_'+ i +'">';
                            var skudetaillist = skulist[i].sku_detail;

                            var goods_sku_bunch = goods.goods_sku_bunch;
                            
                            for (var j=0;j<skudetaillist.length;j++){

                                sku_str += '<li class="fl mr-10 bd-1-e8 bc-f pd-0020 lh-30 mt-6 ';
                                var is_in_array = false;
                                for (var k = 0; k < goods_sku_bunch.length; k++) {
                                    if (goods_sku_bunch[k] == skudetaillist[j].sku_detail_id)                                   {
                                        is_in_array = true;
                                    }
                                }
                                if(is_in_array){
                                    sku_str += 'on-tab';
                                }
                                sku_str += '" goods-id="'+ goods.goods_id +'" data-gname="'+ goods.goods_name+'" data-name="'+ skudetaillist[j].sku_value +'" data-key="'+ j +'" data-pic="'+ skudetaillist[j].sku_pic +'" data-price="'+ skudetaillist[j].sale_price +'" id="sku_detail_'+ skudetaillist[j].sku_detail_id +'" data-sku_detail_id="'+ skudetaillist[j].sku_detail_id +'">';

                                sku_str += skudetaillist[j].sku_value;
                                sku_str += '<div class="patch2">';

                                sku_str += '<img src="https://bnmpstyle.bookuu.com/www/images/check-tip.png">';
                                sku_str += '</div>';
                                sku_str += '</li>';
                            }

                            sku_str += '<div class="cb"></div>';
                            sku_str += '</ul>';
                            sku_str += '</td>';
                            sku_str += '</tr>';
                        }
                        $("#sku_deelp").after(sku_str);
                    }

                    //销量
                    if(goods.is_show_sale_info){
                        var goods_sale_str = '';
                        goods_sale_str +='<tr>';
                        goods_sale_str +='<td width="70" class="cl-9">销量</td>';
                        goods_sale_str +='<td class="cl-3">'+ goods.sale_nums+' 件</td>';
                        goods_sale_str +='</tr>';

                        $("#www_good_sale_info").after(goods_sale_str);
                    }

                    if(goods.address_detail){
                        $("#www_goods_zip_addr").html(goods.address_detail);
                        
                    }

                    if(goods.zip.fee > 0){
                        var str = '运费'+ goods.zip.fee +'元，满'+ goods.zip.meet +'包邮！'
                        $("#www_goods_zip_fee").html(str);
                        
                    }else{
                        var str = '免邮费'
                        $("#www_goods_zip_fee").html(str);
                    }

                    if(goods.has_addr){

                        var addr_html = '';
                        addr_html += '<ul class="addressItem addr">';
                        for (var i=0;i<goods.address_list.length;i++){
                            if(i == 0){
                                addr_html += '<li class="cl-bl-l"><span class="icon-address-line">&#x1f3a9;</span><span class="addritem" data-addressid='+ goods.address_list[i].address_id +' data-provinceid='+ goods.address_list[i].province_id +' data-pname='+ goods.address_list[i].province_name +' data-cname='+ goods.address_list[i].city_name +'>'+ goods.address_list[i].province_name +goods.address_list[i].city_name+goods.address_list[i].county_name+goods.address_list[i].consignee_address  +'</span></li>';
                            }else{
                                addr_html += '<li><span class="icon-address-line">&#x1f3a9;</span><span class="addritem" data-addressid='+ goods.address_list[i].address_id +' data-provinceid='+ goods.address_list[i].province_id +' data-pname='+ goods.address_list[i].province_name +' data-cname='+ goods.address_list[i].city_name +'>'+ goods.address_list[i].province_name +goods.address_list[i].city_name+goods.address_list[i].county_name+goods.address_list[i].consignee_address  +'</span></li>';
                            }
                        }
                        addr_html += '</ul>';

                        addr_html += '<div class="addressItem distribute dn">';
                        addr_html += '<div class="clearfix tit">';
                        addr_html += '<div class="item fl wd-60 to-hd cl-bl-l" id="province" data-type="province">请选择</div>';
                        addr_html += '<div class="item fl wd-60 to-hd dn" id="city" data-type="city">请选择</div>';
                        addr_html += '<div class="item fl wd-60 to-hd dn" id="country" data-type="country">请选择</div>';
                        addr_html += '</div>';
                        addr_html += '<div class="clearfix con">';
                        addr_html += '</div>';
                        addr_html += '</div>';

                        $('.postageBox .context').html(addr_html);
                    } else {
                        $('#www_user_region .item').eq(0).addClass('dn')
                        $('#www_user_region .item').eq(1).addClass('active')
                        $.ajax({
                            type: "get",
                            url:"/addr.php",
                            data: {act:'getProvince'},
                            dataType: "json",
                            success: function(data) {
                                if(data.length > 0){
                                    var region_html = '';
                                    for (var i = 0; i < data.length; i++) {
                                        
                                        region_html += '<div class="item fl wd-80 cl-6" data-type="province" data-pid="'+data[i].id+'">'+ data[i].name +'</div>';
                                    }

                                    $('.postageBox .context .distribute .con').html(region_html);

                                }
                            }
                        });
                        var addr_html = '';

                        addr_html += '<div class="addressItem distribute">';
                        addr_html += '<div class="clearfix tit">';
                        addr_html += '<div class="item fl wd-60 to-hd cl-bl-l" id="province" data-type="province">请选择</div>';
                        addr_html += '<div class="item fl wd-60 to-hd dn" id="city" data-type="city">请选择</div>';
                        addr_html += '<div class="item fl wd-60 to-hd dn" id="country" data-type="country">请选择</div>';
                        addr_html += '</div>';
                        addr_html += '<div class="clearfix con">';
                        addr_html += '</div>';
                        addr_html += '</div>';

                        $('.postageBox .context').html(addr_html);
                    }

                    $('.addressAction').on('click', function(){
                        var down = $(this).find('.icon-down-line')
                        var up = $(this).find('.icon-up-line')
                        
                        $('.postageBox, .postageLayer').removeClass('dn')
                        up.removeClass('dn')
                        down.addClass('dn')
                    })
                    $('.postageLayer').on('click', function(){
                        var down = $('.addressAction .icon-down-line')
                        var up = $('.addressAction .icon-up-line')
                        $('.postageBox, .postageLayer').addClass('dn')
                        down.removeClass('dn')
                        up.addClass('dn')
                    })

                    // 收货地址 / 其他地址 选项
                    $('.postageBox .title .item').on('click', function(){

                        var index = $(this).index()
                        // console.log('title',index,goods.has_addr)
                        if(goods.has_addr == 0){
                            return
                        }
                        if(index == 1){
                            if(province_id){
                                $('.postageBox .title .item').removeClass('active')
                                $(this).addClass('active')
                                $('.postageBox .context .addressItem').addClass('dn')
                                $('.postageBox .context .addressItem').eq(index).removeClass('dn')
                                return
                            }
                            $.ajax({
                                type: "get",
                                url:"/addr.php",
                                data: {act:'getProvince'},
                                dataType: "json",
                                success: function(data) {
                                    if(data.length > 0){
                                        var region_html = '';
                                        for (var i = 0; i < data.length; i++) {
                                            
                                            region_html += '<div class="item fl wd-80 cl-6" data-type="province" data-pid="'+data[i].id+'">'+ data[i].name +'</div>';
                                        }

                                        $('.postageBox .context .distribute .con').html(region_html);

                                    }
                                }
                            });
                        }
                        $('.postageBox .title .item').removeClass('active')
                        $(this).addClass('active')
                        $('.postageBox .context .addressItem').addClass('dn')
                        $('.postageBox .context .addressItem').eq(index).removeClass('dn')
                    })
                    // 选择收货地址
                    $('.postageBox .context .addressItem li').on('click', function(){
                        var index = $(this).index()
                        var addritem = $('.postageBox .context .addressItem .addritem').eq(index).html()
                        var addritem = $('.postageBox .context .addressItem .addritem').eq(index).html()
                        var addressid = $('.postageBox .context .addressItem .addritem').eq(index).attr('data-addressid')
                        var province_id = $('.postageBox .context .addressItem .addritem').eq(index).attr('data-provinceid')
                        var pname = $('.postageBox .context .addressItem .addritem').eq(index).attr('data-pname')
                        var cname = $('.postageBox .context .addressItem .addritem').eq(index).attr('data-cname')

                        // console.log('addr',index,addritem,addressid)
                        $("#www_goods_zip_addr").html(pname + cname);
                        //TODO 获取地区邮费
                        $.ajax({
                            type: "get",
                            url:"/addr.php",
                            data: {act:'getZipFee',add_id:addressid,province_id:province_id,goods_id:100103330},
                            dataType: "json",
                            success: function(data) {
                                if(data.status){
                                    if(data.info.fee > 0){
                                        var str = '运费'+ data.info.fee +'元，满'+ data.info.meet +'包邮！'
                                        $("#www_goods_zip_fee").html(str);
                                        
                                    }else{
                                        var str = '免邮费'
                                        $("#www_goods_zip_fee").html(str);
                                    }
                                }
                            }

                        });
                        $('.postageBox .context .addressItem li').removeClass('cl-bl-l')
                        $(this).addClass('cl-bl-l')
                        setTimeout(function(){
                            $('.postageLayer').click()
                        }, 300)
                    })
                    $('.postageBox .context .tit .item').on('click', function(){
                        var con = $('.postageBox .context .con');
                        var province = $('#province');
                        var city = $('#city')
                        var country = $('#country');
                        
                        var type = $(this).attr('data-type');
                        var text = $(this).text()
                        if(text == '请选择'){
                            return;
                        }
                        var that = $(this);
                        // console.log('title_item',province,city,country,text);

                        if( type == 'province' ) {
                            province.addClass('cl-bl-l')
                            city.removeClass('cl-bl-l')
                            country.removeClass('cl-bl-l')
                            $.ajax({
                                type: "get",
                                url:"/addr.php",
                                data: {act:'getProvince'},
                                dataType: "json",
                                success: function(data) {
                                    if(data.length > 0){
                                        var region_html = '';
                                        for (var i = 0; i < data.length; i++) {
                                            
                                            region_html += '<div class="item fl wd-80 cl-6" data-type="province" data-pid="'+data[i].id+'">'+ data[i].name +'</div>';
                                        }

                                        con.html(region_html);
                                        that.text('请选择')
                                        city.text('请选择')
                                        city.addClass('dn');
                                        country.addClass('dn');
                                    }
                                }

                            });

                        }
                        if( type == 'city' ) {
                            province.removeClass('cl-bl-l')
                            city.addClass('cl-bl-l')
                            city.html('请选择')
                            country.html('请选择')
                            country.removeClass('cl-bl-l')
                            country.addClass('dn')
                            var pid = province_id
                            $.ajax({
                                type: "get",
                                url:"/addr.php",
                                data: {act:'getCity',pid:pid},
                                dataType: "json",
                                success: function(data) {
                                    if(data.length > 0){
                                        var region_html = '';
                                        for (var i = 0; i < data.length; i++) {
                                            
                                            region_html += '<div class="item fl wd-80 cl-6" data-type="city" data-pid="'+data[i].id+'">'+ data[i].name +'</div>';
                                        }

                                        con.html( region_html )

                                    }
                                }
                            });
                        }
                        if( type == 'country' ) {
                            province.removeClass('cl-bl-l')
                            city.removeClass('cl-bl-l')
                            country.addClass('cl-bl-l')
                            // con.html( countryStr )
                        }

                    })
                    $('body').on('click', '.postageBox .context .con .item', function(){
                        var con = $('.postageBox .context .con')
                        var province = $('#province')
                        var city = $('#city')
                        var country = $('#country')
                        
                        var type = $(this).attr('data-type')
                        var pid = $(this).attr('data-pid')
                        // console.log('con_item',type,pid)
                        var text = $(this).text()
                        

                        if( type == 'province' ) {
                            province.removeClass('cl-bl-l').html(text)
                            city.removeClass('dn').addClass('cl-bl-l')
                            province_id = pid
                            $.ajax({
                                type: "get",
                                url:"/addr.php",
                                data: {act:'getCity',pid:pid},
                                dataType: "json",
                                success: function(data) {
                                    if(data.length > 0){
                                        var region_html = '';
                                        for (var i = 0; i < data.length; i++) {
                                            
                                            region_html += '<div class="item fl wd-80 cl-6" data-type="city" data-pid="'+data[i].id+'">'+ data[i].name +'</div>';
                                        }

                                        con.html( region_html )

                                    }
                                }
                            });
                            

                        }
                        if( type == 'city' ) {
                            city.removeClass('cl-bl-l').html(text)
                            country.removeClass('dn').addClass('cl-bl-l').html('请选择')
                            city_id = pid
                            $.ajax({
                                type: "get",
                                url:"/addr.php",
                                data: {act:'getCounty',pid:pid},
                                dataType: "json",
                                success: function(data) {
                                    if(data.length > 0){
                                        var region_html = '';
                                        for (var i = 0; i < data.length; i++) {
                                            
                                            region_html += '<div class="item fl wd-80 cl-6" data-type="country" data-pid="'+data[i].id+'">'+ data[i].name +'</div>';
                                        }

                                        con.html( region_html )

                                    }
                                }
                            });
                        }
                        if( type == 'country' ) {
                            // console.log('country',text,province_id,city_id)
                            country.html(text)
                            // con.html( countryStr )
                            //TODO 获取地区邮费
                            $.ajax({
                                type: "get",
                                url:"/addr.php",
                                data: {act:'getZipFee',province_id:province_id,city_id:city_id,goods_id:100103330},
                                dataType: "json",
                                success: function(data) {
                                    if(data.status){
                                        if(data.info.fee > 0){
                                            var str = '运费'+ data.info.fee +'元，满'+ data.info.meet +'包邮！'
                                            $("#www_goods_zip_fee").html(str);
                                            
                                        }else{
                                            var str = '免邮费'
                                            $("#www_goods_zip_fee").html(str);
                                        }
                                    }
                                }

                            });
                            var addritem = ''
                            addritem += province.html()
                            addritem += city.html()
                            // addritem += country.html()

                            $("#www_goods_zip_addr").html(addritem);
                            setTimeout(function(){
                                $('.postageLayer').click()
                            }, 300)
                        }
                    })

                    //库存
                    $("#www_goods_stores").attr("goods-store",goods.stores);
                    var goods_store_str = '';

                    if(goods.stores){
                        if(goods.if_presold == 1){
                            goods_store_str += '<span style="color:#e55454;">预售</span>';
                            if(goods.arrival_time){
                                goods_store_str += '<i class="fs-12" style="color:#e55454; ">（预计' + goods.arrival_time + '后到货）</i>';
                            }
                        }else{
                            goods_store_str = '库存：' + goods.stores;
                        }
                    }else{
                        if(goods.if_presold == 1){
                            goods_store_str += '<span style="color:#e55454;">预售</span>';
                            if(goods.arrival_time){
                                goods_store_str += '<i class="fs-12" style="color:#e55454; ">（预计' + goods.arrival_time + '后到货）</i>';
                            }
                        }else{
                            goods_store_str = '缺货';
                        }
                    }
                    $("#www_goods_stores").html(goods_store_str);


                    var rush_remind_str = '';
                    if(goods.is_gift == 0){
                        if(goods.rush_purchase_info){
                            if(goods.activity.single.activity_presecond && goods.activity.single.activity_flag == 1){

                            }else{
                                rush_remind_str +='<div class="mt-20 ta-ct mouseenter-box">';
                                if(goods.rush_purchase_info.type == 1){
                                    rush_remind_str +='<div class="fs-18 cl-bl-l bd-1-bl-d bc-bl-l pd-1030 mr-20 fl pr zi-21 mouseenter mouseleave">已设提醒</div>';
                                }else if(goods.rush_purchase_info.type == 2){
                                    rush_remind_str +='<div class="fs-18 cl-bl-l bd-1-bl-d bc-bl-l pd-1030 mr-20 fl pr zi-21 mouseenter mouseleave">即将开抢</div>';
                                }else{
                                    rush_remind_str += '<div class="fs-18 cl-bl-l bd-1-bl-d bc-bl-l pd-1030 cp mr-20 fl pr zi-21 mouseenter mouseleave">开抢提醒';
                                    rush_remind_str += '<div class="hover-box ta-lf pl-20 remind-tip">';
                                    rush_remind_str += '<div class="wd-50p fl mt-20 pb-20 right-1-e8">';
                                    rush_remind_str += '<p class="fs-16">设置提醒</p>';
                                    rush_remind_str += '<input id="tel-number" name="tel-number" class="ht-40 lh-40 wd-80p pd-0010 mt-10 tel-number" type="text" placeholder="请输入手机号" value="'+ goods.phone +'" />';
                                    rush_remind_str += '<p class="cl-rd-l mt-10 fs-14 dn reminds-err" style="height:22px;color: red;padding: 6px 0px;"></p>';
                                    rush_remind_str += '<div class="mt-20">';
                                    rush_remind_str += '<a class="bd-1-e8 pd-0820 mr-20 fs-16 remind-btn" activity-id="'+ goods.rush_purchase_info.activity_id +'" href="javascript:void(0);">设置提醒</a>';
                                    rush_remind_str += '</div>';
                                    rush_remind_str += '</div>';
                                    rush_remind_str += '<div class="wd-50p fr fs-14 cl-9 ta-ct lh-20 mt-20 fw-nm">';
                                    rush_remind_str += '<img src="https://bnmpstyle.bookuu.com/www/images/code.png" alt="" width="50%" class="db hidden ma">';
                                    rush_remind_str += '<p class="mt-5">扫一扫访问博库微店</p>';
                                    rush_remind_str += '<p>设置提醒更方便哦</p>';
                                    rush_remind_str += '</div>';
                                    rush_remind_str += '<div class="cb"></div>';
                                    rush_remind_str += '</div></div>';
                                }
                                rush_remind_str += '</div>';

                            }
                        }
                        <!-- 加入购物车 -->
                        rush_remind_str += '<div class="mt-20 ta-ct mouseenter-box">';
                        //秒杀预热 和 秒杀
                        if(goods.activity.presingle && goods.activity.presingle.base_id == 11){
                            rush_remind_str += '<label class="fs-18 pd-1030 cp mr-20 fl pr" style="min-width: 120px;background-color:#ffebeb;border:1px #e4393c solid;color:#e4393c;">等待秒杀</label>';
                        }else if(goods.activity.single && goods.activity.single.base_id == 11 && goods.activity.single.activity_status == 1){
                            if(goods.activity.single.residue_number > 0){
                                    rush_remind_str += '<label class="fs-18 cl-f pd-1030 cp mr-20 fl addcart" style="min-width: 120px;background-color:#e4393c;border:1px #e4393c solid;" goods-id="' + goods.goods_id +'" goods-number="1" data-type="buynow">立即秒杀</label>';
                            }else{
                                rush_remind_str += '<label class="fs-18 cl-f pd-1030 mr-20 fl bc-dg" style="min-width: 120px;">已抢完</label>';
                            }
                        }else{
                            if(goods.stores>0){
                                //已超卖
                                if(parseInt(goods.activity.single.all_been_buy_number) >= parseInt(goods.activity.single.all_set_number)){
                                    rush_remind_str += '<label class="fs-18 cl-f pd-1030 mr-20 fl bc-dg" style="min-width: 120px;">已抢完</label>';
                                }else{

                                    if(goods.activity.single.activity_flag == 1){

                                        rush_remind_str += '<label class="fs-18 cl-f bd-1-bl-d bc-bl pd-1030 cp mr-20 fl addcart" style="min-width: 120px;" goods-id="' + goods.goods_id +'" goods-number="1" data-type="buynow">立即购买</label>';
                                    }else{
                                        if(! goods.rush_purchase_info){
                                             rush_remind_str += '<label class="fs-18 cl-f bd-1-bl-d bc-bl pd-1030 cp mr-20 fl addcart" style="min-width: 120px;" goods-id="'+goods.goods_id+'" goods-number="1" data-type="buynow">立即购买</label>';
                                         }
                                    }

                                    rush_remind_str += '<label class="fs-18 cl-bl-l bd-1-bl-d bc-bl-l pd-1030 cp mr-20 fl pr addcart" goods-id="'+goods.goods_id+'" goods-number="1" data-type="add"><span class="icon-cart-block mr-10 cl-bl pr tp-3 fs-18">&#xe90e;</span>加入购物车</label>';
                                }
                            }else{
                                rush_remind_str +='<label class="fs-18 cl-f pd-1030 mr-20 fl bc-dg" style="min-width: 120px;" goods-id="'+goods.goods_id+'" goods-number="0" data-type="add">目前缺货</label>';
                            }
                        }
                        

                    }else{
                        rush_remind_str +='<div class="mt-20 ta-ct mouseenter-box">';
                        rush_remind_str +='<label class="fs-18 cl-f pd-1030 mr-20 fl bc-dg" goods-id="100000041">此商品为赠品</label>';
                    }
                    rush_remind_str +='<div class="cl-9 bd-1-a fl pd-0208 cp choose-box collect ';
                    if(goods.is_collect==1){
                        rush_remind_str +='bd-1-bl-d cl-bl-l';
                    }
                    rush_remind_str +='" goods-id="' +goods.goods_id +'">';
                    rush_remind_str +='<span class="';
                    if(goods.is_collect==1){
                        rush_remind_str +='icon-star-block';
                    }else{
                        rush_remind_str +='icon-star-line';
                    }
                    rush_remind_str +=' fs-16 pr tp-2">';
                    if(goods.is_collect==1){
                        rush_remind_str +='&#xe945;';
                    }else{
                        rush_remind_str +='&#xe946';
                    }
                    rush_remind_str +='</span><p>收藏</p>';
                    rush_remind_str +='</div>';
                    rush_remind_str +='<div class="cb"></div>';
                    rush_remind_str +='</div>';

                    $("#rush_goods_id").after(rush_remind_str);
                    if(goods.integral){
                        var integral_str = '';
                        integral_str += '<span class="icon-right-block cl-rd-l mr-2">&#xe934;</span>'
                        integral_str += '<span > 赠送'+ goods.integral +'积分</span>';
                        $("#www_goods_integral").html(integral_str);
                    }

                    if(goods.upper_title){
                        var upper_title_str = '';
                        upper_title_str += '<p class="fs-16 cl-9 ht-50 oh lh-25 mt-10 mb-10" id="">';
                        upper_title_str += goods.upper_title;
                        upper_title_str += '</p>'
                        $("#www_goods_upper_title").html(upper_title_str);
                    }

                    //if(goods.source_id){
                    //    $("#www_detail_source_id").html(goods.source_id);
                    //}
                    //sku多选切换和加入购物车
                    var usable = goods.stores; //产品库存
                    var goods_id = goods.goods_id;
                    //获取当前商品所在的product_id下的全部商品和商品对应的全部sku属性选项
                    var bunch = goods.produce_goods_sku_bunch;

                    var selected_bunch = [];//收集已经被选中的skuid
                    var selected_attr_vaule = [];//收集已经选中属性的名称
                    var build_bunch = {};

                    //重新整理
                    $.each(bunch,function(k,v){
                        build_bunch[k] = sortt(v);
                    });

                    //商品SKU选择和跳转
                    $(".tab-order li").click(function(){
                        var dellp = $("#sku_deelp").val();
                        var new_goods_id = 0;
                        $(this).addClass('on-tab');
                        $(this).siblings().removeClass('on-tab');
                        var sku_detail_id = $(this).attr('data-sku_detail_id');//当前sku的ID
//                        console.log(888,dellp,sku_detail_id);
                        //获取已经选中的状态
                        $.each($(".tab-order li"),function(k,v){
                            if($(this).hasClass("on-tab")){
                                selected_attr_vaule.push($(this).attr('data-name'));
                                selected_bunch.push(parseInt($(this).attr('data-sku_detail_id')));
                            }
                        });

                        selected_bunch.push(parseInt(sku_detail_id));

                        selected_bunch = selected_bunch.filter(function(element,index,self){
                            return self.indexOf(element) == index;//去重
                        });

                        if(dellp == selected_bunch.length){
                            selected_bunch.sort();
                            var sku_str = selected_bunch.join(",");
                            for(var key in build_bunch){
                                if(build_bunch[key] == sku_str){
                                    new_goods_id = key;
                                }
                            }
                        }

                        if(new_goods_id >0){
                            location.href = '/detail.php?id='+new_goods_id;
                        }else{
                            var goods_vs = selected_attr_vaule.join(' + ')
                            alert('您筛选的“'+goods_vs+'”的商品暂时没有，我们正在积极备货');

                            selected_attr_vaule = [];
                            selected_bunch = [];
                            return false;
                        }

                    });

                    //新品推荐
                    var reconmend_str = '';
                    if(goods.new_goods_es){
                        reconmend_str += '<div class="wd-220 fl mouseenter-box scale-box">';

                        reconmend_str += '<div class="mb-20 bd-1-e8">';
                        reconmend_str += '<div class="fs-18 lh-50 bc-f3 ta-ct">新品推荐</div>';

                        var recomend_list = goods.new_goods_list;
                        for (var k = 0; k < recomend_list.length; k++) {
                            reconmend_str += '<div class="ta-ct mg-8 bt-1-e8 mouseenter mouseleave">';
                            reconmend_str += '<div class="scale pd-10 oh">';
                            reconmend_str += '<a class="db square-box one-one bgimg lazyload hidden" data-bgimg="background-image: url(https://wdimg3.bookuu.com/'+ recomend_list[k].pic_address +');" target="_blank" href="/detail.php?id='+ recomend_list[k].goods_id+'"></a>';
                            reconmend_str += '</div>';
                            reconmend_str += '<div class="context">';
                            reconmend_str += '<a class="db ht-36 lh-18 oh mt-5 cl-6 pd-0020" href="/detail.php?id='+ recomend_list[k].goods_id +'" target="_blank">'+ recomend_list[k].goods_name+'</a>';
                            reconmend_str += '<div class="lh-40">';
                            reconmend_str += '<span class="cl-rd-l">¥'+ recomend_list[k].price+'</span>';
                            reconmend_str += '<span class="cl-9">|</span>';
                            reconmend_str += '<del class="fs-12 cl-9">¥'+ recomend_list[k].market_price+'</del>';
                            reconmend_str += '</div>';
                            reconmend_str += '</div>';
                            reconmend_str += '</div>';
                        }

                        reconmend_str += '</div>';

                        reconmend_str += '</div>';

                        $("#www_good_new_reconmed").after(reconmend_str);
                    }else{
                        reconmend_str += goods.default_new_reconmend.html;
//                        console.log(111,reconmend_str);
                        $("#www_good_new_reconmed").after(reconmend_str);
                    }

                    $("#www_pc_title").html(goods.pc_title);
                }
            },
            complete: function (){
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



                //公共：加入购物车
                $('.addcart').on('click',function(){
                    var goods_store = parseInt($(".goods-store").attr("goods-store"));
                    var goods_id = $(this).attr('goods-id');
                    var number = $(this).attr('goods-number');
                    var buytype = $(this).attr('data-type');

                    if(buytype == ''){
                        buytype = 'add';
                    }

                    if(number<=goods_store){
                        $.ajax({
                            type: "post",
                            url:"/ajax/cart.php?act="+buytype,
                            data: {id:goods_id,number: typeof(number) == 'undefined' ? 1 :number, referer: window.location.href},
                            dataType: "json",
                            success: function(data) {
                                if(parseInt(data.status) == 404){
                                    window.location.href = data.info;
                                }else{
                                    if(data.status == 200){
                                        $('.cart_num').addClass('bc-rd-d pd-0005').html(data.list_number);

                                        if(data.url) {
                                            window.location.href = data.url;
                                        }
                                    }
                                    if(!data.url){
                                        alert(data.info);
                                    }
                                }
                            },error:function(){
                                alert('加入失败');
                            }
                        });
                    }else{
                        alert('库存数量不足',function(){
                            $(".number-box").val('1');
                            $(this).attr("goods-number",'1');
                        });
                    }
                });


                //提醒设置
                $('.remind-btn').on('click',function(){
                    var number = $('#tel-number').val();
                    var activity_id = $(this).attr("activity-id");
                    tel = checkPhone(number);
                    if(tel){
                        sendReminder(activity_id)
                        tel = false;
                    } else {
                        $('.reminds-err').html('请输入正确的手机号').show();
                    }
                });

                mouseenterAndTab();
            }
        });
//        */
 
</script>