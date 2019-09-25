$(document).ready(function () {

    $('#save_user').submit(function(event){
        event.preventDefault();
        const password = $('#password').val();
        const confirmPassword = $('#confirmPassword').val();
        if(password === confirmPassword){
            let form_data = $('#save_user').serialize();
            $.ajax({
                url : '/users',
                method : 'POST',
                data : form_data,
                success : function(data){
                    alert(data);
                }
            });
        }

    });
});