<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="common/head.jsp" %>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>用户管理页面 >> 图书修改页面</span>
    </div>
    <div class="providerAdd">
        <form id="userForm" name="userForm" method="post" action="/user/modify.html">
            <input type="hidden" name="method" value="modifyexe">
            <input type="hidden" name="bookid" value="${book.bookid }"/>
            <div>
                <label for="bookname">图书名：</label>
                <input type="text" name="bookname" id="bookname" value="${book.bookname }">
                <font color="red"></font>
            </div>
            <div>
                <label>作者：</label>
                <input type="text" name="author" id="author" value="${book.author}"/>
            </div>
            <div>
                <label for="publicationDate">出版日期：</label>
                <input type="text" Class="Wdate" id="PublicationDate" name="PublicationDate" value="${book.publicationDate}"
                       readonly="readonly" onclick="WdatePicker();">
                <font color="red"></font>
            </div>

            <div>
                <label for="quantity">存库：</label>
                <input type="text" name="quantity" id="quantity" value="${book.quantity }">
                <font color="red"></font>
            </div>
            <div>
                <label for="discount">原价：</label>
                <input type="text" name="discount" id="discount" value="${book.discount }">
            </div>
            <div>
                <label>现价：</label>
                <!-- 列出所有的角色分类 -->
                <input type="text" name="price" id="price" value="${book.price}"/>
                <font color="red"></font>
            </div>
            <div class="providerAddBtn">
                <input type="submit" name="save" id="save" value="保存"/>
                <input type="button" id="back" name="back" value="返回"/>
            </div>
        </form>
    </div>
</div>
</section>
<%@include file="common/foot.jsp" %>
<script type="text/javascript" src="/statics/js/usermodify.js"></script>
