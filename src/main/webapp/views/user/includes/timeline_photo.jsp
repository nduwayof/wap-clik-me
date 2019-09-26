<div class="feature-photo">

    <figure>
        <c:if test="${not empty user.timelinePhoto}">
            <img src="uploads/user/cover/${user.timelinePhoto}" alt="" style="height: 350px">
        </c:if>
        <c:if test="${empty user.timelinePhoto}">
            <img src="resources/images/resources/timeline-1.jpg" alt="">
        </c:if>
    </figure>
    <div class="add-btn">
        <span> ${user.followers.size()} followers</span>
        <a href="time-line.html#" title="" data-ripple="">Add Friend</a>
    </div>
    <form class="edit-phto" id="editCoverPhotoForm" action="editCoverPhoto" enctype="multipart/form-data">
        <i class="fa fa-camera-retro"></i>
        <label class="fileContainer" id="editCoverPhotoLable">
            <span id="editCoverPhotoLabelSpan">Edit Cover Photo</span>
            <input type="file" name="coverPhoto" id="coverPhoto"/>
        </label>
    </form>
    <div class="container-fluid">
        <div class="row merged">
            <div class="col-lg-2 col-sm-3">
                <div class="user-avatar">
                    <figure>
                        <c:if test="${not empty user.image}">
                            <img src="uploads/user/display/${user.image}" style="height: 170px" alt="">
                        </c:if>
                        <c:if test="${empty user.image}">
                            <img src="resources/images/resources/user-avatar.jpg" alt="">
                        </c:if>
                        <form class="edit-phto" id="displayPhotoForm" action="editDisplayPhoto" method="post" enctype="multipart/form-data">

                            <i class="fa fa-camera-retro"></i>
                            <label class="fileContainer" id="displayPhotoLabel">
                                <span id="editDisplayPhotoLabelSpan">Edit Display Photo</span>
                                <input type="file" name="displayPhoto" id="displayPhoto"/>
                            </label>
                        </form>
                    </figure>
                </div>
            </div>
            <div class="col-lg-10 col-sm-9">
                <div class="timeline-info">
                    <ul>
                        <li class="admin-name">
                            <h5>${user.firstName} ${user.lastName}</h5>
                            <span>${user.access}</span>
                        </li>
                        <li>
                            <a class="active" href="time-line.html" title="" data-ripple="">time line</a>
                            <a class="" href="timeline-photos.html" title="" data-ripple="">Photos</a>
                            <a class="" href="timeline-videos.html" title="" data-ripple="">Videos</a>
                            <a class="" href="timeline-friends.html" title="" data-ripple="">Friends</a>
                            <a class="" href="timeline-groups.html" title="" data-ripple="">Groups</a>
                            <a class="" href="about.html" title="" data-ripple="">about</a>
                            <a class="" href="time-line.html#" title="" data-ripple="">more</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>