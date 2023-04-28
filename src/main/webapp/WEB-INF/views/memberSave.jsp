<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: AM 8:51
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
<h1>memberSave.jsp</h1>
<section id="section">
    <h2>회원등록 페이지</h2>
    <br>
    <div class="container">
        <form action="/save" method="post" onsubmit="return ValidationName()">
            <label for="memberEmail"><b>이메일</b> </label>
            <input type="text" name="memberEmail" id="memberEmail" placeholder="이메일을 입력해주세요" > <br>
            <label for="memberPassword"><b>비밀번호</b> </label>
            <input type="text" name="memberPassword" id="memberPassword" placeholder="패스워드를 입력해주세요"> <br>
            <label for="memberName"><b>회원이름</b></label><br>
            <input type="text" name="memberName" id="memberName" placeholder="회원이름을 입력해주세요"> <br>
            <label for="memberBirth"><b>생년월일</b></label>
            <input type="text" name="memberBirth" id="memberBirth" placeholder="생년월일을 입력해주세요"> <br>
            <label for="memberMobile"><b>전화번호</b></label>
            <input type="text" name="memberMobile" id="memberMobile" placeholder="전화번호를 입력해주세요"> <br>

            <input type="submit" value="등록">
            <input type="reset" value="취소" onclick="back()">
            <%--            <tr>--%>
            <%--                <td colspan="2" style="text-align: center">--%>
            <%--                    <input style="display: inline" type="submit" value="등록">--%>
            <%--                    <input style="display: inline" type="button" value="조회">--%>
            <%--                </td>--%>
            <%--            </tr>--%>

        </form>
    </div>
</section>
<%@include file="component/footer.jsp"%>
</body>
<script>
    const ValidationName = () => {
        const Email = document.getElementById("memberEmail");
        const Password = document.getElementById("memberPassword");
        const Name = document.getElementById("memberName");
        const Birth = document.getElementById("memberBirth");
        const Mobile = document.getElementById("memberMobile");
        const exp1 = /^(?=.*[a-z])(?=.*\d)(?=.*[!#$%])[a-z\d!#$%]{8,16}$/;

        if (Email.value.length == 0) {
            Email.focus();
            alert("이메일이 입력되지 않았습니다")
            return false;
        } else if (Password.value == "") {
            alert("비밀번호를 입력하세요")
            Password.focus();
            return false;
        } else if(!Password.value.match(exp1)){
            alert("올바른 형식이 아닙니다")
            Password.focus();
            return false;
        }else if (Name.value == "") {
            alert("이름을 제대로 입력해주세요")
            Name.focus();
            return false;
        } else if (Birth.value == "" ) {
            alert("생년월일을 입력해주세요")
            Birth.focus();
            return false;
        } else if (Mobile.value == "") {
            alert("전화번호를 입력해주세요")
            Mobile.focus();
            return false;
        } else {
            alert("회원가입완료")
            return true;
        }
    }
    const back = () => {
        location.href = "/";

    }

</script>
</html>
