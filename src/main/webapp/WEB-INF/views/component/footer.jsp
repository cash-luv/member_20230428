<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-28
  Time: AM 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<footer>
<div id="footer">

</div>
</footer>
</body>
<script>
    const date = new Date();
    console.log(date);
    console.log(date.getFullYear());
    const footer = document.getElementById("footer");
    footer.innerHTML = "<p>&copy; " + date.getFullYear() +" HRDKOREA All rights reserved.</p>";
</script>
</html>
