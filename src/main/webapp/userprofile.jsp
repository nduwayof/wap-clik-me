<%--
  Created by IntelliJ IDEA.
  User: BlessedLove
  Date: 9/23/2019
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User profile</title>
    <style>

          .userform{

            display: block;
            width: 400px;
            height: 200px;
            border: solid 3px #b1dfbb;



        }

  #space{

      height: 15px;


  }


    </style>
</head>
<body>
<div class="userform" id="space">
 <form action="userprofile" method="post" class="form">

    <div>
    <label>FirstName   <input type="text" name="fname" required title="your first name is important"></label>
    </div>
     <div class="space"></div>
     <div>
    <label>LastName     <input type="text" name="laname"required title="your last name is required"></label>
     </div>
     <div class="space"></div>
 <div>
     <label>Email       <input type="email" name="email" required></label></div>
     <div class="space"></div>
    <div>
        <label>password  <input type="password" name="pass" required></label></div>
     <div class="space"></div>
    <div>
        <label>Followers   <input type="number" name="follow" required></label></div>

                        <button type="submit">save</button>
     <p>hello</p>

 </form>
</div>

</body>
</html>
