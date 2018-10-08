<?php 
require $_SERVER['DOCUMENT_ROOT'].'/magazine_web/classes_loader.php';
if(isset($_POST['name']) && isset($_POST['email']) && isset($_POST['comment'])){
	$name=$function->sanitize($_POST['name']);
	$email=$function->sanitize($_POST['email']);
	$comment=$function->sanitize($_POST['comment']);
	$article_id=(int)$function->sanitize($_POST['article']);
	//save comment
	$save_status=$article->save_article_comment($article_id,$name,$email,$comment);
	if($save_status){
		echo "Igitekerezo cyanyu twacyakiriye. Kiragaragara nikimara Gusumwa. Murakoze!";
	}else{
		echo "Hari Ikibazo ntabwo Ubu tubasha kwakira Ibitekerezo.";
	}
}else{
	echo "Please submit all Field Please.";
}
?>