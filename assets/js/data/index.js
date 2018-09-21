$(document).ready(function(){
	var input=[];
	$("#frm_add_user").submit(function(e){
		e.preventDefault();
		var names=$("#names").val();
		var email=$("#email").val();
		var phone=$("#phone").val();
		var category=$("#category").val();
		var password=$("#password").val();
		var cpassword=$("#cpassword").val();
		input[0]="save_user";
		input[1]=names;
		input[2]=email;
		input[3]=phone;
		input[4]=category;
		input[5]=password;
		if(password==cpassword){
			if(password.length>=6){
				saveData(input,"dashboard?action=users&status=success");
			}else{
				alert("Password must be atleast 6 Characters.");
			}
		}else{
			alert("Password do not match");
		}
	});
	$("#frm_add_category").submit(function(e){
		e.preventDefault();
		var Category=$("#Category").val();
		var Description=$("#Description").val();
		input[0]="save_category";
		input[1]=Category;
		input[2]=Description;
		saveData(input,"dashboard?action=categories&status=success");
	});
	$("#frm_add_article").submit(function(e){
		e.preventDefault();
		var title=$("#title").val();
		var description=$("#description").val();
		var category=$("#category").val();
		var body=$("#elm1").val();
		input[0]="save_article";
		input[1]=title;
		input[2]=description;
		input[3]=category;
		input[4]=body;
		input[5]=current_user;
		if(current_article!=null && current_article!=undefined){
			input[0]="update_article";
			input[6]=current_article;
			saveData(input,"dashboard?action=articles&status=success");
		}else{
			if(body.length>=5){
				saveData(input,"dashboard?action=articles&status=success");
			}
		}
		
	});
	$("a.btn_publish").click(function(){
		var action=$(this).attr("action");
		input[0]="publish_article";
		input[1]=action;
		if(confirm("You Are about to Publish Article.")){
			saveData(input,"dashboard");
		}
	});
	$("a.btn_unpublish").click(function(){
		var action=$(this).attr("action");
		input[0]="unpublish_article";
		input[1]=action;
		if(confirm("You Are about to Unpublish Article.")){
			saveData(input,"dashboard");
		}
	});

	//upload banner
	$("#file").on("change",function(){
		var file=document.getElementById("file").files[0];
		var name = document.getElementById("file").files[0].name;
		var ext = name.split('.').pop().toLowerCase();
	  if(jQuery.inArray(ext, ['gif','png','jpg','jpeg']) == -1) 
	  {
      $("#file").val("");
	   alert("Invalid Image File");
	  }else{
	  var reader = new FileReader();
    reader.onload = function(){
      var dataURL = reader.result;
      var output = document.getElementById('preview');
      output.src = dataURL;
    };
    reader.readAsDataURL(file);
	  }

	});
	$("#frm_add_banner").submit(function(e){
		e.preventDefault();
		var ads_id=$("#ads_id").val();
		var url='save_banner';
       $.ajax({  
            url:url,  
            method:"POST",  
            data:new FormData(this),  
            contentType:false,  
            //cache:false,  
            processData:false,  
            success:function(data)  
            {
              if(data.match("200")){
              	location.reload();
              }else{
              	alert(data);
              }
            }  
       });
	});
	$("#poster").on("change",function(){
		var file=document.getElementById("poster").files[0];
		var name = document.getElementById("poster").files[0].name;
		var ext = name.split('.').pop().toLowerCase();
	  if(jQuery.inArray(ext, ['gif','png','jpg','jpeg']) == -1) 
	  {
      $("#poster").val("");
	   alert("Invalid Image File");
	  }else{
	  var reader = new FileReader();
    reader.onload = function(){
      var dataURL = reader.result;
      var output = document.getElementById('preview');
      output.src = dataURL;
    };
    reader.readAsDataURL(file);
	  }

	});
	//add article poster
	$("#frm_upload_poster").submit(function(e){
		e.preventDefault();
		var article_id=$("#article_id").val();
       $.ajax({  
            url:"save_poster",  
            method:"POST",  
            data:new FormData(this),  
            contentType:false,  
            cache:false,  
            processData:false,  
            success:function(data)  
            {
              if(data.match("200")){
              	location.reload();
              }else{
              	alert(data);
              }
            }  
       });
	});
});

function saveData(input,redirectUrl){
	var url="save_data";
	$.post(url,{
		input:input
	},function(response){
		if(response.match("200")){
			window.location=redirectUrl;
		}else{
			alert(response);
		}
	});
}