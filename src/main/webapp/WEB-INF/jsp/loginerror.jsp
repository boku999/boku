<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<c:if test="${uid}==null">
    <h1>请登录后再访问该页面！</h1>
    <a href="jsp/login.jsp">返回</a>
</c:if>
<c:if test="${uid}!=null"><h1>系统繁忙，请稍后重试！</h1>
    <a href="javascript:window.history.back(-1);">返回</a>
</c:if>

</body>
</html>