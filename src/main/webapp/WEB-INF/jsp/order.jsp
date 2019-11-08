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
<title>订单确认-博库体验店</title>

<style type="text/css">
.myvis {
	display: none;
}

</style>
<script type="text/javascript">
	$(function() {
	
	//$("#address_choice_list").html(" ");
	
		$("#order_submit").click(function() {
		
					var province = $(".province :checked").val();
					var city = $(".city :checked").val();
					var address = $("#detail_address").val();
					var phone = $("#receiver_phone").val();
					var name = $("#receiver_name").val();
					var sum = $("#total_money").text();
					var ads = province + city + address;

					var url = "UserBooksServlet?opr=zf&address=" + ads +"&phone="
							+ phone + "&name=" + name + "&totalMoney=" + sum
							+ "&usid=" + ${uid.uid};

					$.get(url, null, function(data) {
						if (data == 'true') {

							alert("订单生成！支付跳转中。。");
							

						} else {
							alert("订单失败");
						};
					});

				});

		$("#queding").click(function() {
		alert("s");
					if (IsNull()) {

						var province = $(".province :checked").val();
						var city = $(".city :checked").val();
						var address = $("#detail_address").val();
						var phone = $("#receiver_phone").val();
						var name = $("#receiver_name").val();
						var sum = $("#total_money").val();
						var ads = province + city + address;

						var url = "OrderServlet?opr=dz&province=" + province
								+ "&city=" + city + "&address=" + address
								+ "&phone=" + phone + "&name=" + name
								+ "&usid=" + ${uid.uid};
						$.get(url, null, function(data) {

							
							$("#mytb").addClass("myvis");
							$("#xingq").show();
							$("#address_choice_list").html(" ");

	
					var lihtml="<li class='wd-260 pd-0010 ht-140 mt-10 fl bd-2-gr mr-15 on-tab delete-box'>";
						
							lihtml+="<p class='lh-30 bb-1-e8 to-hd'>";
									lihtml+="<span class='fs-12 cl-f bc-sv mr-5 pd-0204 br-4'>";
									lihtml+="默认地址";
									lihtml+="</span>";
									lihtml+=data[0].provinc+" ";
									lihtml+=data[0].cipa+" ";
									lihtml+=data[0].recipient+" ";
									lihtml+="收";
								lihtml+="</p>";
								lihtml+="<div class='pd-0500 lh-20'>";
									lihtml+="<p class='to-hd'>";
									lihtml+=data[0].provinc+"  "+data[0].cipa;
										lihtml+=data[0].recipient;
										lihtml+="</p>";
									lihtml+="<p class='to-hd'>";
									lihtml+=data[0].address;
									lihtml+="</p>";
									lihtml+="<p class='to-hd'>";
									lihtml+=data[0].phone;
									lihtml+="</p>";
								lihtml+="</div>";
								lihtml+="<p>";
									lihtml+="<span class='mr-20 add-address'>";
									lihtml+="修改";
									lihtml+="</span>";
									lihtml+="<span class='cp' onclick='deleteConfirm(this, 'address');'data-id='1034987'>";
										lihtml+="删除";
									lihtml+="</span>";
								lihtml+="</p>";
								lihtml+="<div class='patch2'>";
									
								lihtml+="</div>";
							lihtml+="</li>";
							$("#address_choice_list").append(lihtml);
							//$("#address_choice_list").append(lihtml);
							alert("地址增加成功");
						},"json");

					};
				});
		total();

	});

	function total() {
		var prices = document.getElementsByName("price");
		var count = document.getElementsByName("cont");
		var sum = 0;
		for ( var i = 0; i < prices.length; i++) {
			sum += prices[i].value * count[i].value;
		}
		document.getElementById("total_price").innerHTML = "¥" + sum;
		document.getElementById("total_money").innerHTML = "¥ " + sum;

	}
	function IsNull() {

		var province = $(".province :checked").val();
		var city = $(".city :checked").val();
		var address = $("#detail_address").val();
		var phone = $("#receiver_phone").val();
		var name = $("#receiver_name").val();

		if (province == "请选择" || city == "请选择") {
			alert(province + "    " + city + "请选择省市");
			return false;
		}

		if (address == "") {
			alert("请输入地址");
			return false;
		}

		if (phone=="") {
			alert("请输入正确的电话号码");
			return false;
		}
		if (name == "") {
			alert("请输入收件人");
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
					<c:choose>
						<c:when test="${isok==false }">
							<a class="hover cl-6" href="/user/login.html" title="登录">登录</a>
							<span class="pd-0005 cl-c">|</span>
							<a class="mr-30 hover cl-6" href="/user/registered.html" title="免费注册">免费注册</a>
						</c:when>
						<c:otherwise>
					欢迎：${uid.uname}
					<span class="pd-0005 cl-c">|</span>
							<a class="mr-30 hover cl-6" href="/user/loginout.html?url=order"
								title="退出登录">退出登录</a>
						</c:otherwise>
					</c:choose>
					<a class="hover cl-6" href="/download.php" target="_blank"
						title="下载博库APP"><span
						class="icon-phone-line cl-bl-l fs-16 tp-3 mr-2 pr"></span>下载博库APP</a>
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
						class="icon-down-line ml-5 fs-11"></span> </label>
					<div class="acount">
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的博库</a>
						<a class="hover cl-6 to-hd" href="#" target="_blank" title="">我的订单</a>
						<a class="hover cl-6 to-hd" href="/user/coupon.php"
							target="_blank" title="">我的优惠券</a> <a class="hover cl-6 to-hd"
							href="#" target="_blank" title="">我的收藏</a> <a
							class="hover cl-6 to-hd" href="/user/account.php" target="_blank"
							title="">我的收入</a> <a class="hover cl-6 to-hd" href="#"
							target="_blank" title="">官方消息</a> <a class="hover cl-6 to-hd"
							href="javascript:void(0);" title=""></a>
					</div>
				</div>
				<div class="cb"></div>
				</p>
				<div class="cb"></div>
			</div>
		</div>
		<div class="wd-1200 ma bb-1-e8">
			<div class="logo">
				<a class="db logo-box fl" href="/book/Mnag.html"> <img src="/statics/img/logo.png" />
				</a>
				<div class="cb"></div>
			</div>
		</div>

	</div>
	<div class="section bc-f">

		<div class="wd-1200 ma">

			<!-- 展开隐藏 -->
			<div class="fold-box tab-box">

				<div class="fs-16 fw-bd lh-50 ht-50">选择收货地址</div>
				<table id="mytb" cellspacing="20" width="670" class="cl-0 bc-s">
					<tr>
						<td width="140" align="right">所在地区：</td>
						<td colspan="3" id="region1" class="region"><select
							class="province"
							style="width: 150px; height: 30px; margin-right: 10px; cursor: pointer;">
								<option value="请选择" class="default">请选择</option>

								<option value="广东">广东</option>

						</select> <select class="city"
							style="width: 150px; height: 30px; margin-right: 10px; cursor: pointer;">
								<option value="请选择" class="default">请选择</option>
								<option value="广州市">广州市</option>
								<option value="韶关市">韶关市</option>
								<option value="深圳市">深圳市</option>
								<option value="珠海市">珠海市</option>
								<option value="汕头市">汕头市</option>
								<option value="佛山市">佛山市</option>
								<option value="江门市">江门市</option>
								<option value="湛江市">湛江市</option>
								<option value="茂名市">茂名市</option>
								<option value="肇庆市">肇庆市</option>
								<option value="惠州市">惠州市</option>
								<option value="梅州市">梅州市</option>
								<option value="汕尾市">汕尾市</option>
								<option value="河源市">河源市</option>
								<option value="阳江市">阳江市</option>
								<option value="清远市">清远市</option>
								<option value="东莞市">东莞市</option>
								<option value="中山市">中山市</option>
								<option value="潮州市">潮州市</option>
								<option value="揭阳市">揭阳市</option>
								<option value="云浮市">云浮市</option>
						</select></td>
					</tr>
					<tr>
						<td align="right" valign="top">详细地址：</td>
						<td colspan="3"><textarea class="wd-100p ht-80 pd-0500"
								id="detail_address"></textarea></td>
					</tr>
					<tr>
						<td align="right">收货人：</td>
						<td><input id="receiver_name" class="wd-150 ht-25 lh-25" />
						</td>
						<td width="170" align="right">手机号码：</td>
						<td><input id="receiver_phone" class="wd-150 ht-25 lh-25" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="mt-10 ht-50 lh-50">
								<span class="bc-bl cl-f pd-1050 cp fs-18 cl-f" id="queding">确定</span>
							</div></td>
						<td colspan="2" align="right" class="pr cp lh-60"><input
							type="checkbox" style="cursor:pointer"
							class="choose pafull-box op-0 zi-1"> <span
							class="icon-checkbox-line cl-c"
							id="choice_address_is_default_add">&#xe914;</span> <label
							class="fs-12 pr tp-s-2 ml-5">设为默认</label></td>
					</tr>
				</table>

				<div class="cb"></div>

				<div id="xingq" style="display: none;">
					<ul class="tab-title tab-order" id="address_choice_list">
						<li
							class="wd-260 pd-0010 ht-140 mt-10 fl bd-2-gr mr-15 on-tab delete-box"
							data-id="1034987" data-ablepick="0" data-username="jakk"
							data-userphone="17607651784" data-useraddress="大苏打">
							<p class="lh-30 bb-1-e8 to-hd">
								<span class="fs-12 cl-f bc-sv mr-5 pd-0204 br-4">默认地址</span>
								'${adr.provinc}''${adr.cipa}'（'${adr.recipient}' 收）
							</p>
							<div class="pd-0500 lh-20">
								<p class="to-hd">'${adr.provinc}' '${adr.cipa}'
									'${adr.recipient}'</p>
								<p class="to-hd">'${adr.address}'</p>
								<p class="to-hd">'${adr.phone}'</p>
							</div>
							<p>
								<span class="mr-20 add-address" data-id="1034987"
									data-address="大苏打" data-username="jakk"
									data-phone="17607651784" data-isdefault="1"
									data-provinceid="37" data-cityid="3701" data-countyid="370102">修改</span>
								<span class="cp" onclick="deleteConfirm(this, 'address');"
									data-id="1034987">删除</span>
							</p>
							<div class="patch2">
								<!--     <span class="icon-right-line2 fs-15 cl-f zi-1">&#xe936;</span>
                                    <label class="icon-triangle2-block3 fs-30 cl-bl-l zi-0">&#xe955;</label> -->
								<img src="https://bnmpstyle.bookuu.com/www/images/check-tip.png">
							</div></li>
						<div class="cb"></div>
					</ul>
				</div>
			</div>
			<!-- 新增收货地址弹窗 -->
			<div class="popup-box address wd-640 pr hidden">
				<div class="popup-content">
					<div class="content-center">
						<p class="fs-18 ff-ht lh-50" id="modify_address_title">新建地址</p>
						<div class="topright10-box">
							<span class="icon-close-line close-popup cp fs-25">&#xe919;</span>
						</div>
						<table width="100%" class="cl-0 lh-40">
							<tr>
								<td width="100" align="right">所在地区：</td>
								<td colspan="3" id="region2" class="region"></td>
							</tr>
							<tr>
								<td align="right" valign="top">详细地址：</td>
								<td colspan="3"><textarea class="ht-80 wd-100p mt-10"
										id="detail_address"></textarea></td>
							</tr>
							<tr>
								<td align="right">收货人：</td>
								<td><input id="receiver_name" class="wd-150 ht-30 lh-30"
									type="text" />
								</td>
								<td width="250" align="right">手机号码：</td>
								<td><input id="receiver_phone" class="wd-150 ht-30 lh-30"
									type="text" />
								</td>
							</tr>
							<tr>
								<td colspan="2" class="pr cp lh-60"><input type="checkbox"
									style="cursor:pointer" class="choose pafull-box op-0 pr zi-1"
									onclick="checkOne(this, 'checkbox', true)"> <span
									class="icon-checkbox-line cl-c"
									id="choice_address_is_default_modify">&#xe914;</span> <label
									class="fs-12 pr tp-s-2 ml-5">设为默认</label></td>
								<td colspan="2" class="ta-rt">
									<div class="mt-30 fs-16 fw-bd cl-f">
										<span class="bd-1-bl-d bc-bl pd-1050 cp mr-10"
											onclick="saveAddress(0,'modify');">确定</span> <span
											class="cl-bl-l bd-1-bl-d bc-bl-l pd-1050 cp close-popup">取消</span>
									</div></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<!-- 确认商品信息 -->
			<div class="lh-50 ht-50 bb-1-e8">
				<p class="fs-16 fw-bd">确认商品信息</p>
			</div>
			<!-- 订单列表 -->
			<div>
				<ul class="cl-6 ht-45 lh-45 ta-ct wd-1180 pd-0010 bc-f3">
					<li class="wd-550 fl ta-lf">商品信息</li>
					<li class="wd-150 fl">单价(元)</li>
					<li class="wd-200 fl">数量</li>
					<li class="wd-160 fl">优惠</li>
					<li class="wd-120 fl">金额(元)</li>
					<div class="cb"></div>
				</ul>

				<!-- 包裹 -->
				<p class="lh-45">仓库：图书仓</p>
				<div class="border-patch">
					<div class="ht-40 lh-40 wd-1180 pd-0010 tab-box change-container">
						<div class="wd-100 fl fs-16">包裹1</div>
						<ul
							class="wd-380 fl fs-15 tab-title tab-order mouseenter-box unclick-box revice_type">

							<!-------自取包裹-------->
							<li class="fl mr-20 bd-2-e8 bc-f3 pd-0020 lh-25 mt-6 on-tab"
								onclick="chooseUnlinePay(0,'',3);">送货上门
								<div class="patch2">
									<!--     <span class="icon-right-line2 fs-8 cl-f zi-1">&#xe936;</span>
                                <label class="icon-triangle2-block3 fs-17 cl-bl-l zi-0">&#xe955;</label> -->
									<img
										src="https://bnmpstyle.bookuu.com/www/images/check-tip.png">
								</div></li>

							<li
								class="fl mr-20 bd-2-e8 bc-f3 pd-0020 lh-25 mt-6 zi-21 mouseenter mouseleave unclick dn "
								id="self_pick_show_1">自行取货
								<div class="patch2">
									<!--  <span class="icon-right-line2 fs-8 cl-f zi-1">&#xe936;</span>
                                <label class="icon-triangle2-block3 fs-17 cl-bl-l zi-0">&#xe955;</label> -->
									<img
										src="https://bnmpstyle.bookuu.com/www/images/check-tip.png">
								</div> <!-- 自行取货提示层 --> <!-- 库存不足不能自取 -->
								<div class="hover-box ta-lf fw-nm change-box">
									<div class="fs-16 bc-f3 lh-40 bb-1-e8 pd-0010 ff-ht">选择取货门店</div>
									<div class="hover-font">
										<div class="to-hd lh-40 bb-1-e8 pd-0010 bc-f hover">
											<p class="cl-9 fl wd-380 to-hd">博库书城杭州文二店 杭州市文二路40号</p>
											<div class="wd-100 fl">
												<span data-shop_id="1" data-shop_name="博库书城杭州文二店"
													data-delivery_type="2"
													class="pd-0208 br-4 bd-1-bl-d cl-bl-l ml-30 dn">货到付款</span>
												<span data-shop_id="1" data-shop_name="博库书城杭州文二店"
													data-delivery_type="1"
													class="pd-0208 br-4 bd-1-bl-d cl-bl-l ml-10 dn">在线支付</span>
											</div>
											<div class="cb"></div>
										</div>
										<div class="to-hd lh-40 bb-1-e8 pd-0010 bc-f hover">
											<p class="cl-9 fl wd-380 to-hd">博库书城天目店 杭州市天目山路38号</p>
											<div class="wd-100 fl">
												<span data-shop_id="2" data-shop_name="博库书城天目店"
													data-delivery_type="2"
													class="pd-0208 br-4 bd-1-bl-d cl-bl-l ml-30 dn">货到付款</span>
												<span data-shop_id="2" data-shop_name="博库书城天目店"
													data-delivery_type="1"
													class="pd-0208 br-4 bd-1-bl-d cl-bl-l ml-10 dn">在线支付</span>
											</div>
											<div class="cb"></div>
										</div>
									</div>
								</div></li>

							<div class="fl mr-20 lh-25 mt-10 pr">
								<input type="checkbox" class="choose pafull-box op-0 zi-1"
									onclick="checkOne(this, 'checkbox', true)">

							</div>
							<div class="cb"></div>
						</ul>
						<ul class="tab-content mouseenter-box wd-700 fr ta-rt"
							id="self_pickup_desc">
							<li class="on-tab to-hd">送货上门</li>
							<li class="to-hd change">取货门店：博库书城杭州文二店，杭州市文二路40号，在线支付</li>
						</ul>
						<div class="cb"></div>
					</div>
					<!------------------正常商品------------------------>
					<c:forEach items="${ulist }" var="li">
						<ul class="wd-1180 pd-10 lh-100 bt-1-e8" style="font-size:15px;">
							<li class="wd-550 fl">
								<div class="fl wd-100">
									<img src="/statics/${li.bookimg}" width="80" height="80" />
								</div>
								<div class="fr wd-440">
									<p class="minh-60 lh-20">${li.bookname}</p>
								</div>
								<div class="cb"></div>
							</li>
							<li class="ta-ct wd-150 fl" style="font-size:15px;">¥<input
								type="text" value="${li.price}" name="price"
								style="width:60px;border:0px;font-size:16px;">
							</li>
							<li class="wd-200 fl ta-ct"><input type="text"
								value="${li.count}" name="cont"
								style="width:30px;border:0px;font-size:16px;">
							</li>
							<li class="wd-160 fl ta-ct" id="cart_td_5">¥${li.price}</li>
							<li class="fs-18 cl-rd-l wd-120 fl ta-ct" id="cart_td_7">¥${li.price*li.count}</li>
							<div class="cb"></div>
						</ul>
					</c:forEach>

				</div>

			</div>

			<!-- 优惠券 -->

			<!-- 邮费 -->
			<p class="lh-60 ht-60 wd-1200">
				<span class="fs-16 fw-bd mr-25">邮费</span> <span
					class="fs-16 postage">¥0.00</span>
			</p>
			<!-- 开具发票 -->

			<!-- 备注说明 -->

			<div class="pd-1530 bc-f3 bd-1-e8 mt-20 ta-rt lh-35">
				<table width="100%">
					<tr>
						<td width="1007">商品应付总计：</td>
						<td width="130" id="total_price"></td>
					</tr>
					<tr>
						<td class="pr">
							<!-- <span class="icon-help-line mr-5 pr tp-2">&#xe92f;</span> -->
							运费：</td>
						<td width="130" class="postage">¥0.00</td>
					</tr>

					<tr>
						<td>应付金额：</td>
						<td width="130" class="cl-rd-l fs-18 pay_money" id="total_money"></td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="mt-30 ht-50 lh-50">
								<a class="fs-12 cl-bl-l fw-nm mr-30" href="car.jsp">返回购物车修改</a>
								<span id="order_submit" class="cp fs-18 cl-f bc-rd-d pd-1530">提交订单</span>
							</div></td>
					</tr>
					<tr>
						<td colspan="2" class="fw-nm fs-14">
							<p class="mt-10" id="consignee_user_show">
								收<span class="pd-0020"></span>电话
							</p></td>
					</tr>
				</table>
			</div>

			<!--表单提交数据 end-->
		</div>
	</div>

	<!-- 底部 -->

	<!-- 底部 -->
	<div class="footer">
		<!-- tag -->
		<div class="tag">
			<ul class="clearfix">
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/statics/img/zheng.png" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场正品</p>
						<p>出版社直采·博库正品</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img
					src="/statics/img/sheng.png" alt="" width="50" height="50"
					class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">全场满59包邮</p>
						<p>惊喜不断·让利多多</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img src="/statics/img/huo.png"
					alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
					<div class="fl">
						<p class="fs-24 ">门店自取</p>
						<p>就近取货·方式灵活</p>
					</div>
					<div class="cb"></div></li>
				<li class="cl-4 lh-25 pd-0500 wd-25p fl"><img src="/statics/img/hao.png"
					alt="" width="50" height="50" class="fl mr-10 defaultlazy" />
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
					<img src="/statics/img/jingcha.png" alt="" height="36"
						class="va-md pd-0005 defaultlazy"> <a
						href="/system/refer.php" target="_blank"> <img
						src="/statics/img/huizhang.png" alt="" height="36"
						class="va-md pd-0005 defaultlazy"> </a>
				</div>
				<div class="fl pd-0010">
					<p>©Copyright 2005-2017 bookuu.com 版权所有</p>
					<p>增值电信业务经营许可证:浙B2-2011021</p>
					<a class="copyRightA" href="#" target="_blank">出版物经营许可证新出发浙批字第300411号</a>
				</div>
				<div class="fl lh-50">
					<a href="#" target="_blank"><img src="/statics/img/knetSealLogo.png"
						alt="" height="30" class="va-md pd-0005 defaultlazy"> </a> <a
						href="#" target="_blank"><img src="/statics/img/cert.png" alt=""
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

</body>

</html>