<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="utf-8">
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<meta name="description"
	content="博库网品种丰富的中文网上书店，160万种图书在线热销！图书、音像、软件正品行货超低折扣，全场免邮，支持全国货到付款。" />
<meta name="keywords" content="博库网,博库,博库书城,网上书店,网上买书,图书,影视,音像,软件" />
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
<title id="www_pc_title">搜索-博库体验店</title>
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
						<a class="hover cl-6" href="/user/login.html" title="登录">登录</a>
						<span class="pd-0005 cl-c">|</span>
						<a class="mr-30 hover cl-6" href="/user/registered.html" title="免费注册">免费注册</a>
					</c:when>
					<c:otherwise>
					欢迎：${uid.uname}
					<span class="pd-0005 cl-c">|</span>
						<a class="mr-30 hover cl-6" href="/user/loginout.html?url=pageShow"
							title="退出登录">退出登录</a>
					</c:otherwise>
					</c:choose>
					<a class="hover cl-6" href="/download.php" target="_blank"
						title="下载博库APP"> <span
						class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr"></span>下载博库APP</a>
				</p>
				<p class="fr">
					<a class="hover fr cl-6" href="javascript:void(0);"
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
						<a class="hover cl-6 to-hd" href="/order/orderItem.html?usid=${uid.uid}"
						   target="_blank" title="">我的订单</a> <a class="hover cl-6 to-hd"
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
					<a class="db logo-box fl" href="/book/Mnag.html"> <img
						src="/statics/img/logo.png" alt=""
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
							href="/car/userBooks.html?usid=${uid.uid}"> <span
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
					<a target="_blank" class="db cl-f title" href="/category/classification.html"><span
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
		// 滚动交互
		$(window).on('scroll', function() {
			var _scroll = $(window).scrollTop();
			if (_scroll >= 200) {
				$('#search-container').addClass('active');
			} else {
				$('#search-container').removeClass('active');
			}
		});
		$(".tosearch").click(function() {
			var key = $(this).parent().find(".searchkey").val();
			if (key == '') {
				key = $(this).parent().find(".searchkey").attr('placeholder');
			}
			location.href = '//www.bookuu.com/search.php?k=' + key;
		});

		function getKeyMore(_associateBox, _key) {

			console.log('开始请求', _key);
			//获取关联词
			$
					.ajax({
						type : "post",
						url : "/goods/search.php",
						data : {
							act : "getMoreKeys",
							keyword : _key
						},
						dataType : "json",
						success : function(data) {
							if (data.length > 0) {
								_associateBox.empty();
								var str = "";
								for ( var i = 0; i < data.length; i++) {
									var search_url = '//www.bookuu.com/search.php?k='
											+ data[i].key;
									str += '<li class="associate-content">'
											+ '<a class="fl" href="' + search_url + '">'
											+ data[i].akey
											+ '</a>'
											+ '<label class="fr delete"><span class="icon-close-line fr">&#xe919;</span></label>'
											+ '<div class="cb"></div>'
											+ '</li>';
								}
								_associateBox.append(str);
							}
						}
					});
		}

		function getHistoryKeys(_associateBox, _key) {
			console.log('历史记录', _key);
			//获取最近搜索
			$
					.ajax({
						type : "post",
						url : "/goods/search.php",
						data : {
							act : "getHistoryKeys",
							keyword : _key
						},
						dataType : "json",
						success : function(data) {
							if (data.length > 0) {
								_associateBox.empty();
								var str = '<li class="associate-title">'
										+ '<div class="fl text">最近搜索</div>'
										+ '<label class="fr delete all"><span class="icon-delete-line">&#xe91d;</span></label>'
										+ '<div class="cb"></div>' + '</li>';
								for ( var i = 0; i < data.length; i++) {
									var search_url = '//www.bookuu.com/search.php?k='
											+ data[i].key;
									str += '<li class="associate-content">'
											+ '<a class="fl" href="' + search_url + '">'
											+ data[i].key
											+ '</a>'
											+ '<label class="fr delete"><span class="icon-close-line fr">&#xe919;</span></label>'
											+ '<div class="cb"></div>'
											+ '</li>';
								}
								_associateBox.append(str);
							}
						}
					});
		}
		var timer1 = ''; //定时器1
		var timer2 = ''; //定时器2

		$('body').on(
				'hover',
				'.associate-box li.associate-content',
				function() {
					$('.associate-box li.associate-content').removeClass(
							'active');
					$(this).addClass('active');
				});

		//输入完成回车搜索
		$('body')
				.on(
						'keyup focus',
						'.search-box input',
						function(event) {
							var e = event || window.event
									|| arguments.callee.caller.arguments[0];

							var _this = $('.search-box input');
							var _inputId = _this.attr("id");
							var _key = _this.val();
							var _associateContainer = _this
									.parents('.associate-container');
							var _associateBox = _this
									.siblings('.associate-box');
							var _associateTitle = _associateBox
									.find('.associate-title'); //最近搜索
							var _associateLi = $('.associate-box li');
							var _associateLiActive = $('.associate-box li.active');
							// 键盘向上
							if (e && e.keyCode == 38) {
								var _associateTitleLength = _associateTitle.length;
								var _associateContentLength = _associateLi.length;
								var _associateContentActiveLength = _associateLiActive.length;
								var _index = _associateLiActive.index();
								_associateLi.removeClass('active');
								_index = _index - 1;
								// 历史记录
								if (_associateTitleLength == 0) {
									// 第一次focuse
									if (_index == -1)
										_index = _associateContentLength - 1;
									if (_associateContentActiveLength == 0)
										_index = 0;
								} else {
									// 第一次focuse
									if (_index == 0)
										_index = _associateContentLength - 1;
									if (_associateContentActiveLength == 0)
										_index = 1;

								}
								_associateLi.eq(_index).addClass('active');
								_this.val(_associateLi.eq(_index).find('a')
										.text());

								return false;
							}
							// 键盘向下
							if (e && e.keyCode == 40) {
								var _associateTitleLength = _associateTitle.length;
								var _associateContentLength = _associateLi.length;
								var _associateContentActiveLength = _associateLiActive.length;
								var _index = _associateLiActive.index();
								_associateLi.removeClass('active');
								_index = _index + 1;
								// 历史记录
								if (_associateTitleLength == 0) {
									if (_associateContentActiveLength == 0
											|| _index == _associateContentLength)
										_index = 0;
								} else {
									if (_associateContentActiveLength == 0
											|| _index == _associateContentLength)
										_index = 1;
								}
								_associateLi.eq(_index).addClass('active');
								_this.val(_associateLi.eq(_index).find('a')
										.text());

								return false;
							}
							//清空
							_associateBox.empty();
							// 文字为空，显示搜索记录
							if (_key == '') {
								//延迟xx
								if (timer2) {
									//                    console.log(22,timer2);
									clearTimeout(timer2);
									console.log('未结束', timer2);
								} else {
									console.log('开始了');
								}
								timer2 = setTimeout(function() {
									getHistoryKeys(_associateBox, _key)
								}, 600);
								_associateBox.addClass('history');
							} else {
								//延迟xx
								if (timer1) {
									//                    console.log(11,timer1);
									clearTimeout(timer1);
									console.log('未结束', timer1);
								} else {
									console.log('开始了');
								}
								timer1 = setTimeout(function() {
									getKeyMore(_associateBox, _key)
								}, 600);
								_associateBox.removeClass('history');
							}
							// 搜索出来数据不为空才显示出来
							_associateBox.css('display', 'block');
							// enter键
							if (e && e.keyCode == 13) {
								if (_key == '') {
									_key = _this.attr('placeholder');
									_this.val(_key);
								}
								location.href = '//www.bookuu.com/search.php?k='
										+ _key;
							}
						});
		$('.search-box input').on('blur', function() {
			blurFunc();
		});
		// 删除历史记录
		$('body')
				.on(
						'click',
						'.associate-box label.delete',
						function() {
							var _this = $(this);
							var _associateBox = _this.parents('.associate-box');
							var _input = _this.parents('.search-box').find(
									'input');
							var _associateContent = _this
									.parents('.associate-content');
							var _associateTitle = _associateBox
									.find('.associate-title');
							var keyword = _associateContent.children("a")
									.html();
							if (_this.hasClass('all')) {
								_associateBox.empty();
								keyword = '';
							}
							_associateContent.remove();
							var _contentLength = _associateBox
									.find('.associate-content').length;
							if (_contentLength == 0) {
								_associateTitle.remove();
								_associateBox.css('display', 'none');
							} else {
								//                _input.focus();
							}
							//删除记录
							$.ajax({
								type : "post",
								url : "/goods/search.php",
								data : {
									act : "deleteKeys",
									keyword : keyword
								},
								dataType : "json",
								success : function(data) {

								}
							});
						});
		$('.associate-box').on('mouseenter', function() {
			var _input = $('.search-box input');
			_input.off('blur');
		});
		$('.associate-box').on('mouseleave', function() {
			var _input = $('.search-box input');
			_input.on('blur', function() {
				blurFunc();
			});
		});

		function blurFunc() {
			var _associateBox = $('.search-box .associate-box');
			_associateBox.css('display', 'none');
		}
		
		
		
	</script>
	<style>
/**
    * 分页
    */
.paginations.two {
	display: inline-block;
	border: 1px solid #bbb;
	border-radius: 3px;
}

.paginations.two a {
	display: block;
	float: left;
	width: 27px;
	height: 27px;
	outline: none;
	color: #999999;
	vertical-align: middle;
	text-align: center;
	text-decoration: none;
	font-weight: bold;
	font-size: 16px;
	font-family: Times, 'Times New Roman', Georgia, Palatino;
	position: relative;
}

.paginations a:hover {
	color: #2db4ea;
}

.paginations a.disabled,.paginations a.disabled:hover,.paginations a.disabled:focus,.paginations a.disabled:active
	{
	color: #ccc;
	cursor: default;
}

.paginations.two input {
	float: left;
	margin: 0;
	padding: 0;
	min-width: 40px;
	height: 27px;
	outline: none;
	border: none;
	vertical-align: middle;
	text-align: center;
	color: #999;
}
</style>

	<div class="section bc-f5">
		<div class="wd-1200 ma">
			<!-- 分类搜索 -->
			<div class="typesearch">
				<p class="fl mr-40 allcategory">
					<a href="//www.bookuu.com/search.php?k=&cid=1017&showtype=0">全部分类</a>
					> <a class="mr-10" data-cid="10"
						href="//www.bookuu.com/search.php?k=&cid=10&showtype=0">图书</a>> <a
						class="mr-10" data-cid="1017"
						href="//www.bookuu.com/search.php?k=&cid=1017&showtype=0">${categoryname }</a>
					共<span class="cl-bl-l">${pu.totalSize }</span>件商品
				</p>
				<div class="cb"></div>
			</div>
			<!-- 展开隐藏 -->

			<!-- 类型排序 -->
			<div class="tab-box">

				<!-- 商品列表 -->
				<ul class="search-tab-content mouseenter-box bc-f">
					<li class="clearfix typelist-1 on-tab">
						<!-- 样式1 商品列表 -->
						<div class="wd-980 fl scale-box br-1-e8" style="width: 979px;">
							<c:forEach items="${pu.list}" var="li">
								<div class="wd-940 pd-1020 bb-1-e8 bc-f mouseenter mouseleave"
									style="width: 939px;">
									<div class="wd-180 fl mr-20 pr">
									<input vlaue="${li.bookid}" id="myid" style="visibility: hidden;"/>
										<div class="oh scale pd-10" id="xqxs">
											<img alt=""  src="/statics/${li.bookimg}">
										</div>
									</div>
									<div class="wd-640 fl" style="width: 640px;">
										<a class="db fs-16 lh-30 to-hd fw-bd hover" target="_blank"
											href="/book/book.html?bookid=${li.bookid}">${li.bookname}</a>
										<div class="lh-30">
											<span class="fs-21 cl-rd-l fw-bd mr-20">¥${li.price }</span>
											<del class="cl-9 mr-10">¥${li.discount }</del>
											<label> </label>

										</div>
										<div class="lh-30 fs-12">
											<div class="wd-30p fl to-hd mr-10">
												<span class="cl-9">作者：${li.author }</span> 
											</div>

											<div class="wd-30p fl to-hd cl-9 mr-10">
												<span class="cl-9">出版社：</span> <a target="_blank"
													class="hover" href="/search.php?k=清华大学&showtype=0">${li.sell}</a>
											</div>
											<div class="wd-30p fl to-hd cl-9">
												<!-- 无出版时间 -->
												<span class="cl-9">出版时间：</span> <span
													style="color: #212121;">${li.publicationdate }</span>
											</div>
											<div class="cb"></div>
										</div>
										<div class="cl-9 lh-20 ht-40 oh fs-12">${li.info }</div>
										<div class="mt-10 ht-38 lh-35">
											<span class="cp bc-bl bd-1-bl-d addcart cl-f pd-0610 mr-20"
												goods-id="100716038" goods-number="1" data-type="add">
												<span class="icon-cart-block mr-5 cl-f pr tp-2"></span>加入购物车
											</span> <label
												class="bc-f cl-9 bd-1-c pd-0610 mr-20 cp choose-box collect "
												goods-id="100716038"> <span
												class="icon-star-line mr-5 pr tp-1">&#xe946;</span>收藏 </label>
										</div>
									</div>
									<div class="cb"></div>
								</div>
							</c:forEach>


							<!-- 分页 -->
							<div class="tcdPageCode lh-30">
								<div class='row pagination fr'>
									<div class="span fl">
										<div class="fl">
											<ul>
											<c:if test="${pu.pageNo!=1}">
												<li class="fl"><a class="disabled" href='/book/page.html?pageNo=${pu.pageNo-1 }&opr=pge'>« 上一页</a>
												</li>
												</c:if>
												<li class="fl">
												   当前页数:[${pu.pageNo }/${pu.totalPage}]
												</li>
												<c:if test="${pu.pageNo!=pu.totalPage}">
												<li class='fl'><a
													href='/book/page.html?pageNo=${pu.pageNo+1 }&opr=pge'
													class='next'>下一页 »</a></li>
												<li class="cb"></li>
												</c:if>
											</ul>
											
											
   				
   				
										</div>
									</div>
								</div>
								<div class="cb"></div>
							</div>
						</div> <!--新书推荐 等 右侧边栏目-->
						<div class="wd-220 fr">

							<div class="mb-20 scale-box mouseenter-box">
								<div class="fs-18 lh-60 ta-ct bb-1-e8">新品推荐</div>

								<div class="ta-ct mg-8 bb-1-e8 mouseenter mouseleave">
									<div class="oh scale pd-10">
										<a class="db square-box one-one bgimg lazyload hidden"
											target="_blank"
											href="#"><img src="/statics/img/2018122230327901-14911.jpg"/></a>
									</div>
									<div class="context pd-0020">
										<a class="db ht-36 lh-18 oh cl-6" target="_blank"
											href="//www.bookuu.com/detail.php?id=101264030">(2019.3)计算机二级C语言</a>
										<p class="lh-40 mt-5">
											<span class="cl-rd-l">¥34.90</span> <span class="cl-9">|</span>
											<del class="fs-12 cl-9">¥69.80</del>
										</p>
									</div>
								</div>


							</div>

						</div></li>
					<li class="mouseenter-box productlist-2 clearfix dn">
						<!-- 样式2 商品列表 -->
						<div class="scale-box">
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/09/09/24/1558055364.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100976402"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥62.48</span>
												<del class="fs-16 cl-9 fr">¥88.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">编程真好玩</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/21/24/01/9060341.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100716038"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥55.84</span>
												<del class="fs-16 cl-9 fr">¥69.80</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">JAVA从入门到精通(附光盘第4版)
												软件开发视频大讲堂 博库定制版</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/17/38/33/9068141.png@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100880558"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥47.84</span>
												<del class="fs-16 cl-9 fr">¥59.80</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">C语言从入门到精通(附光盘第3版)
												博库定制版 软件开发视频大讲堂 </a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/20/56/54/3600749.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100609079"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥52.40</span>
												<del class="fs-16 cl-9 fr">¥68.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">智能时代(大数据与智能革命重新定义未来)(精)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/10/33/17/2018061230169346-97310.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=101114294"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥35.00</span>
												<del class="fs-16 cl-9 fr">¥35.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">人工智能基础（高中版）</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/23/33/22/3885924-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100961115"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥70.29</span>
												<del class="fs-16 cl-9 fr">¥99.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">Office2016完全自学教程(附光盘)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/16/48/45/3909777.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100945892"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥52.44</span>
												<del class="fs-16 cl-9 fr">¥69.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">和秋叶一起学Word(第2版)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/02/19/04/3906211-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100972302"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥53.10</span>
												<del class="fs-16 cl-9 fr">¥69.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">轻松玩转Scratch编程(全彩印刷)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/00/50/41/3660509-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100741507"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥30.40</span>
												<del class="fs-16 cl-9 fr">¥38.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">CCF中学生计算机程序设计(入门篇CCF中学生计算机程序设计教材)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/15/27/53/3596368-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100574074"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥73.00</span>
												<del class="fs-16 cl-9 fr">¥89.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">Python编程(从入门到实践)
												图灵程序设计丛书</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/02/23/13/3910499.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100972655"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥75.24</span>
												<del class="fs-16 cl-9 fr">¥99.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">和秋叶一起学PPT(又快又好打造说服力幻灯片第3版)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/02/27/39/3909824.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100973078"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥75.24</span>
												<del class="fs-16 cl-9 fr">¥99.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">和秋叶一起学Excel</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/18/59/41/3660486-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100727480"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥28.80</span>
												<del class="fs-16 cl-9 fr">¥36.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">CCF中学生计算机程序设计(基础篇CCF中学生计算机程序设计教材)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/15/36/37/30001315-1.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100996050"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥24.90</span>
												<del class="fs-16 cl-9 fr">¥49.80</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">新编Word\Excel\PPT2016高效办公三合一(全彩版)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/18/00/12/3762556-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100857399"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥31.90</span>
												<del class="fs-16 cl-9 fr">¥42.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">OpenStack云计算基础架构平台技术与应用(云计算技术与应用专业系列教材)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/16/24/04/3825474-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100920464"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥25.84</span>
												<del class="fs-16 cl-9 fr">¥38.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">为什么精英都是Excel控</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/09/49/01/1558662541.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100116327"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥37.24</span>
												<del class="fs-16 cl-9 fr">¥49.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">Word\Excel\PPT2010办公应用从入门到精通(附光盘)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/11/18/19/2097584.png@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100107548"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥52.44</span>
												<del class="fs-16 cl-9 fr">¥69.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">奇点临近</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/11/54/16/3928267-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100979149"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥36.96</span>
												<del class="fs-16 cl-9 fr">¥56.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">EXCEL带你玩转财务职场</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/14/51/26/3527205-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100439387"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥73.00</span>
												<del class="fs-16 cl-9 fr">¥89.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">C Primer Plus <第6版>中文版
											</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/17/02/00/2385168.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100848429"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥78.00</span>
												<del class="fs-16 cl-9 fr">¥99.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">算法(第4版)
												图灵程序设计丛书</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/13/41/32/2018053130162812-57141.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=101106323"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥119.28</span>
												<del class="fs-16 cl-9 fr">¥168.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">Excel2013函数与公式应用大全(全彩版)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/10/20/05/A104605.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100880394"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥51.00</span>
												<del class="fs-16 cl-9 fr">¥68.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">智能革命：迎接人工智能时代的社会、经济与文化变革</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/18/52/22/3030824.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100001050"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥33.70</span>
												<del class="fs-16 cl-9 fr">¥45.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">你早该这么玩Excel(WiFi版)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/19/16/10/2549257-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100117273"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥22.04</span>
												<del class="fs-16 cl-9 fr">¥29.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">SQL必知必会(第4版)
												图灵程序设计丛书</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/07/02/40/3508303.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100205137"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥39.20</span>
												<del class="fs-16 cl-9 fr">¥49.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">学电脑从新手到高手(附光盘超值版)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/16/42/38/A106867-1.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=101057682"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥89.60</span>
												<del class="fs-16 cl-9 fr">¥128.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">Excel 2016应用大全</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/09/37/14/3815010-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100940391"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥198.40</span>
												<del class="fs-16 cl-9 fr">¥239.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">深入理解计算机系统(英文版第3版)(精)
												经典原版书库</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/09/41/30/3977036-fm.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=101027487"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥22.65</span>
												<del class="fs-16 cl-9 fr">¥29.80</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">二级C语言(附光盘2018年无纸化考试专用)
												全国计算机等级考试历年真题与机考题库</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="wd-20p fl">
								<div class="mouseenter mouseleave bd-2-f mg-5">
									<div class="pd-5 bd-1-e8 pr">
										<div class="scale pd-10 oh">
											<a class="db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(https://wdimg3.bookuu.com/goods/18/39/22/3030827.jpg@!w300q75);"
												href="//www.bookuu.com/detail.php?id=100000115"> </a>
										</div>
										<div class="context pd-0010">
											<div class="lh-40 mt-5">
												<span class="fs-20 cl-rd-l mr-20 fl">¥36.70</span>
												<del class="fs-16 cl-9 fr">¥49.00</del>
												<div class="cb"></div>
											</div>
											<a class="db ht-40 lh-20 oh cl-6" href="">你早该这么玩Excel(ⅡWiFi版)</a>
											<div class="ht-30 mt-10"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="cb"></div>
						</div> <!-- 分页 -->
						<div class="tcdPageCode lh-30">
							<div class='row pagination fr'>
								<div class="span fl">
									<div class="fl">
										<ul>
											<li class="fl"><span class="disabled">« 上一页</span>
											</li>
											<li class="fl"><span class='current'>1</span> <a
												href='/search.php?cid=1017&sorttype=&activityonly=0&havestoreonly=0&prices=&pricee=&rates=&ratee=&k=&page=2'>2</a>
												<a
												href='/search.php?cid=1017&sorttype=&activityonly=0&havestoreonly=0&prices=&pricee=&rates=&ratee=&k=&page=3'>3</a>
												<a
												href='/search.php?cid=1017&sorttype=&activityonly=0&havestoreonly=0&prices=&pricee=&rates=&ratee=&k=&page=4'>4</a>
												<a
												href='/search.php?cid=1017&sorttype=&activityonly=0&havestoreonly=0&prices=&pricee=&rates=&ratee=&k=&page=5'>5</a>
											</li>
											<li class='fl'><a
												href='/search.php?cid=1017&sorttype=&activityonly=0&havestoreonly=0&prices=&pricee=&rates=&ratee=&k=&page=2'
												class='next'>下一页 »</a></li>
											<li class="cb"></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="cb"></div>
						</div></li>
				</ul>
			</div>

		</div>
	</div>

	<script>
		//关键字搜索
		$("#keysearch").click(
				function() {
					var cate_cid = $(".allcategory a:last").attr("data-cid");
					var key = $(this).parent().find(".searchkey").val();
					if (key != '') {
						location.href = '//www.bookuu.com/search.php?cid='
								+ cate_cid + '&k=' + key;
					}
				});

		// 懒加载
		lazyLoading();

		// 菜单
		mouseenterAndTab();

		// 商品检索列表排序
		$('.sort').on('click', function() {
			var sorttype = $(this).attr("data-type");
			if (sorttype != '') {
				var url = bildurl('sorttype', 1, sorttype, '');
				location.href = url;
			}
		});

		//促销、现货选购
		function doselect(obj, val) {
			var isselect = parseInt($("#" + val).val());
			var url = bildurl('page', 0, 1, '');
			if (isselect == 1) {
				obj.classList.remove("bc-bl");
				obj.classList.remove("cl-f");
				$("#" + val).val('0');
				url = bildurl(val, 0, 0, url);
			} else {
				obj.classList.add("bc-bl");
				obj.classList.add("cl-f");
				$("#" + val).val('1');
				url = bildurl(val, 0, 1, url);
			}
			location.href = url;
		}

		//重构url
		function bildurl(key, type, value, url) {
			if (url == '') {
				url = location.href;
			}

			if (type == 1) {
				value = value + '_desc';
				if (value == '') {
					value = value.replace(/desc/, "asc");
				} else {
					value = value.replace(/desc/, "desc");
				}
			}
			if (url.indexOf(key) > -1) {
				if ('activityonly' == key) {
					url = url.replace(/activityonly=\d+/, key + '=' + value);
				}
				if ('havestoreonly' == key) {
					url = url.replace(/havestoreonly=\d+/, key + '=' + value);
				}
				if ('sorttype' == key) {
					url = url.replace(/sorttype=\w*/gi, key + '=' + value);
				}
				if ('page' == key) {
					url = url.replace(/page=\d+/, key + '=' + value);
				}
			} else {
				url += '&' + key + '=' + value;
			}

			return url;
		}

		//展现样式切换 重构url
		$(".search-tab-title li").click(function() {
			url = location.href;
			var type = $(this).attr('data-type');

			if (url.indexOf('showtype') > -1) {
				url = url.replace(/showtype=\d+/, 'showtype=' + type);
			} else {
				url += '&showtype=' + type;
			}
			location.href = url;
		});
	</script>

	<!-- 底部 -->
	<div class="footer">
		<!-- tag -->
		<div class="tag">
			<ul class="clearfix">
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/statics/img/zheng.png" width="50"
					height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场正品</p>
						<p>出版社直采·博库正品</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/statics/img/sheng.png" alt=""
					width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场满59包邮</p>
						<p>惊喜不断·让利多多</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/statics/img/huo.png" alt=""
					width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">门店自取</p>
						<p>就近取货·方式灵活</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/statics/img/hao.png" alt=""
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
					<img src="/statics/img/jingcha.png"
						alt="" height="36" class="va-md pd-0005 defaultlazy"> <a
						href="/system/refer.php" target="_blank"> <img
						src="/statics/img/huizhang.png" alt=""
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
						src="/statics/img/knetSealLogo.png"
						alt="" height="30" class="va-md pd-0005 defaultlazy">
					</a> <a href="#"
						target="_blank"><img
						src="/statics/img/cert.png" alt=""
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
			"left" : {
				"url" : ""
			},
			"right1" : {
				"text" : "",
				"color" : "",
				"fontSize" : 12
			},
			"right2" : {
				"text" : "",
				"color" : "",
				"fontSize" : 12
			},
			"right3" : {
				"text" : "",
				"color" : "",
				"fontSize" : 14
			},
			"extraInfos" : [],
			"url" : "//www.bookuu.com/"
		};
		var chatflag = 0;

		//获取用户登陆信息并

		$
				.ajax({
					type : "post",
					url : "/ajax/user.php",
					dataType : "json",
					success : function(data) {
						var user_str = '';
						if (data.code == "0000" && data.info.is_login == 1) {
							$("#header_user_session_userid").val(
									data.info.userid);
							$("#header_user_session_name").val(data.info.name);
							$("#header_user_session_mobilephone").val(
									data.info.mobilephone);
							$("#header_user_session_header").val(
									data.info.header);
							//console.log(11);
							user_str += '欢迎，' + data.info.name;
							user_str += '<span class="pd-0005 cl-c">|</span>';
							user_str += '<a class="mr-30 hover cl-6" href="/login.php?act=loginout" title="退出登录">退出登录</a>';

							qimoClientId = {
								userId : data.info.userid,
								nickName : data.info.name,
								customField : { //扩展字段，json对象，对象中的key-value都自定义
									"用户UID" : data.info.userid,
									"用户名称" : data.info.name,
									"手机号码" : data.info.mobilephone
								}
							};

							chatflag = 1;

							var dq_goods_id = "";

							if (dq_goods_id != "") {
								//扩展信息
								m7CardInfo = {
									"left" : {
										"url" : "https://bnmppic.bookuu.com/" // 左侧图片地址，可不填
									},
									"right1" : {
										"text" : "", // 首行文字内容，展示时超出两行隐藏，卡片上单行隐藏
										"color" : "#595959", // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
										"fontSize" : 12
									// 字体大小， 默认12 ， 请传入number类型的数字
									},
									"right2" : {
										"text" : "", // 第二行文字内容，展示时超出两行隐藏，卡片上单行隐藏
										"color" : "#595959", // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
										"fontSize" : 12
									// 字体大小， 默认12 ， 请传入number类型的数字
									},
									"right3" : {
										"text" : "¥", // 第三行文字内容，展示时超出两行隐藏，卡片上单行隐藏
										"color" : "#ff6b6b", // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#ff6b6b
										"fontSize" : 14
									// 字体大小， 默认14 ， 请传入number类型的数字
									},
									"extraInfos" : [], // 额外信息，访客不可见，座席点击卡片上的更多可见，可不填，字符串形式的文本数组
									"url" : "//www.bookuu.com/detail.php?id=" // 点击可跳转的链接
								};
							}

						} else {
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
		function openQimooChat() {
			if (chatflag == 1) {
				console.log(qimoClientId);
				console.log(m7CardInfo);
			}
			window.qimoChatClick();
		}
	</script>
	<script>
		$(function() {
			//频道 tab切换
			$(".my_tab")
					.click(
							function() {
								var tabId = $(this).attr("data-id");
								$(this).addClass('on-click');
								$(this).siblings().removeClass('on-click');

								$("#my_tab_" + tabId).removeClass("dn");
								$("#my_tab_" + tabId).siblings(
										".my_tab_content").addClass('dn');

								//tablazy 图片加载
								let
								id = "#my_tab_" + tabId + ' img'
								slidingImgs = $(id);
								for (i = 0; i < slidingImgs.length; i++) {
									// 遍历操作
									if (slidingImgs[i]
											.getAttribute('data-srctaplazy')) {
										slidingImgs[i].src = slidingImgs[i]
												.getAttribute('data-srctaplazy');
										slidingImgs[i]
												.removeAttribute('data-srctaplazy');
									}
								}
							});
		});

		// 懒加载
		lazyLoading();

		// 菜单
		mouseenterAndTab();

		$(function() {

			//公共：加入收藏
			$('.collect')
					.on(
							'click',
							function() {
								var _span = $(this).find('span');

								var goods_id = $(this).attr('goods-id');
								if (_span.hasClass('icon-star-line')) {
									$
											.ajax({
												type : "get",
												url : "/ajax/collect.php",
												data : {
													act : 'collect',
													type : 'add',
													id : goods_id
												},
												dataType : "json",
												success : function(data) {
													if (parseInt(data.status) == 1) {
														alert(data.info);

														_span
																.removeClass(
																		'icon-star-line')
																.addClass(
																		'icon-star-block')
																.html(
																		'&#xe945;');
														$('.collect')
																.removeClass(
																		'bd-1-a cl-9')
																.addClass(
																		'bd-1-bl-d cl-bl-l');

													} else if (parseInt(data.status) == 404) {
														window.location.href = data.info;
													} else {
														alert(data.info);
													}
												}
											});
								} else {
									confirm(
											'',
											'你要取消收藏该商品吗?',
											'',
											function(res) {
												if (res) {
													$
															.ajax({
																type : "get",
																url : "/ajax/collect.php",
																data : {
																	act : 'collect',
																	type : 'delete',
																	id : goods_id
																},
																dataType : "json",
																success : function(
																		data) {
																	if (parseInt(data.status) == 1) {
																		alert(data.info);

																		_span
																				.removeClass(
																						'icon-star-block')
																				.addClass(
																						'icon-star-line')
																				.html(
																						'&#xe946;');
																		$(
																				'.collect')
																				.removeClass(
																						'bd-1-bl-d cl-bl-l')
																				.addClass(
																						'bd-1-a cl-9');

																	} else if (parseInt(data.status) == 404) {
																		window.location.href = data.info;
																	} else {
																		alert(data.info);
																	}
																}
															});
												} else {
													_span
															.removeClass(
																	'icon-star-line')
															.addClass(
																	'icon-star-block')
															.html('&#xe945;');
													$('.collect')
															.removeClass(
																	'bd-1-a cl-9')
															.addClass(
																	'bd-1-bl-d cl-bl-l');
												}
											});
								}

							});

			getCartNum();

			//公共：加入购物车
			$('.addcart').on(
					'click',
					function() {
						var goods_id = $(this).attr('goods-id');
						var number = $(this).attr('goods-number');
						$.ajax({
							type : "post",
							url : "/ajax/cart.php?act=add",
							data : {
								id : goods_id,
								number : typeof (number) == 'undefined' ? 1
										: number
							},
							dataType : "json",
							success : function(data) {
								if (parseInt(data.status) == 404) {
									window.location.href = data.info;
								} else {
									if (data.status == 200) {
										$('.cart_num').addClass(
												'bc-rd-d pd-0005').html(
												data.list_number);
									}
									alert(data.info);
								}
							},
							error : function() {
								alert('加入失败');
							}
						});
					});

			//公共：签到
			$('.checkin').on('click', function() {
				$.ajax({
					type : "post",
					url : "/ajax/checkin.php?act=signed",
					data : {},
					dataType : "json",
					success : function(data) {
						if (parseInt(data.status) == 404) {
							window.location.href = data.info;
						} else {
							alert(data.info);
						}
					},
					error : function() {
						alert('签到失败');
					}
				});
			});

		});

		//获取购物车的数量
		function getCartNum() {
			var num = getCookie('gwshoppingcart');
			if (num == null) {
				//公共：购物车数量统计
				$.ajax({
					type : "get",
					url : "/ajax/cart.php?act=count",
					dataType : "json",
					success : function(data) {
						if (parseInt(data.status) == 200
								&& parseInt(data.list_number) > 0) {
							$('.cart_num').addClass('bc-rd-d pd-0005').html(
									data.list_number);
						}
					}
				});
			}
			if (num > 0) {
				$('.cart_num').addClass('bc-rd-d pd-0005').html(num);
			}
		}

		function getCookie(name) {
			var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
			if (arr = document.cookie.match(reg))
				return unescape(arr[2]);
			else
				return null;
		}

		// 进度条
		$('.progress-box').progress();
	</script>