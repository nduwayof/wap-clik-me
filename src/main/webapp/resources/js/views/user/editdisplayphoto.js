$(function () {
    $(document).on('change','#displayPhoto',function () {
        $('#displayPhotoForm').submit();
    })

    $(document).on('submit','#displayPhotoForm',function(e){
        e.preventDefault();
        $('#editDisplayPhotoLabelSpan').text('Uploading.....');
        var formData = new FormData(this);
        $.ajax({
            url: $(this).attr("action"),
            type: 'POST',
            data: formData,
            success: editDisplayPhotoSuccessFunction,
            error: editDisplayPhotoErrorFunction,
            cache: false,
            contentType: false,
            processData: false
        });
    })

    function editDisplayPhotoSuccessFunction(data){
        console.log(data);
        $('#fileContainer').mousemove();
        $('#editDisplayPhotoLabelSpan').text('Upload Successful');
        window.setTimeout(function () {
            location.reload();
        },1000);

    }

    function editDisplayPhotoErrorFunction(err,status,exception) {
        $('#editDisplayPhotoLabelSpan').text('Error Uploading image!!');
        console.log(err + status + exception );
    }

})