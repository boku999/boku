<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/head.jsp"%>
 <div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>用户管理页面 >> 用户信息查看页面</span>
        </div>
        <div class="providerView">
            <p><strong>图书编号：</strong><span>${book.bookid }</span></p>
            <p><strong>图书名称：</strong><span>${book.bookname }</span></p>
            <p><strong>图书作者：</strong>
            	<span>
            		${book.author}
				</span>
			</p>
            <p><strong>出版社：</strong><span>${book.sell}</span></p>
            <p><strong>存库：</strong><span>${book.quantity }</span></p>
            <p><strong>原价：</strong><span>${book.discount }</span></p>
            <p><strong>现价：</strong><span>${book.price}</span></p>
			<div class="providerAddBtn">
            	<input type="button" id="back" name="back" value="返回" >
            </div>
        </div>
    </div>
</section>
<%@include file="common/foot.jsp" %>
<script type="text/javascript" src="/statics/js/userview.js"></script>