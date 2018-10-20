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
      //search articles
      $("#txtSearch").keydown(function(e){
            if(e.keyCode === 13){
                  
            }else{
                  if(this.value!=''){
                        searchArticle(this.value);
                  }
            }
      });
});
function searchArticle(input){
      showLoader();
      $.post("save_comment",{
            searched:input
      },function(response){
            showSearchResult(response);
      });
}
function showSearchResult(output){
      $("#loader").hide();
      $("#div_search").show().html(output);
}
function showLoader(){
      $("#loader").show();

}