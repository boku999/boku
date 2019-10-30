<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
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

<link rel="stylesheet" href="/statics/css/MyCss01.css" />
<link rel="stylesheet" href="/statics/css/MyCss02.css" />
<link rel="stylesheet" href="/statics/css/MyCss03.css" />
<link rel="stylesheet" href="/statics/css/MyCss04.css" />


<!-- 字体图标 -->
<link rel="stylesheet" href="/statics/css/MyCss05.css" />

<script type="text/javascript" src="/statics/js/jquery-1.8.3.min.js"></script>

<!-- FlexSlider -->
<link rel="stylesheet" href="/statics/css/MyCss06.css" />
<script type="text/javascript"
	src="https://bnmpstyle.bookuu.com/www/js/flexslider/jquery.flexslider.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title">博库网</title>
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
					<a class="hover cl-6" href="/download.php" target="_blank"
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
						class="icon-down-line ml-5 fs-11"></span> </label>
					<div class="acount">
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的博库</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的订单</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的优惠券</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的收藏</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的收入</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">官方消息</a>
						<a class="hover cl-6 to-hd" href="javascript:void(0);" title=""></a>
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
						src="img/logo.png" alt="" width="220" class="db" alt="logo"
						draggable="false" /> </a>
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
							<a target="_blank" class="cl-rd-l" href="#" title="长安十二时辰">长安十二时辰</a>
							<span class="cl-9 pd-0005">|</span> <a target="_blank"
								class="cl-9" href="#" title="快乐读书吧">快乐读书吧</a> <span
								class="cl-9 pd-0005">|</span> <a target="_blank" class="cl-9"
								href="#" title="平凡的世界">平凡的世界</a> <span class="cl-9 pd-0005">|</span>
							<a target="_blank" class="cl-9" href="#" title="夏洛的网">夏洛的网</a> <span
								class="cl-9 pd-0005">|</span> <a target="_blank" class="cl-9"
								href="#" title="旅行">旅行</a>
						</p>
						<div class="cb"></div>
					</div>
					<!-- uid==》登录的uid -->
					<div class="fr ta-rt mt-8 cart">
						<!-- uid=0当没有登陆的时候	-->
						<a class="fs-16 bd-1-d br-4 pd-0610 cart-box"
							href="UserBooksServlet?uids=${uid.uid}"> <span
							class="icon-cart-block mr-10 cl-a9 pr tp-3 fs-18"></span> <span
							class="mr-5">购物车</span> <label class="cl-f fw-nm br-10 cart_num"></label>
						</a>
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
						class="db pd-0015 fl " href="#"> <span>图书馆</span> </a> <a
						target="_blank" class="db pd-0015 fl " href="#"> <span>文创馆</span>
					</a> <a target="_blank" class="db pd-0015 fl " href="#"> <span>生活美学馆</span>
					</a>
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
	<div class="section wd-1200 ma">

		<p class="lh-50">
			您的当前位置： <a class="pd-0005" href="//www.bookuu.com/index.php">博库首页</a>&gt;
			<a class="pd-0005" href="#">全部商品分类</a>
		</p>

		<div class="book" id="category_10">
			<div class="context">
				<label class="fs-20 ml-10">图书</label>
			</div>
		</div>

		<div class="pd-2000">
			<ul class="pd-0060">
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a class="cl-bl-l"
							href="PageServlet?opr=pge&cid=${corlist[4].categoryid }">${corlist[4].categoryname
							}</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">数据库</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">程序设计</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">操作系统</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">网页制作</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">辅助设计</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">图形图像</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">多媒体</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">网络技术</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">家庭电脑入门</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">新手学电脑</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">Office</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">人工智能</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">计算机硬件组装及维护</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">单片机</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">软件工程</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">计算机原理</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">计算机教材</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">计算机考试</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">计算机影印版</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">计算机期刊</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>

				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a class="cl-bl-l"
							href="PageServlet?opr=pge&cid=${corlist[0].categoryid }">${corlist[0].categoryname
							}</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">名家名作</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">外国小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">都市情感</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">军事小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">官场小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">职场小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">科幻小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">魔幻小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">武侠小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">侦探/悬疑/推理</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">惊悚/恐怖</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">乡土小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">社会小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">历史小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">影视小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">中国古典小说</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">四大名著</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">世界名著</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">作品集</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>

				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a class="cl-bl-l"
							href="PageServlet?opr=pge&cid=${corlist[1].categoryid }">${corlist[1].categoryname
							}</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">经部</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">史部</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">子部</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">集部</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">四库全书</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">古籍工具书</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>


				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a class="cl-bl-l"
							href="PageServlet?opr=pge&cid=${corlist[2].categoryid }">${corlist[2].categoryname
							}</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">经济学理论</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">行业经济</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">中国经济</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">世界经济</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">经济法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">统计学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">审计</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">财政税收</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">经济工具书</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">通货膨胀</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">区域经济</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">保险</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">金融</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">经济史</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">贸易政策</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>

				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a class="cl-bl-l"
							href="PageServlet?opr=pge&cid=${corlist[3].categoryid }">${corlist[3].categoryname
							}</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">地域文化</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">中国传统文化</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">世界各国文化</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">中国民俗文化</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">民族文化</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">文化事业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">文化史</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">文化理论</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">文化随笔</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">文化研究</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">非物质文化遗产</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">哲学/宗教</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">哲学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">宗教</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">成功/励志</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">为人处世</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">人际交往</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">人在职场</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">人生哲学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">情商与情绪管理</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">心灵与修养</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">思维与谋略</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">性格与习惯</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">演讲与口才</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">财商与财富智慧</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">礼仪</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">时间管理</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">政治/军事</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">政治</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">军事</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">社会科学</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">中国社会</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">外国社会</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">社会学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">人口学/文化人类学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">新闻传播出版</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">语言文字</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">图书馆学/档案学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">教育</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">心理学</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">心理学经典著作</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">应用心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">心理学理论与研究</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">心理学研究方法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">心理咨询与治疗</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">儿童心理健康</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">青少年心理健康</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">老年心理健康</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">女性心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">心灵疗愈</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">催眠</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">意识与潜意识</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">色彩心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">积极心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">认知心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">生理心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">人格心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">变态心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">社会心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">心理学通俗读物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">教育与发展心理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">传记</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">财经人物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">领袖首脑</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">政治人物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">军事人物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">女性人物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">宗教人物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">历代帝王</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">文学家</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">艺术家</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">建筑设计师</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">科学家</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">学者</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">法律人物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">历史人物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">国学大师</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">影视明星</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">体育明星</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">人物合集</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">家族研究/谱系</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">传记的研究与编写</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">年谱</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">法律</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">法学理论</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">法律史</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">国家法/宪法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">民法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">刑法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">行政法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">经济法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">商法</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">诉讼法</a> <span
							class="pd-0010 cl-9 fl">|</span>

						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">科普读物</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">人类故事</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">生物世界</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">科学世界</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">生态环境</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">宇宙知识</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">百科知识</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">自然科学</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">自然科学总论</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">数学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">力学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">物理学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">化学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">晶体学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">天文学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">地球科学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">生物科学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">统计学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">建筑</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">建筑史与建筑文化</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">建筑科学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">建筑外观设计</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">室内设计/装潢装修</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">建筑施工与监理</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">工程经济与管理</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">农业/林业</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">农业基础科学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">农学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">园艺</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">农业工程</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">植物保护</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">农作物</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">林业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">畜牧/狩猎/蚕/蜂</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">水产/渔业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">动物医学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">农民实用技术</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>
				<li class="pd-1000 bb-1-e8-d fs-13">
					<div class="wd-120 pd-0010 fl cl-bl-l">
						<a target="_blank" class="cl-bl-l" href="#">工业技术</a>
					</div>
					<div class="wd-940 fl">
						<a target="_blank" class="cl-6 hover fl" href="#">机械/仪表工业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">电工技术</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">电子通信</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">化学工业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">冶金工业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">轻工业/手工业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">水利工程</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">自动化技术</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">金属学与金属工艺</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">石油/天然气工业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">矿业工程</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">能源与动力工程</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">原子能技术</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">武器工业</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">汽车与交通运输</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">一般工业技术</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">航空/航天</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">环境科学</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">工具书</a> <span
							class="pd-0010 cl-9 fl">|</span> <a target="_blank"
							class="cl-6 hover fl" href="#">其它</a>
						<div class="cb"></div>
					</div>
					<div class="cb"></div></li>



			</ul>

		</div>
		<br />
		<br />
		<!-- 底部 -->
		<div class="footer">
			<!-- tag -->
			<div class="tag">
				<ul class="clearfix">
					<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
						src="img/zheng.png" width="50" height="50"
						class="fl mr-10 defaultlazy" />
						<div class="fl">
							<p class="fs-24 ">全场正品</p>
							<p>出版社直采·博库正品</p>
						</div>
						<div class="cb"></div>
					</li>
					<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
						src="img/sheng.png" alt="" width="50" height="50"
						class="fl mr-10 defaultlazy" />
						<div class="fl">
							<p class="fs-24 ">全场满59包邮</p>
							<p>惊喜不断·让利多多</p>
						</div>
						<div class="cb"></div>
					</li>
					<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
						src="img/huo.png" alt="" width="50" height="50"
						class="fl mr-10 defaultlazy" />
						<div class="fl">
							<p class="fs-24 ">门店自取</p>
							<p>就近取货·方式灵活</p>
						</div>
						<div class="cb"></div>
					</li>
					<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
						src="img/hao.png" alt="" width="50" height="50"
						class="fl mr-10 defaultlazy" />
						<div class="fl">
							<p class="fs-24 ">售后无忧</p>
							<p>服务体验·更加精彩</p>
						</div>
						<div class="cb"></div>
					</li>
				</ul>
			</div>
			<div class="wd-1200 ma pd-2000 clearfix"></div>
			<!-- copyright -->
			<div class="copyright">
				<div class="wd-605 ma cl-9 ta-ct" style="width: 656px;">
					<div class="fl lh-50">
						<img src="img/jingcha.png" alt="" height="36"
							class="va-md pd-0005 defaultlazy"> <a
							href="/system/refer.php" target="_blank"> <img
							src="img/huizhang.png" alt="" height="36"
							class="va-md pd-0005 defaultlazy"> </a>
					</div>
					<div class="fl pd-0010">
						<p>©Copyright 2005-2017 bookuu.com 版权所有</p>
						<p>增值电信业务经营许可证:浙B2-2011021</p>
						<a class="copyRightA" href="#" target="_blank">出版物经营许可证新出发浙批字第300411号</a>
					</div>
					<div class="fl lh-50">
						<a href="#" target="_blank"><img src="img/knetSealLogo.png"
							alt="" height="30" class="va-md pd-0005 defaultlazy"> </a> <a
							href="#" target="_blank"><img src="img/cert.png" alt=""
							height="30" class="va-md pd-0005 defaultlazy"> </a>
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
								$("#header_user_session_name").val(
										data.info.name);
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
																.html(
																		'&#xe945;');
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
								$('.cart_num').addClass('bc-rd-d pd-0005')
										.html(data.list_number);
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