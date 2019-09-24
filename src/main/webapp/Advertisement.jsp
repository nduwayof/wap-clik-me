<%--
  Created by IntelliJ IDEA.
  User: bsur9
  Date: 9/23/2019
  Time: 6:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
    <link href="resources/css/ads.css" rel="stylesheet" type="text/css">

</head>
<body>



        <div class="ads">
           <figure>
                <img src="images/resources/admin2.jpg" alt="">
          </figure>

                <form method="post" action="addAds"  enctype="multipart/form-data"   id="ads">
                    <input type="hidden" name="test" value="">
                    <div class="attachments">

                                <label class= "image">
                                    <input type="file" name="image" id="image">
                                </label>

                               <label class="title">
                                    <input type="text" name="txtTitle">
                                </label>

                        <label class="company">
                         <input type="text" name="company">
                        </label>
                        <label class="link">
                            <select>
                                <option name="link1"><a href="https://www.youtube.com/watch?v=8sHU4HQtZo8&list=RDqJBeqxfH5JU&index=6">youtube</a></option>
                                <option name="link2"><a href="https://www.amazon.com/amazonprime?_encoding=UTF8&ref_=nav_prime_member_btn">amazon</a></option>
                                <option name="link3"><a>google</a></option>
                            </select>
                        </label>
                        <button type="submit" id="btn">Add Ads</button>
                    </div>
                </form>
            </div>



</body>
</html>
