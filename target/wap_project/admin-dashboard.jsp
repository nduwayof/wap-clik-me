<%--
  Created by IntelliJ IDEA.
  User: nduwayofabrice
  Date: 2019-09-23
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin || dashboard</title>
</head>
<body>
<%
    Object object = session.getAttribute("admin");
    if(object == null){
        response.sendRedirect("/admin-login");
    }
%>
</body>

</html>
