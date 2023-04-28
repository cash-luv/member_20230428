<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: AM 8:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<section id="section">
    <table id="table" class="table">
        <tr>
            <th>회원번호</th>
            <th>회원이메일</th>
            <th>회원비밀번호</th>
            <th>회원이름</th>
            <th>회원생년월일</th>
            <th>회원전화번호</th>


        </tr>
        <c:forEach items="${memberDTOList}" var="member">
            <tr>
                <td>${member.id}</td>
                <td>${member.memberEmail}</td>
                <td>${member.memberPassword}</td>
                <td>${member.memberName}</td>
                <td>${member.memberBirth}</td>
                <td>${member.memberMobile}</td>
            </tr>
        </c:forEach>
    </table>
</section>
<%@include file="component/footer.jsp"%>
</body>
</html>
