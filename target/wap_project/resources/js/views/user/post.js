$(function () {
    // using IIFE to avoid leak to global environmen
    (function () {
        $(document).on('submit','#addPost',function(e) {
            e.preventDefault();
            $('#alert-info').html('Saving......');
            var formData = new FormData(this);
            $.ajax({
                url: $(this).attr("action"),
                type: 'POST',
                data: formData,
                success: addPostSuccessFunction,
                cache: false,
                contentType: false,
                processData: false
            });
        });
        
        function addPostSuccessFunction(data) {

        }


    })();
    
});