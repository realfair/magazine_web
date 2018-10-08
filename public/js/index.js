$(document).ready(function(){
	$("#comment-form").submit(function(e){
		e.preventDefault();

       $.ajax({  
            url: "save_comment",  
            type: "POST",  
            data: new FormData(this),  
            contentType: false,  
            processData:false,  
            success: function(data)  
            {    
                 $("#comm_response").show().html(data);
            }  
       }); 
	});
});