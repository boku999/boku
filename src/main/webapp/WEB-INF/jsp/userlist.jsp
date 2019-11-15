<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@include file="common/head.jsp" %>
<div class="right">
    <div class="location">
        <strong>你现在所在的位置是:</strong>
        <span>查询书籍页面</span>
    </div>
    <div class="search">
        <form method="get" action="/user/userList.html">
            <input name="method" value="query" class="input-text" type="hidden">
            <span>图书名：</span>
            <input name="bookname" class="input-text" type="text">

            <span>图书类型：</span>
            <select name="categoryid">
                    <option value="0">--请选择--</option>
                    <option value="1">小说</option>
                    <option value="2">历史</option>
                    <option value="3">经济管理</option>
                    <option value="4">文学</option>
                    <option value="5">计算机与互联网</option>
            </select>

            <input type="hidden" name="pageIndex" value="1"/>
            <input value="查 询" type="submit" id="searchbutton">
        </form>
    </div>
    <!--用户-->
    <table class="providerTable" cellpadding="0" cellspacing="0">
        <th width="10%">图书编号</th>
        <th width="20%">图书名称</th>
        <th width="10%">作者</th>
        <th width="10%">库存</th>
        <th width="10%">现价</th>
        <th width="10%">图书类型</th>
        <th width="30%">操作</th>
        <c:forEach var="li" items="${user}" varStatus="status">
            <tr>
                <td>
                    <span>${li.bookid}</span>
                </td>
                <td>
                    <span>${li.bookname}</span>
                </td>
                <td>
                    <span>${li.author}</span>
                </td>
                <td>
                    <span>${li.quantity}</span>
                </td>
                <td>
                    <span>${li.price}</span>
                </td>
                <td>
                    <span>
                        <c:if test="${li.categoryid==1}">
                            小说
                        </c:if>
                        <c:if test="${li.categoryid==2}">
                            历史
                        </c:if>
                        <c:if test="${li.categoryid==3}">
                            经济管理
                        </c:if>
                        <c:if test="${li.categoryid==4}">
                            文学
                        </c:if>
                        <c:if test="${li.categoryid==5}">
                            计算机与互联网
                        </c:if>
                    </span>
                </td>
                <td>
                    <span><a class="viewUser" href="/user/view?bookid=${li.bookid}" userid=${li.bookid } username=${li.bookname }><img
                            src="/statics/images/read.png" alt="查看" title="查看"/></a></span>
                    <span><a class="modifyUser" href="/user/modify?bookid=${li.bookid}" userid=${li.bookid } username=${li.bookname }><img
                            src="/statics/images/xiugai.png" alt="修改" title="修改"/></a></span>
                    <span><a class="deleteUser" href="javascript:;" userid=${li.bookid } username=${li.bookname } ><img
                            src="/statics/images/schu.png" alt="删除" title="删除"/></a></span>
                </td>
            </tr>
        </c:forEach>
    </table>
    <%--<input type="hidden" id="currentPageNo" name="currentPageNo" value="${pageSupport.currentPageNo}"/>--%>
    <c:if test="${pageSupport.currentPageNo!=1}">
        <a href="/user/userList.html?currentPageNo=1">首页</a>
        <a href="/user/userList.html?currentPageNo=${pageSupport.currentPageNo-1}">上一页</a>
    </c:if>
    <c:if test="${pageSupport.currentPageNo!=pageSupport.totalPageCount}">
        <a href="/user/userList.html?currentPageNo=${pageSupport.currentPageNo+1}">下一页</a>
        <a href="/user/userList.html?currentPageNo=${pageSupport.totalPageCount}">尾页</a>
    </c:if>
</div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeUse">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该图书吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="common/foot.jsp" %>
<script type="text/javascript" src="/statics/js/userlist.js"></script>
