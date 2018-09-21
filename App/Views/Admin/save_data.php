<?php
require $_SERVER['DOCUMENT_ROOT'].'/magazine_web/classes_loader.php';
$success="200";
$error="403";
if(isset($_POST['input'])){
	if(is_array($_POST['input'])){
		$input=$_POST['input'];
		//get action
		$action=$function->sanitize($input[0]);
		if($action=="save_user"){
			//grab inputs
			$names=$function->sanitize($input[1]);
			$email=$function->sanitize($input[2]);
			$phone=$function->sanitize($input[3]);
			$category=$function->sanitize($input[4]);
			$password=$function->sanitize($input[5]);
			if(strlen($names)>=5 && $function->isValidEmail($email)){
				if(strlen($phone)>=9){
					$status=$user->save_user($names,$email,$phone,$category,$password);
					if($status){
						echo "200";
					}else{
						echo "system Error Please contact system administrator.";
					}
				}else{
					echo "Phone number is not Correct";
				}
			}else{
				echo "Names must be atleast 5 Characters and check email.";
			}
		}elseif($action=="save_category"){
			//grab inputs
			$category=$function->sanitize($input[1]);
			$description=$function->sanitize($input[2]);
			$status=$article->save_article_category($category,$description);
			if($status){
				echo $success;
			}else{
				echo $error;
			}
		}elseif($action=="save_article"){
			//grab inputs
			$title=$input[1];
			$description=$function->sanitize($input[2]);
			$category=$function->sanitize($input[3]);
			$body=htmlspecialchars($input[4]);
			$author_id=$function->sanitize($input[5]);
			//echo $description;
			$save_status=$article->save_article($title,$description,$body,$category,$author_id);
			if($save_status){
				echo "saved now";
			}else{
				echo "Errors Please";
			}
		}elseif($action=="update_article"){
			$title=$input[1];
			$description=$function->sanitize($input[2]);
			$category=$function->sanitize($input[3]);
			$body=$input[4];
			$article_id=(int)$function->sanitize($input[6]);
			$status=$article->check_article_id($article_id);
			if($status){
				
			}else{
				echo $error;
			}
		}
		elseif($action=="publish_article"){
			//grab inputs
			$article_id=$function->sanitize($input[1]);
			$article_status='PUBLISHED';
			$status=$article->change_article_status($article_id,$article_status);
			if($status){
				echo $success;
			}else{
				echo $error;
			}
		}elseif($action=="unpublish_article"){
			//grab inputs
			$article_id=$function->sanitize($input[1]);
			$article_status='SUBMITTED';
			$status=$article->change_article_status($article_id,$article_status);
			if($status){
				echo $success;
			}else{
				echo $error;
			}
		}
		else{
			echo "Specify Action Please.";
		}
	}else{
		echo "500";
	}
}else{
	echo "500";
}
?>