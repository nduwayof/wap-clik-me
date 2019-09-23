<%--
  Created by IntelliJ IDEA.
  User: 610158
  Date: 9/23/2019
  Time: 1:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form  action="addPost" method="post"  enctype="multipart/form-data">
        <textarea name="details" id="details">

        </textarea>
        <input type="file" name="image" id="image">
        <input type="submit" value="Post">
    </form>
    ${message}
</body>
</html>
