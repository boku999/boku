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
<link rel="stylesheet" type="text/css" href="/statics/css/myframe.css" />
<link rel="stylesheet" type="text/css" href="/statics/css/public.css" />
<link rel="stylesheet" type="text/css" href="/statics/css/component.css" />
<link rel="stylesheet" type="text/css" href="/statics/css/module.css" />
<link rel="shortcut icon"
	href="https://bnmpstyle.bookuu.com/www/images/favicon.ico"
	type="image/x-icon" />

<!-- 字体图标 -->
<link rel="stylesheet" type="text/css" href="/statics/css/iconfonts.css" />

<script type="text/javascript" src="/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="/statics/js/component.js"></script>

<!-- FlexSlider -->
<link rel="stylesheet" type="text/css" href="/statics/css/flexslider.css" />
<script type="text/javascript" src="/statics/js/flexslider.js"></script>
<meta name="baidu-site-verification" content="s3QQaARPSL" />
<title id="www_pc_title"></title>
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
						class="icon-down-line ml-5 fs-11"></span>
					</label>
					<div class="acount">
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的博库</a>
						<a class="hover cl-6 to-hd" href="OrderItemServlet?usid=${uid.uid}"
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
					<a class="db logo-box fl" href="/index.php"> <img
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
		$(function() {
			//默认搜索词更新
			var bar_type = 'index';
			if (bar_type == 'index' || bar_type == 'detail') {
				$("#gudingsearch").attr('value', '');
			}
			$.ajax({
				type : "post",
				url : "/ajax/getdefaultkey.php",
				dataType : "json",
				success : function(data) {
					var defaultkey = '';
					if (data.code == "0000") {
						defaultkey = data.info.defaultkey;
						$("#gudingsearch").attr('placeholder', defaultkey);
					}
				}
			});
		})
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
			location.href = '/search.php?k=' + key;
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
									var search_url = '/search.php?k='
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
									var search_url = '/search.php?k='
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
								location.href = '/search.php?k=' + _key;
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
	<div class="section bc-f5">
		<!-- 菜单、banner、公告 -->
		<div class="ht-400 pr">
			<!-- 菜单 -->
			<!-- 公共 菜单 展示页 -->
			

			<!-- banner 轮播图 -->
			<div class="banner pr"
				style="position: relative;left: 50%;margin-left: -960px;">
				<div class="flexslider banner index">
					<ul class="slides">
						<li><a target="_blank" href="#"> <img
								data-src="img/20190409142950470.jpg"
								alt="70" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20190805110525914.jpg"
								alt="山海" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20190712164446175.jpg"
								alt="良渚" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20190816131521976.jpg"
								alt="历史" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20190628134930321.jpg"
								alt="新" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20190712133447402.jpg"
								alt="武侠" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20190620183433381.jpg"
								alt="扶贫" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20190214175654483.jpg"
								alt="" width="1920" height="400" class="db hidden"> </a></li>
						<li><a target="_blank" href="#"> <img
								data-src="img/20171019172549302.jpg"
								alt="app" width="1920" height="400" class="db hidden"> </a></li>
					</ul>
				</div>
			</div>

			<!-- 公告 -->

		</div>

		<!-- 正品保证 -->
		<div class="bc-f ht-40 lh-40">
			<div class="wd-1200 ma pd-0020 ">
				<label class="mr-60"><span
					class="icon-zheng-line mr-10 cl-3c fs-20 pr tp-4">&#xe961;</span>正品保证</label>
				<label class="mr-60"><span
					class="icon-tui-line mr-10 cl-3c fs-20 pr tp-4">&#xe95b;</span>七天无理由退货</label>
				<label class="mr-60"><span
					class="icon-tui-line mr-10 cl-3c fs-20 pr tp-4">&#xe960;</span>全场满59包邮</label>
			</div>
		</div>

		<div class="wd-1200 ma">

			<!-- 板块 模块 和卡片 -->

			<!-- 图文 板块 -->
			<div class="anchor-box" id="7" data-template-id="9" plate-id="7"
				plate-type="5">

				<ul class="mb-20">

					<!--重磅推荐 module_type=18 template_id=8-->
					<li class="wd-390 fl" id="goto_zbtj" style="margin-left: 100px;">
						<div class="card-box">
							<p class="card">
								<label class="fl fs-18 mr-10"><span
									class="icon-star-line2 mr-10 fs-22 pr tp-3">&#xe947;</span>重磅推荐</label>
								<a class="fl cl-f" target="_blank" href="javascript:void(0);">博库精选推荐
									<span class="icon-aoorw-line cl-f ml-5 pr tp-2 fs-15">&#xe902;</span>
								</a>
							<div class="cb"></div>
							</p>
						</div>

						<ul class="scale-box oh">
							<li class="wd-50p fl ht-183">
								<div class="bd-4-f scale oh">
									<a class="db" target="_blank" href="#"> <img
										data-src="img/20170811135737589.jpg"
										alt="品质好书" width="190" height="175" class="hidden db"> </a>
								</div></li>
							<li class="wd-50p fl ht-183">
								<div class="bd-4-f scale oh">
									<a class="db" target="_blank" href="#"> <img
										data-src="img/20170815100145178.jpg"
										alt="独家特供" width="190" height="175" class="hidden db"> </a>
								</div></li>
							<li class="wd-50p fl ht-93">
								<div class="bd-4-f scale oh">
									<a class="db" target="_blank" href="#"> <img
										data-src="img/20170816115027610.jpg"
										alt="传家礼品" width="190" height="85" class="hidden db"> </a>
								</div></li>
							<li class="wd-50p fl ht-93">
								<div class="bd-4-f scale oh">
									<a class="db" target="_blank" href="#"> <img
										data-src="img/20170816115237948.jpg"
										alt="好书成套" width="190" height="85" class="hidden db"> </a>
								</div></li>
							<li class="wd-50p fl ht-93">
								<div class="bd-4-f scale oh">
									<a class="db" target="_blank" href="#"> <img
										data-src="img/20170815095814351.jpg"
										alt="文创" width="190" height="85" class="hidden db"> </a>
								</div></li>
							<li class="wd-50p fl ht-93">
								<div class="bd-4-f scale oh">
									<a class="db" target="_blank" href="#"> <img
										data-src="img/20171219120005511.jpg"
										alt="生活美学" width="190" height="85" class="hidden db"> </a>
								</div></li>
						</ul></li>



					<!-- 热销排行 module_type=17 template_id=10-->
					<li class="wd-390 ht-415 fr" style="margin-right: 100px;">
						<div class="card-box">
							<p class="card clearfix">
								<label class="fl fs-18 mr-10"><span
									class="icon-fire-line mr-10 fs-22 pr tp-3">&#xe920;</span>热销排行</label>
								<a class="fl cl-f" target="_blank" href="#">网罗全民挚爱<span
									class="icon-aoorw-line cl-f ml-5 pr tp-2 fs-15">&#xe902;</span>
								</a>
							</p>
						</div>

						<div class="bd-1-e8 tab-box">

							<ul class="tab-title hotsale-title">
								<li class="ranking_list wd-25p fl on-tab" data-id="31"><span>图书</span>
								</li>
								<li class="ranking_list wd-25p fl " data-id="38"><span>童书</span>
								</li>
								<li class="ranking_list wd-25p fl " data-id="34"><span>文学</span>
								</li>
								<li class="ranking_list wd-25p fl " data-id="39"><span>教辅</span>
								</li>
								<div class="cb"></div>
							</ul>

							<ul
								class="tab-content hotsale-content mouseenter-box patch ht-325 oh">
								<li id="my_ranktab_31" class="my_ranktab_content fs-14 on-tab ">
									<a class="db clearfix mouseenter on-mouse bb-1-e8"
									target="_blank" href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/first-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/39/2375506.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">我们仨</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：535470</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/second-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/2353163.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">活着/余华作品</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：417650</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/third-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/2282203.jpg@!w210);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">偷影子的人</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：371639</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">4.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/1562730332.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">三体（1-3 共3册）</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：352044</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">5.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/1608336.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">狼王梦/动物小说大王沈石溪品藏书系</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：335708</div>
										<div class="cb"></div> </a></li>
								<li id="my_ranktab_38" class="my_ranktab_content fs-14  dn">
									<a class="db clearfix mouseenter on-mouse bb-1-e8"
									target="_blank" href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/first-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/1608336.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">狼王梦/动物小说大王沈石溪品藏书系</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：335708</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/second-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/1971599.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">父与子全集(彩色双语版)/常青藤绘本馆</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：313431</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/third-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/3211727.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">中华上下五千年(共4册)</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：282797</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">4.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/1628401.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">长袜子皮皮(美绘版)/林格伦作品选集</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：277953</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">5.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/0240849.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">三毛流浪记全集(彩图注音读物)</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：231329</div>
										<div class="cb"></div> </a></li>
								<li id="my_ranktab_34" class="my_ranktab_content fs-14  dn">
									<a class="db clearfix mouseenter on-mouse bb-1-e8"
									target="_blank" href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/first-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/2375506.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">我们仨</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：535470</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/second-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/2353163.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">活着/余华作品</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：417650</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">
											<img
												src="img/third-block.svg"
												alt="" width="20" class="pr tp-4" />
										</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/1561512342.jpg);"></span>
											</label>
										</p>
										<div class="fl wd-200 to-hd">夏洛的网</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：297812</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">4.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/2417879.jpg);"></span>
												<span class="tip-box"> <img
													src="img/20190627092413576.png">
											</span> </label>
										</p>
										<div class="fl wd-200 to-hd">看见</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：254961</div>
										<div class="cb"></div> </a> <a
									class="db clearfix mouseenter  bb-1-e8" target="_blank"
									href="#">
										<div class="fl wd-30 ta-lf">5.</div>
										<p class="fl wd-100 ht-100 oh mr-10 scale-box">
											<label class="db pd-5 scale oh pr"> <span
												class="img db square-box one-one bgimg lazyload hidden"
												data-bgimg="background-image: url(img/3006051.jpg);"></span>
												<span class="tip-box"> <img
													src="img/20190701140914689.png	">
											</span> </label>
										</p>
										<div class="fl wd-200 to-hd">乖摸摸头</div>
										<div class="fr ta-rt cl-6 wd-120 to-hd">销量：237639</div>
										<div class="cb"></div> </a></li>

							</ul>
						</div></li>

					<script>
						$(function() {
							//热销榜切换
							$(".ranking_list").click(
									function() {
										$(this).addClass('on-tab');
										$(this).siblings()
												.removeClass('on-tab');

										var tabId = $(this).attr("data-id");
										$("#my_ranktab_" + tabId)
												.fadeIn("slow");
										$("#my_ranktab_" + tabId).siblings(
												".my_ranktab_content").hide();
									});
						});
					</script>

					<div class="cb"></div>

				</ul>

			</div>

			<!-- 【板块】 分类频道 样式1 plate_type=15 template_id=52-->

			<!-- 板块 -->
			<div class="anchor-box" id="21" data-template-id="52" plate-id="21"
				plate-type="15"></div>

			<!-- 【板块】 分类频道 样式1 plate_type=15 template_id=52-->

			<!-- 板块 -->
			<div class="anchor-box" id="4" data-template-id="52" plate-id="4"
				plate-type="15"></div>

			<!-- 广告图集 之 三张均分广告图 module_type=1 template_id=38-->

			<!-- 【板块】 分类频道 样式1 plate_type=15 template_id=52-->

			<!-- 板块 -->

			<!-- 广告图集 之 三张均分广告图 module_type=1 template_id=38-->

			<!-- 【板块】 分类频道 样式1 plate_type=15 template_id=52-->

			<!-- 板块 -->
			<div class="anchor-box" id="22" data-template-id="52" plate-id="22"
				plate-type="15" style="width: 83%; margin: auto;">


				<div class="mb-20 tab-box">

					<!-- 分类 频道 标头-->
					<div class="red-border">
						<div class="context">
							<label class="fl fs-18 mr-15"> <img
								class="icon-book-line2 mr-4 fs-24 pr tp-5" width="25"
								height="25"
								src="img/tuijian.png">
								图书推荐 </label>
							<p class="fr">
								<a class="red cp cl-3 pd-0410 mr-10  my_tab" data-id="6711"
								id="cid" >换一批</a>
								
							</p>
							<div class="cb"></div>
						</div>
					</div>
					<!-- 分类 频道 标头-->

					<!-- 模块加载区域-->
					<!--分类频道 样式2 module_type=16 template_id=12-->

					<div class="my_tab_content bc-f " id="my_tab_6733">

						<!-- 商品列表1  背景图片问题-->

						<div class="clearfix">

							<ul id="bkid" class="wd-1000 fr mouseenter-box productlist-2 clearfix box-shadow">
													<c:forEach items="${books}" var="boId">
									<li class="wd-20p ta-ct fl scale-box" style="float:left;">
										<div class="pd-5 mouseenter mouseleave bd-2-f">
											<div class="scale oh pd-20 pr">

												<a 
													class="db square-box one-one bgimg lazyload hidden"
													href="BookServlet?bookid=${boId.bookid }&opr=xq">
													<img src="${boId.bookimg }" />
												</a>
											</div>
											<div class="context">
												<a class="db cl-6 ht-36 lh-18 oh mt-2" 
													href="BookServlet?bid=101266135&opr=xq">${boId.bookname }</a>
												<p class="lh-40">
													<span class="fs-16 cl-rd-l ">¥${boId.price }</span> <span
														class="cl-9">|</span>
													<del class="fs-12 cl-9">¥${boId.discount}</del>
												</p>
											</div>
										</div></li>
								</c:forEach>
							</ul>
						</div>



					</div>

					<!--一行6个商品，可多行 module_type=3 template_id=44 -->

					<!-- 模块加载区域-->

				</div>

			</div>

		</div>
	</div>

	<!-- 左侧导航 -->

	<!-- 右侧导航 -->
	<div class="rightmenu-box">
		<div class="rightmenu">
			<a href="javascript:void()" onclick="openQimooChat();"
				class="cl-9 bt-1-8f hover download" title="联系客服"> <span
				class="icon-zzzzzzzserver-line cl-9 fs-20"></span>
				<p class="fs-12 lh-1p2">
					联<br>系<br>客<br>服
				</p> </a> <a target="_blank" class="cl-9 bt-1-8f hover"
				href="//www.bookuu.com/shopping/cart.php" title="购物车"> <span
				class="icon-cart-block cl-9 fs-20">&#xe90e;</span>
				<p class="fs-12 lh-1p2">
					购<br>物<br>车
				</p> </a> <a class="cl-9 bt-1-8f hover checkin" href="javascript:void(0);"
				title="签到"> <span class="icon-write-line cl-9 fs-25">&#xe95f;</span>
				<p class="fs-12 lh-1p2">
					签<br>到
				</p> </a> <a target="_blank" class="cl-9 bt-1-8f hover"
				href="//www.bookuu.com/download.php" title="下载APP"> <span
				class="icon-phone-line cl-9 fs-20">&#xe933;</span>
				<p class="fs-12 lh-1p2">
					下<br>载<br>APP
				</p> </a>
		</div>
		<div class="action-totop">
			<span class="icon-triangle-block cl-f fs-11">&#xe957;</span>
			<p>TOP</p>
		</div>
	</div>

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
	
	<script type="text/javascript">
	
	$("#cid").click(function(){
	
	$("#bkid").html(" ");
	
	var url="AjaxServlet";
		$.get(url,null,function(data){
		for ( var int = 0; int < data.length; int++) {
			
		  var tableHtml="<li class='wd-20p ta-ct fl scale-box' style='float:left;'>";
			tableHtml+="<div class='pd-5 mouseenter mouseleave bd-2-f'>";
			tableHtml+="<div class='scale oh pd-20 pr'>";
			tableHtml+="<a class='db square-box one-one bgimg lazyload hidden' href='BookServlet?usid="+${uid.uid}+"&bookid="+data[int].bookid+"&opr=xq'>";
			tableHtml+="<img src='"+data[int].bookimg+"' />";
			tableHtml+="</a>";
			tableHtml+="</div>";						
			tableHtml+="<div class='context'>";							
			tableHtml+="<a class='db cl-6 ht-36 lh-18 oh mt-2' href='BookServlet?bid=101266135&opr=xq'>";
			tableHtml+=data[int].bookname;
			tableHtml+="</a>";
			tableHtml+="<p class='lh-40'>";									
			tableHtml+="<span class='fs-16 cl-rd-l'>¥";
			tableHtml+=data[int].price;
			tableHtml+="</span>";	
			tableHtml+="<span class='cl-9'>|";								
			tableHtml+="</span>";						
			tableHtml+="<del class='fs-12 cl-9'>¥";
				tableHtml+=data[int].discount;
			tableHtml+="</del>";									
			tableHtml+="</p>";
			tableHtml+="</div>";							
			tableHtml+="</div>";						
			tableHtml+="</li>";	
				$("#bkid").append(tableHtml);
		}
		
		},"json");
	
	});
	

	</script>
	
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

</body>

</html>
<link
	href="https://bnmpstyle.bookuu.com/www/css/jcountdown/jcountdown.css"
	rel="stylesheet" type="text/css">
<script type="text/javascript">
	// 锚点
	$('.anchor-action li').anchor();

	// 店铺信息
	var shop_name = "博库体验店";
	var shop_demo = "博库体验店";
	var shop_signs = "https://bnmpstyle.bookuu.com/wap/images/default_shop.png";

	$(function() {
		// banner
		$('.flexslider.banner').flexslider({
			animation : "slide",
			start : function(slider) {
			}
		});

	});

	//用户信息
	$(function() {
		//店铺信息
		$
				.ajax({
					type : "post",
					url : "/ajax/shop.php",
					dataType : "json",
					success : function(data) {
						shop_str = '';
						if (data.code == "0000") {
							shop_name = data.info.shop_name;
							shop_demo = data.info.shop_demo;
							shop_signs = data.info.shop_signs;
						}
						$("#www_user_shop_signs").attr('src', shop_signs);
						$("#www_user_shop_signs").attr('alt', shop_demo);
						$("#www_user_shop_name").html(shop_name);

						//分享
						window._bd_share_config = {
							common : {
								bdSnsKey : {
									"tsina" : "1573124136"
								},
								bdText : shop_name,
								bdDesc : shop_demo,
								bdUrl : location.href,
								bdPic : shop_signs,
							},
							share : [ {
								"bdSize" : 16
							} ]
						}
						with (document)
							0[(getElementsByTagName('head')[0] || body)
									.appendChild(createElement('script')).src = '/static/api/js/share.js?v=89860593.js?cdnversion='
									+ ~(-new Date() / 36e5)];

						$("#www_pc_title").html(data.info.pc_title);
					},
					complete : function() {

					}
				});
		//        /*
		//限时抢购信息
		$
				.ajax({
					type : "post",
					url : "/ajax/rushtime.php",
					dataType : "json",
					success : function(data) {
						var rs_str = '';
						if (data.code == "0000") {
							if (data.info.isstart != 0 && data.info.xsqg_limit) {

								rs_str += '<div class="mb-10">';
								rs_str += '<div class="flashsale"><div class="context"><p class="fl ml-20">';
								rs_str += '<img src="https://bnmpstyle.bookuu.com/www/images/icon/flashsale.png" alt="限时抢购" height="25" class="mt-10 hidden"></p>';
								rs_str += '<a class="fl ml-20 cl-rd-l" href="/rushbuy.php">总有你想不到的低价<span class="icon-aoorw-line cl-rd-l ml-5 pr tp-2 fs-15">&#xe902;</span></a>';

								rs_str += '<p class="fr"><span class="fr cl-rd-l">后结束抢购</span><div class="fr pd-5"><div class="countdown"></div></div><a class="fr cl-rd-l" style="cursor: default;">';

								if (data.info.xsqg_time) {
									rs_str += '当前场次';
								} else {
									rs_str += '暂无场次';
								}
								rs_str += '</a><div class="cb"></div></p>';

								rs_str += '<div class="cb"></div></div></div>';

								rs_str += '<div class="flexslider product-six box-shadow"><ul class="slides mouseenter-box">';

								var list = data.info.xsqg_limit;
								//                        console.log(11,list.length,list[0].goods_id);
								//                        /*
								for ( var i = 0; i < list.length; i++) {
									rs_str += '<li class="ta-ct scale-box">';
									rs_str += '<div class="mg-5 mouseenter mouseleave">';
									rs_str += '<div class="oh scale pd-10">';
									rs_str += '<a class="db square-box one-one bgimg lazyload hidden" target="_blank" data-bgimg="background-image: url('
											+ list[i].goods_pic_w210q75
											+ ');" href="/rushbuy.php?fromid='
											+ list[i].goods_id
											+ '&stime='
											+ data.info.dqqg_time + '"></a>';
									rs_str += '</div>';
									rs_str += '<div class="context">';
									rs_str += '<a class="db cl-6 ht-36 lh-18 oh mt-5" target="_blank" href="/rushbuy.php?fromid='
											+ list[i].goods_id
											+ '&stime='
											+ data.info.dqqg_time
											+ '">'
											+ list[i].goods_name + '</a>';
									rs_str += '<p class="fs-12 cl-9 lh-25 to-hd">';
									if (list[i].spuinfo) {
										//                                rs_str += list[i].spuinfo.2.val;
									}
									rs_str += '</p>';
									rs_str += '<div>';
									rs_str += '<span class="fs-16 cl-rd-l ">¥';
									if (list[i].activity_price) {
										rs_str += list[i].activity_price;
									} else {
										rs_str += list[i].activity.single.activity_price;
									}

									rs_str += '</span>';
									rs_str += '<span class="cl-9">|</span>';
									rs_str += '<del class="fs-12 cl-9">¥'
											+ list[i].market_price + '</del>';
									rs_str += '</div></div></div></li>';
								}
								//                        */
								//                        /*
								rs_str += '</ul></div></div>';
								//                        */

								//                        console.log(111,222);
								//                        var _str = "1111111";
								$(".index_rush_time_zone").html(rs_str);
								//                        console.log(333);
								//                        $("#s331").attr('src',);

								var url = 'https://bnmpstyle.bookuu.com/www/js/jcountdown/jquery.jcountdown.min.js';
								var script = document.createElement('script');
								script.type = "text/javascript";

								if (script.readyState) { //IE
									script.onreadystatechange = function() {
										if (script.readyState == "loaded"
												|| script.readyState == "complete") {
											script.onreadystatechange = null;
										}
									};
								} else { //Others
									script.onload = function() {
										var b = new Date;
										var b = -b.getTimezoneOffset() / 60;
										var i = data.info.end_time;
										var config = {
											timeText : i, //倒计时时间
											timeZone : b, //时区
											style : "flip", //显示的样式，可选值有flip,slide,metal,crystal
											color : "black", //显示的颜色，可选值white,black
											width : 180, //倒计时宽度
											textGroupSpace : 20, //天、时、分、秒之间间距
											textSpace : 0, //数字之间间距
											reflection : false, //是否显示倒影
											reflectionOpacity : 10, //倒影透明度
											reflectionBlur : 0, //倒影模糊程度
											dayTextNumber : 3, //倒计时天数数字个数
											displayDay : false, //是否显示天数
											displayHour : !0, //是否显示小时数
											displayMinute : !0, //是否显示分钟数
											displaySecond : !0, //是否显示秒数
											displayLabel : false, //是否显示倒计时底部label
											onFinish : function() {
											}
										};
										$(".countdown").jCountdown(config);
									};
								}

								//                        script.onerror = loadError;

								script.src = url + '?' + 'time='
										+ Date.parse(new Date());
								document.body.appendChild(script);

								//商品轮播 列表 - 大家都在看
								$('.flexslider.product-six').flexslider({
									animation : "slide",
									animationLoop : false,
									itemWidth : 200,
									itemMargin : 0,
									controlNav : ''
								});
							}
						}
					},
					complete : function() {

					}
				});
		//        */
	});
</script>