(function () {
    $("#btn").click(function () {

        $.ajax({
            url: 'login',
            type: 'post',
            data : {
               username: $('#username').val(),
                password: $('#password').val()
            },
            success:function (data) {
                
            },
            error: function () {
                
            }

        });
    })
});