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

                <form method="post" action="ads"  enctype="multipart/form-data"   id="ads">
                    <input type="hidden" name="test" value="">
                    <div class="attachments">

                                <label class= "image">
                                    <input type="file" name="image" id="image">
                                </label>

                               <label class="title">
                                    <input type="text" name="txtTitle">
                                </label>
                        <label class="company">
                            <input type="text" name="txtTitle">
                        </label>
                        <label>
                            <select>
                                <option name="campany1">youtube</option>
                                <option name="campany1">amazon</option>
                                <option name="campany1">google</option>
                            </select>
                        </label>



                                <button type="submit">Post</button>
                    </div>
                </form>
            </div>



</body>
</html>
