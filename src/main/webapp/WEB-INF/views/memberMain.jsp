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
<section>
    <h2>마이페이지</h2>
    ${sessionScope.loginEmail} 님 환영해요!
    <button>로그아웃</button>
<button onclick="fun1()">세션값 js에서 확인</button>
</section>
<%@include file="component/footer.jsp"%>

</body>
<script>
    const fun1 = () => {
      const loginEmail = '${sessionScope.loginEmail}'
        console.log("로그인이메일:",loginEmail)
    }
</script>
</html>
