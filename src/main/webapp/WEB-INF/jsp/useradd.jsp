<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="common/head.jsp" %>

<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>图书管理 >> 图书添加页面</span>
    </div>
    <div class="providerAdd">
        <form id="userForm" name="userForm" method="post" action="/user/addusers.html">
            <input type="hidden" name="method" value="add">
            <!--div的class 为error是验证错误，ok是验证成功-->
            <div>
                <label for="bookname">图书名称：</label>
                <input type="text" name="bookname" id="bookname" value="">
                <!-- 放置提示信息 -->
                <font color="red"></font>
            </div>
            <div>
                <label for="categoryid">图书类型：</label>
                <select name="categoryid" id="categoryid">
                    <option value="0">--请选择--</option>
                    <option value="1">小说</option>
                    <option value="2">历史</option>
                    <option value="3">经济管理</option>
                    <option value="4">文学</option>
                    <option value="5">计算机与互联网</option>
                </select>
                <font color="red"></font>
            </div>
            <div>
                <label for="author">作者：</label>
                <input type="text" name="author" id="author" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="sell">出版社：</label>
                <input type="text" name="sell" id="sell" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="publicationDate">出版日期：</label>
                <input type="text" Class="Wdate" id="publicationDate" name="PublicationDate"
                       readonly="readonly" onclick="WdatePicker();">
                <font color="red"></font>
            </div>
            <div>
                <label for="info">内容简介：</label>
                <input type="text" id="info" name="info" value=""/>
                <font color="red"></font>
            </div>
            <div>
                <label for="quantity">存库：</label>
                <input type="text" name="quantity" id="quantity" value="">
                <font color="red"></font>
            </div>
            <div>
                <label for="price">现价：</label>
                <input name="price" id="price" value="">
            </div>
            <div>
                <label for="discount">原价：</label>
                <!-- 列出所有的角色分类 -->
                <input name="discount" id="discount" value="">
                <font color="red"></font>
            </div>
            <div class="providerAddBtn">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <input type="submit" name="add" id="add" value="保存">
            </div>
        </form>
    </div>
</div>
</section>
<%@include file="common/foot.jsp" %>

