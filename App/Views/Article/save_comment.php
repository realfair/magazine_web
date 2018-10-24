<?php 
require $_SERVER['DOCUMENT_ROOT'].'/magazine_web/access/classes_loader.php';
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
}elseif($_POST['searched']){
	$input=$function->sanitize($_POST['searched']);
	//get all related articles
	echo "<p><h4>Washakishije: ".$input.'</h4></p><br>';
	$search_result=$article->search_article($input);
	if(count($search_result)>0){
		?>
		<div class="row" style="overflow-y: auto;height: 400px;">
			<?php 
				foreach ($search_result as $key => $post) {
					$Posters=$article->get_article_poster($post['article_id']);
					if($post['status']=='PUBLISHED'){
						?>
						<div class="col-sm-12 col-sm-6">
							<div class="post small-post">
								<div class="entry-header">
									<div class="entry-thumbnail">
									<?php 
									foreach ($Posters as $key => $poster) {
										?>
									<img class="img-responsive" src="../assets/IMG/<?php echo $poster['filename']; ?>" alt="" />
										<?php
									}
									?>
									</div>
								</div>
								<div class="post-content">								
									<div class="entry-meta">
									</div>
									<h2 class="entry-title">
										<a href="article?id=<?php echo $post['article_id']; ?>&title=<?php echo $post['title']; ?>">
											<?php
											if(strlen($post['title'])>100){
												echo substr($post['title'],0,100).'...SOMA BYOSE.....';
											}else{
												echo $post['title'];
											}
											?>
										</a>
									</h2>
								</div>
							</div><!--/post--> 
						</div>
						<?php
					}
				}
			?>
		</div>
		<?php
	}else{

	}
}
else{
	echo "Please submit all Field Please.";
}
?>