$(function () {

    $(document).on('click','a.followUser',function (e) {
        e.preventDefault();
        alert(parseInt($(this).attr('id')));
        $.ajax({
            url: "followUser",
            data:{
                postId:parseInt($(this).attr('id'))},
            success : successFunctionFollow,
            error : errorFuctionFollow

        });
    })

    function successFunctionFollow(data){
        console.log(data);
    }
    function errorFuctionFollow(en,status,exceptions) {
        console.log(en+status+exception);
    }
    
})