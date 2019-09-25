<form method="post" action="addPost"  enctype="multipart/form-data"   id="addPost">
    <textarea name="postDetails" id="postDetails" rows="2" placeholder="write something"></textarea>
    <input type="hidden" name="test" value="tttssc">
    <div class="attachments">
        <ul>
            <li>
                <i class="fa fa-music"></i>
                <label class="fileContainer">
                    <input type="file" name="image" id="image">
                </label>
            </li>
            <li>
                <i class="fa fa-image"></i>
                <label class="fileContainer">
                    <input type="file">
                </label>
            </li>
            <li>
                <i class="fa fa-video-camera"></i>
                <label class="fileContainer">
                    <input type="file">
                </label>
            </li>
            <li>
                <i class="fa fa-camera"></i>
                <label class="fileContainer">
                    <input type="file">
                </label>
            </li>
            <li>
                <button type="submit">Post</button>
            </li>
        </ul>
        <div id="savingPost" style="display: none">
            <hr>
            Saving post..... Please wait!!
        </div>
    </div>
</form>