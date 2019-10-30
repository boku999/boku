<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="/statics/css/car.css" />
		<link rel="stylesheet" type="text/css" href="/statics/css/myframe.css" />
		<link rel="stylesheet" type="text/css" href="/statics/css/public.css" />
		<link rel="stylesheet" type="text/css" href="/statics/css/component.css" />
		<link rel="stylesheet" type="text/css" href="/statics/css/module.css" />
		<link rel="stylesheet" type="text/css" href="/statics/css/flexslider.css" />
		<script type="text/javascript" src="/statics/js/flexslider.js"></script>
	</head>
	<script src="/statics/js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">$(function() {
	//全选与全不选
	$(".allCheckBox").change(function() {
		if($(this).is(":checked")) {
			$("#myform :checkbox").prop("checked", true);
		} else {
			$("#myform :checkbox").prop("checked", false);
		}
		totalCount();
	});
	//设置全选框效果保持一致
	$("input:not(.allCheckBox):checkbox").change(function() {
		var checkLen = $("input:not(.allCheckBox):checkbox").length;
		var check = $("input:not(.allCheckBox):checked").length;
		if($(this).is(":checked")) {
			if(check == checkLen) {
				$(".allCheckBox").prop("checked", true);
			}
		} else {
			$(".allCheckBox").prop("checked", false);
		}
		totalCount();
	});
	//删除单个
	$(".del").click(function() {
		if(confirm("确定要删除么？")) {
			//					$(this).parent().parent().prev().remove();
			$(this).parent().parent().remove();
		}
		totalCount();
	});
	//删除所选
	$("#deleteAll").click(function() {
		var delSize = $("#myform :checked:not(.allCheckBox)").length; //选中的个数
		var del = $("#myform :checked:not(.allCheckBox)"); //所选对象
		if(delSize == 0) {
			alert("请先选择要删除的商品！");
		} else {
			if(confirm("确定要删除所选商品么？")) {
				$(del).each(function() {
					/*$(this).parent().parent().prev().remove();*/
					$(this).parent().parent().remove();
					$(".allCheckBox").prop("checked", false);
				});
			}
		}
		totalCount();
	});
	//计算总价
	function totalPrice() {
		var $tr = $(".page_table").find("tr[class]");
		var total = 0; //总价				
		$tr.each(function(i, dom) {
			var num = $(dom).find(".num_input").val(); //商品数量
			var util = $(dom).find(".cart_td_5").text();
			var price = num * util; //小计					
			$(dom).find(".cart_td_7").html(Math.floor(price)); //显示商品小计						
			total+=price;
		});
		$("#total_price").html(Math.floor(total));
	}
	totalPrice();
	totalCount();
	
	function totalCount(){
		var $che=$(".cart_td_1 :checkbox");
		var cou=0;
		$che.each(function(i,dom){
			if($(".cart_td_1 :checked")){
				cou=$(".cart_td_1 :checked").length;
			}		
		});		
		$("#already").html(cou);	
	}
	//设置选中数量
	/* $(".cart_td_1 :checkbox").change(function() {
		totalPrice();
		var count = $(".cart_td_1 :checked").length;
		$("#already").html(count);
	}); */
	//商品增加减少	flag为true增加，反之为false
	function changeNum(dom, flag) {
		var $input = $(dom).parent().find("input");
		var value = $input.val();
		if(flag) {
			value++;
		} else {
			value--;
			if(value < 1) {
				value = 1;
			}
		}
		$input.val(value);
		totalPrice();
	}
	$(".minus").click(function() {
		changeNum(this, false);
	});
	$(".add").click(function() {
		changeNum(this, true);
	});

	//移入收藏
	/*$(".move").toggle(function() {
		$(this).html("取消收藏");
	}, function() {
		$(this).html("移入收藏夹");
	});*/
	var flag = false;
	$('.move').on('click', function() {
		flag = !flag;
		$(this).text(flag ? '取消收藏' : '移入收藏夹');
	});
});</script>

	<body>
		<div id="body">
			<div class="bc-f5 ht-30 lh-30">
				<div class="wd-1200 ma fs-12 cl-6">
					<p class="fl">
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
						<a class="hover cl-6" href="#" target="_blank" title="下载博库APP"><span class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr">&#xe933;</span>下载博库APP</a>
					</p>
					<p class="fr">
						<a class="hover fr cl-6" href="javascript:void()" onclick="openQimooChat();" title="联系客服">联系客服</a>
						<span class="pd-0015 cl-c fr">|</span>
						<a class="hover fr cl-6" href="/user/shop/settings.php" target="_blank" title="店铺管理">店铺管理</a>
						<span class="pd-0015 cl-c fr">|</span>
						<a class="hover fr cl-6" href="/user/collection.php" target="_blank" title="收藏夹">收藏夹</a>
						<span class="pd-0015 cl-c fr">|</span>
						<div class="fr mouseenter-box mouseenter mouseleave pr">
							<label class="cp">我的博库<span class="icon-down-line ml-5 fs-11"></span></label>
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
				</div>
			</div>
			<div id="logo">
				<img src="img/logo.png" />
			</div>
			<div id="text_one">
				<span id="my">
					我的购物车
				</span>
				<span id="msg">
					温馨提示:1.购物车中的商品无法保留库存，请您尽快完成购买。2.商品的价格和库存将以订单提交时为准哦。
				</span>
			</div>
			<c:if test="${ulist==null}">
			<div id="car">
				<div class="car_one">
					<img src="img/cars.png" />
					<p>您的购物车还是空的！</p>
				
					<br />
					<c:if test="${uid==null}">
						<a href="跳转到登陆连接!"><span class="login">登录</span></a>
					</c:if>					
					<a href="Mnag.jsp"><span class="continue">继续逛</span></a>
				</div>				
			</div>
			</c:if>
			<c:if test="${ulist!=null}">
			
			<form action="#" method="post" id="myform">
				<table class="total_table" width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr class="tr_head">
						<td width="40" align="center">
							<input type="checkbox" class="allCheckBox">
						</td>
						<td width="40">全选</td>
						<td width="450">商品信息</td>
						<td align="center" width="160">单价</td>
						<td align="center" width="120">数量</td>
						<td align="center"></td>
						<td align="center" width="200">金额(元)</td>
						<td>操作</td>
					</tr>
				</table>
				<table class="page_table" width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td colspan="8" style="padding-left: 10px;">图书仓</td>
					</tr>
					<c:forEach items="${ulist }" var="bu">
					<tr class="tr_rows">
						<td width="80" align="center" class="cart_td_1">
							<input type="checkbox">
						</td>
						<td width="160"><img src="${bu.bookimg }" width="80" height="110" /></td>
						<td width="330">
							<ul class="ul_con_1">	
								<li>${bu.bookname }</li>
							</ul>
						</td>
						<td width="130">
							<ul>
								<li class="dere">￥<span>${bu.discount }</span></li>
								<li>￥<span class="cart_td_5">${bu.price }</span></li>
							</ul>
						</td>
						<td width="170">
							<div class="minus">-</div>
							<input type="text" value="${bu.count }" class="num_input" readonly="readonly" size="1" />
							<div class="add">+</div>
						</td>
						<td width="150" style="color: red;">￥<span class="cart_td_7">58.80</span></td>
						<td>
							<a href="#" class="move" style="font-size: 18px;">移入收藏夹</a><br />
							<a href="#" class="del" style="color: deepskyblue;">删除</a>
						</td>
					</tr>
					</c:forEach>
					
				</table>
				<!--结算信息-->
				<table class="total_money" width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="40" align="center">
							<input type="checkbox" class="allCheckBox">
						</td>
						<td width="40">全选</td>
						<td>已选&nbsp;&nbsp;<span id="already" style="color: grey;">
							
						</span>&nbsp;&nbsp;件</td>
						<td>
							<a href="#" id="deleteAll">删除选中商品</a>
						</td>
						<td>应付金额(不含运费):<span>￥</span><span id="total_price">0.00</span></td>
						<td class="final"><a href="OrderServlet?opr=js">去结算</a></td>
					</tr>
				</table>
			</form>
			</c:if>
		</div>

			
	</body>

</html>