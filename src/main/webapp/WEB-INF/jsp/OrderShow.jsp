<%@ page language="java" import="java.util.*" pageEncoding="Utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
		<meta name="description" content="博库网品种丰富的中文网上书店，160万种图书在线热销！图书、音像、软件正品行货超低折扣，全场免邮，支持全国货到付款。" />
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
		<title id="www_pc_title">我的订单-博库体验店</title>
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
						<a class="hover cl-6 to-hd" href="#"
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
							class="icon-cart-block mr-10 cl-a9 pr tp-3 fs-18">&#xe90e;</span>
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
			// 滚动交互
			$(window).on('scroll', function() {
				var _scroll = $(window).scrollTop();
				if(_scroll >= 200) {
					$('#search-container').addClass('active');
				} else {
					$('#search-container').removeClass('active');
				}
			});
			$(".tosearch").click(function() {
				var key = $(this).parent().find(".searchkey").val();
				if(key == '') {
					key = $(this).parent().find(".searchkey").attr('placeholder');
				}
				location.href = '//www.bookuu.com/search.php?k=' + key;
			});

			function getKeyMore(_associateBox, _key) {

				console.log('开始请求', _key);
				//获取关联词
				$.ajax({
					type: "post",
					url: "/goods/search.php",
					data: {
						act: "getMoreKeys",
						keyword: _key
					},
					dataType: "json",
					success: function(data) {
						if(data.length > 0) {
							_associateBox.empty();
							var str = "";
							for(var i = 0; i < data.length; i++) {
								var search_url = '//www.bookuu.com/search.php?k=' + data[i].key;
								str += '<li class="associate-content">' +
									'<a class="fl" href="' + search_url + '">' + data[i].akey + '</a>' +
									'<label class="fr delete"><span class="icon-close-line fr">&#xe919;</span></label>' +
									'<div class="cb"></div>' +
									'</li>';
							}
							_associateBox.append(str);
						}
					}
				});
			}

			function getHistoryKeys(_associateBox, _key) {
				console.log('历史记录', _key);
				//获取最近搜索
				$.ajax({
					type: "post",
					url: "/goods/search.php",
					data: {
						act: "getHistoryKeys",
						keyword: _key
					},
					dataType: "json",
					success: function(data) {
						if(data.length > 0) {
							_associateBox.empty();
							var str = '<li class="associate-title">' +
								'<div class="fl text">最近搜索</div>' +
								'<label class="fr delete all"><span class="icon-delete-line">&#xe91d;</span></label>' +
								'<div class="cb"></div>' +
								'</li>';
							for(var i = 0; i < data.length; i++) {
								var search_url = '//www.bookuu.com/search.php?k=' + data[i].key;
								str += '<li class="associate-content">' +
									'<a class="fl" href="' + search_url + '">' + data[i].key + '</a>' +
									'<label class="fr delete"><span class="icon-close-line fr">&#xe919;</span></label>' +
									'<div class="cb"></div>' +
									'</li>';
							}
							_associateBox.append(str);
						}
					}
				});
			}
			var timer1 = ''; //定时器1
			var timer2 = ''; //定时器2

			$('body').on('hover', '.associate-box li.associate-content', function() {
				$('.associate-box li.associate-content').removeClass('active');
				$(this).addClass('active');
			});

			//输入完成回车搜索
			$('body').on('keyup focus', '.search-box input', function(event) {
				var e = event || window.event || arguments.callee.caller.arguments[0];

				var _this = $('.search-box input');
				var _inputId = _this.attr("id");
				var _key = _this.val();
				var _associateContainer = _this.parents('.associate-container');
				var _associateBox = _this.siblings('.associate-box');
				var _associateTitle = _associateBox.find('.associate-title'); //最近搜索
				var _associateLi = $('.associate-box li');
				var _associateLiActive = $('.associate-box li.active');
				// 键盘向上
				if(e && e.keyCode == 38) {
					var _associateTitleLength = _associateTitle.length;
					var _associateContentLength = _associateLi.length;
					var _associateContentActiveLength = _associateLiActive.length;
					var _index = _associateLiActive.index();
					_associateLi.removeClass('active');
					_index = _index - 1;
					// 历史记录
					if(_associateTitleLength == 0) {
						// 第一次focuse
						if(_index == -1) _index = _associateContentLength - 1;
						if(_associateContentActiveLength == 0) _index = 0;
					} else {
						// 第一次focuse
						if(_index == 0) _index = _associateContentLength - 1;
						if(_associateContentActiveLength == 0) _index = 1;

					}
					_associateLi.eq(_index).addClass('active');
					_this.val(_associateLi.eq(_index).find('a').text());

					return false;
				}
				// 键盘向下
				if(e && e.keyCode == 40) {
					var _associateTitleLength = _associateTitle.length;
					var _associateContentLength = _associateLi.length;
					var _associateContentActiveLength = _associateLiActive.length;
					var _index = _associateLiActive.index();
					_associateLi.removeClass('active');
					_index = _index + 1;
					// 历史记录
					if(_associateTitleLength == 0) {
						if(_associateContentActiveLength == 0 || _index == _associateContentLength) _index = 0;
					} else {
						if(_associateContentActiveLength == 0 || _index == _associateContentLength) _index = 1;
					}
					_associateLi.eq(_index).addClass('active');
					_this.val(_associateLi.eq(_index).find('a').text());

					return false;
				}
				//清空
				_associateBox.empty();
				// 文字为空，显示搜索记录
				if(_key == '') {
					//延迟xx
					if(timer2) {
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
					if(timer1) {
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
				if(e && e.keyCode == 13) {
					if(_key == '') {
						_key = _this.attr('placeholder');
						_this.val(_key);
					}
					location.href = '//www.bookuu.com/search.php?k=' + _key;
				}
			});
			$('.search-box input').on('blur', function() {
				blurFunc();
			});
			// 删除历史记录
			$('body').on('click', '.associate-box label.delete', function() {
				var _this = $(this);
				var _associateBox = _this.parents('.associate-box');
				var _input = _this.parents('.search-box').find('input');
				var _associateContent = _this.parents('.associate-content');
				var _associateTitle = _associateBox.find('.associate-title');
				var keyword = _associateContent.children("a").html();
				if(_this.hasClass('all')) {
					_associateBox.empty();
					keyword = '';
				}
				_associateContent.remove();
				var _contentLength = _associateBox.find('.associate-content').length;
				if(_contentLength == 0) {
					_associateTitle.remove();
					_associateBox.css('display', 'none');
				} else {
					//                _input.focus();
				}
				//删除记录
				$.ajax({
					type: "post",
					url: "/goods/search.php",
					data: {
						act: "deleteKeys",
						keyword: keyword
					},
					dataType: "json",
					success: function(data) {

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
		<!-- 首页导航交互 -->
		<div id="index-nav">
			<div class="wd-1200 ma">
				<a class="db logo-box fl" href="https://www.bookuu.com/index.php">
					<img data-src="https://bnmpstyle.bookuu.com/www/images/icon/logo.png" alt="" width="210" class="db visible" src="https://bnmpstyle.bookuu.com/www/images/icon/logo.png">
				</a>
				<!-- 搜索 -->
				<div class="fl search-box">
					<input type="text" placeholder="手机打开了分的积分" class="fl bd-n">
					<p class="fr icon-search-line cl-f fs-40" onclick="window.location.reload();"></p>
					<div class="cb"></div>
				</div>
				<div class="fr ta-rt">
					<a class="fs-16 bd-1-d br-4 pd-0030 db" href="https://www.bookuu.com/shopping/cart.php"><span class="icon-cart-block mr-10 cl-a9 pr tp-3 fs-18"></span>我的购物车</a>
				</div>
				<div class="cb"></div>
			</div>
		</div>
		<div class="content">
			<div class="personal-center mt-20">

				<div class="personal-list-box bd-1-e8 fl">
					<div class="personal-title">个人中心</div>

					<ul class="personal-list-name bt-1-e8 pb-16">
						<li class="item active">
							<a href="/user/index.php">我的信息</a>
						</li>
						<li class="item">
							<a href="/user/orders/order.php">我的订单</a>
						</li>
						<li class="item">
							<a href="/user/coupon.php">我的优惠券</a>
						</li>
					
					</ul>

				</div>

				<script type="text/javascript">
					var uri = '/user/orders/order.php';
					if(!uri) {
						uri = '/cashier/deposit.php';
					}
					$('.active').removeClass('active');
					$('.personal-list-box a').each(function() {
						var $this = $(this);
						var href = $this.attr('href');
						if(href.trim() == uri.trim()) {
							$this.parent('li').addClass('active');
						}
					});
				</script>
				<div class="personal-list-item ml-10 bd-1-e8 fl">
					<ul>
						<li class="list-item active">
							<div class="myorder-info mb-20">
								<ul class="myorder-item-tab mt-10">
									<li class="item br-1-e8 active">
										<a href="?act=all" data-type="all">全部订单</a>
									</li>
									<li class="item br-1-e8 ">
										<a href="?act=wait_pay" data-type="wait_pay">待付款</a>
									</li>
									<li class="item br-1-e8 ">
										<a href="?act=wait_send" data-type="wait_send">待发货</a>
									</li>
									<li class="item br-1-e8 ">
										<a href="?act=been_send" data-type="been_send">待收货</a>
									</li>
									<li class="item br-1-t ">
										<a href="?act=wait_comment" data-type="wait_comment">待评价</a>
									</li>
									<li class="cb"></li>
								</ul>
								<div class="scroll mt-10">
									<div class="scroll-x"></div>
								</div>
								<ul class="myorder-item mt-14">
									
									<c:forEach items="${ors}" var="ors">
									
									<li class="item active">
										<table class="myorder-info-table bd-1-e8 mt-20" border="0" cellpadding="0" cellspacing="0">
											<tbody>
												<tr class="info-title ta-ct">
													<td class="item bb-1-e8" width="12%">博库体验店</td>
													<td class="item bb-1-e8" width="38%" colspan="3">订单号:&nbsp;<span>${ors.orderid }</span></td>
													<td class="item bb-1-e8" width="38%" colspan="3">下单时间:&nbsp;<span>${ors.orderDate }</span></td>
													<td class="item bb-1-e8">&nbsp;</td>
												</tr>
												
												<c:forEach items="${oritem }" var="oitem">
												<c:if test="${oitem.ordersid==ors.orderid }">
												<tr class="info-text">
													<td class="item bb-1-e8">
														<a href="#">
														<img src="${oitem.bimg }" width="80" height="90"/>
														</a>
													</td>
													<td class="item bb-1-e8 pt-18 va-tp" width="174">${oitem.bname}</td>
													<td class="item bb-1-e8 ta-ct" width="120">
														
														<p>¥${oitem.price}</p>
													</td>
													
													<td class="item bb-1-e8 br-1-e8" width="90">x&nbsp;${oitem.num}</td>
												
												
													
													<td class="item br-1-e8 ta-ct" width="148">
														<p><b class="fs-16 cl-rd">¥${ors.totoalMoney }</b><br/><span class="cl-9">(含运费：¥0.00)</span></p>
													</td>
													<td class="item br-1-e8 ta-ct" width="148" >
														<p>${ors.state}</p>
														<p>
															<a class="cl-bl-l" href="order_detail.php?order_id=1908190921335333" title="订单详情">订单详情</a>
														</p>
													</td>
													<td class="item ta-ct" width="148" colspan="2">
														<a class="btn-buy wd-60 ma" href="/cashier/pay.php?product_id=1908190921335333" title="立即付款">立即付款</a>
														<a class="btn-cancel wd-60 ma" href="javascript:void(0);" onclick="cancel(1908190921335333,197.49,  this)" title="取消订单">取消订单</a>
													</td>
												</tr>
													 	</c:if>
													</c:forEach> 
											</tbody>
										</table>
									</li>
									</c:forEach>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="cb"></div>

				<div class="mt-10">
					<div class="page-number-group tcdPageCode fr">

					</div>
					<div class="cb"></div>
				</div>
			</div>
			<!-- 猜你喜欢 -->
			<!--一组或者多个商品，带标题 module_type=3 template_id=7 -->

			<script type="text/javascript">
				$(function() {
					//商品轮播 列表 - 大家都在看
					$('.flexslider.product-six').flexslider({
						animation: "slide",
						animationLoop: false,
						itemWidth: 200,
						itemMargin: 0,
						controlNav: ''
					});
				});
			</script>

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
				"left": {
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
				success: function(data) {
					var user_str = '';
					if(data.code == "0000" && data.info.is_login == 1) {
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
								"用户UID": data.info.userid,
								"用户名称": data.info.name,
								"手机号码": data.info.mobilephone
							}
						};

						chatflag = 1;

						var dq_goods_id = "";

						if(dq_goods_id != "") {
							//扩展信息
							m7CardInfo = {
								"left": {
									"url": "https://bnmppic.bookuu.com/" // 左侧图片地址，可不填
								},
								"right1": {
									"text": "", // 首行文字内容，展示时超出两行隐藏，卡片上单行隐藏
									"color": "#595959", // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
									"fontSize": 12 // 字体大小， 默认12 ， 请传入number类型的数字
								},
								"right2": {
									"text": "", // 第二行文字内容，展示时超出两行隐藏，卡片上单行隐藏
									"color": "#595959", // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#595959
									"fontSize": 12 // 字体大小， 默认12 ， 请传入number类型的数字
								},
								"right3": {
									"text": "¥", // 第三行文字内容，展示时超出两行隐藏，卡片上单行隐藏
									"color": "#ff6b6b", // 字体颜色，支持十六位 #ffffff 格式的颜色，不填或错误格式默认#ff6b6b
									"fontSize": 14 // 字体大小， 默认14 ， 请传入number类型的数字
								},
								"extraInfos": [], // 额外信息，访客不可见，座席点击卡片上的更多可见，可不填，字符串形式的文本数组
								"url": "//www.bookuu.com/detail.php?id=" // 点击可跳转的链接
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

		<script type='text/javascript' src='https://webchat.7moor.com/javascripts/7moorInit.js?accessId=92464560-3f16-11e9-8a25-8d8585556f17&autoShow=false&language=ZHCN' async='async'>
		</script>

		<script type="text/javascript">
			function openQimooChat() {
				if(chatflag == 1) {
					console.log(qimoClientId);
					console.log(m7CardInfo);
				}
				window.qimoChatClick();
			}
		</script>
		<script>
			$(function() {
				//频道 tab切换
				$(".my_tab").click(function() {
					var tabId = $(this).attr("data-id");
					$(this).addClass('on-click');
					$(this).siblings().removeClass('on-click');

					$("#my_tab_" + tabId).removeClass("dn");
					$("#my_tab_" + tabId).siblings(".my_tab_content").addClass('dn');

					//tablazy 图片加载
					let id = "#my_tab_" + tabId + ' img'
					 slidingImgs = $(id);
					for( i = 0; i < slidingImgs.length; i++) {
						// 遍历操作
						if(slidingImgs[i].getAttribute('data-srctaplazy')) {
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

			$(function() {

				//公共：加入收藏
				$('.collect').on('click', function() {
					var _span = $(this).find('span');

					var goods_id = $(this).attr('goods-id');
					if(_span.hasClass('icon-star-line')) {
						$.ajax({
							type: "get",
							url: "/ajax/collect.php",
							data: {
								act: 'collect',
								type: 'add',
								id: goods_id
							},
							dataType: "json",
							success: function(data) {
								if(parseInt(data.status) == 1) {
									alert(data.info);

									_span.removeClass('icon-star-line').addClass('icon-star-block').html('&#xe945;');
									$('.collect').removeClass('bd-1-a cl-9').addClass('bd-1-bl-d cl-bl-l');

								} else if(parseInt(data.status) == 404) {
									window.location.href = data.info;
								} else {
									alert(data.info);
								}
							}
						});
					} else {
						confirm('', '你要取消收藏该商品吗?', '', function(res) {
							if(res) {
								$.ajax({
									type: "get",
									url: "/ajax/collect.php",
									data: {
										act: 'collect',
										type: 'delete',
										id: goods_id
									},
									dataType: "json",
									success: function(data) {
										if(parseInt(data.status) == 1) {
											alert(data.info);

											_span.removeClass('icon-star-block').addClass('icon-star-line').html('&#xe946;');
											$('.collect').removeClass('bd-1-bl-d cl-bl-l').addClass('bd-1-a cl-9');

										} else if(parseInt(data.status) == 404) {
											window.location.href = data.info;
										} else {
											alert(data.info);
										}
									}
								});
							} else {
								_span.removeClass('icon-star-line').addClass('icon-star-block').html('&#xe945;');
								$('.collect').removeClass('bd-1-a cl-9').addClass('bd-1-bl-d cl-bl-l');
							}
						});
					}

				});

				getCartNum();

				//公共：加入购物车
				$('.addcart').on('click', function() {
					var goods_id = $(this).attr('goods-id');
					var number = $(this).attr('goods-number');
					$.ajax({
						type: "post",
						url: "/ajax/cart.php?act=add",
						data: {
							id: goods_id,
							number: typeof(number) == 'undefined' ? 1 : number
						},
						dataType: "json",
						success: function(data) {
							if(parseInt(data.status) == 404) {
								window.location.href = data.info;
							} else {
								if(data.status == 200) {
									$('.cart_num').addClass('bc-rd-d pd-0005').html(data.list_number);
								}
								alert(data.info);
							}
						},
						error: function() {
							alert('加入失败');
						}
					});
				});

				//公共：签到
				$('.checkin').on('click', function() {
					$.ajax({
						type: "post",
						url: "/ajax/checkin.php?act=signed",
						data: {},
						dataType: "json",
						success: function(data) {
							if(parseInt(data.status) == 404) {
								window.location.href = data.info;
							} else {
								alert(data.info);
							}
						},
						error: function() {
							alert('签到失败');
						}
					});
				});

			});

			//获取购物车的数量
			function getCartNum() {
				var num = getCookie('gwshoppingcart');
				if(num == null) {
					//公共：购物车数量统计
					$.ajax({
						type: "get",
						url: "/ajax/cart.php?act=count",
						dataType: "json",
						success: function(data) {
							if(parseInt(data.status) == 200 && parseInt(data.list_number) > 0) {
								$('.cart_num').addClass('bc-rd-d pd-0005').html(data.list_number);
							}
						}
					});
				}
				if(num > 0) {
					$('.cart_num').addClass('bc-rd-d pd-0005').html(num);
				}
			}

			function getCookie(name) {
				var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
				if(arr = document.cookie.match(reg))
					return unescape(arr[2]);
				else
					return null;
			}

			// 进度条
			$('.progress-box').progress();
		</script>

	</body>

</html>
<script type="text/javascript">
	/******************************
	     我的订单选项卡
	     *******************************/
	$('.myorder-item>.item.active .goodlist-pic').layzload({
		imgshow: 300
	});
	change_item();

	function change_item() {
		var act = 'all';
		if(!act) {
			act = 'all';
		}
		switch(act) {
			case 'all':
				$('.scroll-x').css('left', '0');
				break;
			case 'wait_pay':
				$('.scroll-x').css('left', '151px');
				break;
			case 'wait_send':
				$('.scroll-x').css('left', '302px');
				break;
			case 'been_send':
				$('.scroll-x').css('left', '453px');
				break;
			case 'wait_comment':
				$('.scroll-x').css('left', '604px');
				break;
			default:
				$('.scroll-x').css('left', '0');
				break;
		}
	}

	//取消订单
	function cancel(order_id, money, obj) {
		if(!order_id) {
			return;
		}

		if(!money) {
			money = '0.00';
		}

		var $this = $(obj);
		$this.removeAttr('onclick');

		$.post(
			'order.php', {
				act: 'cancel',
				order_id: order_id,
				money: money
			},
			function(data) {
				if(data) {
					alert(data.message);
					if(data.status) {
						setTimeout(function() {
							window.location.reload();
						}, 2000);
					}
				}
			}, 'json');

	}

	function again(order_id) {
		if(!order_id) {
			return;
		}

		$.getJSON("order.php", {
				act: 'again',
				order_id: order_id
			},
			function(data) {
				alert(data.message);

				if(data.status) {
					setTimeout(function() {
						window.location.href = data.url;
					}, 2000);
				}
			}
		)
	}

	function receipt(id, obj) {

		$.getJSON("order.php", {
				act: 'receipt',
				order_id: id
			},
			function(data) {

				alert(data.message);
				if(data.status) {
					setTimeout(function() {
						window.location.reload();
					}, 2000);
				}
			}
		)
	}
</script>
