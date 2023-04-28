<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: AM 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../resources/css/style.css">
<%--<link rel="stylesheet" href="/resources/css/bootstrap.min.css">--%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- 메뉴 영역 -->
<nav>
<div class="menu" id="nav">
    <ul class="menubar">
        <li><a href="/save">회원가입</a></li>
        <li><a href="/login">로그인</a></li>
        <li><a href="/members">회원목록</a></li>

    <li class="login-name">
        <c:choose>
            <c:when test="${sessionScope.loginEmail != null}">
        <a href="/mypage">${sessionScope.loginEmail}님 환영해요</a>
        <a href="/logout">logout</a>
            </c:when>
            <c:otherwise>
                <a href="/login">login</a>
            </c:otherwise>
        </c:choose>
    </li>
    </ul>
</div>
</nav>
</body>
</html>
