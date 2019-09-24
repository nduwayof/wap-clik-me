$(function () {
    // using IIFE to avoid leak to global environmen
    (function () {
        $(document).on('submit','#addPost',function(e) {
            e.preventDefault();
            alert('clicked');
            //$('#alert-info').html('Saving......');
            var formData = new FormData(this);
            alert(formData);
            $.ajax({
                url: $(this).attr("action"),
                type: 'POST',
                data: formData,
                success: addPostSuccessFunction,
                erro: addPostSuccessFunction,
                cache: false,
                contentType: false,
                processData: false
            });
        });
        
        function addPostSuccessFunction(data) {
            alert(data);
        }
        function addPostSuccessFunction(err,status,exception){
            console.log(err + status + exception);
        }


    })();
    
});