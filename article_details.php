<?php 
$root_url=$_SERVER['DOCUMENT_ROOT'].'/magazine_web/access/classes_loader.php';
require $root_url;
if(isset($_GET['id']) && isset($_GET['title'])){
	//capture inputs
	$article_id=(int)$function->sanitize($_GET['id']);
	$title=$function->sanitize($_GET['title']);
	$category_id=0;
	//check if article_id is valid
	$check_status=$article->check_article_id($article_id);
	if(!$check_status){
		backHome();
	}else{
		//get article information
		$article_info=$article->get_article($article_id);
		$article_category="";
		$author_name="";
		foreach ($article_info as $key => $post) {
			$article_category=$article->get_article_category($post['category_id']);
			$author_name=$article->get_article_author($post['author_id']);
			$category_id=(int)$post['category_id'];
		}
		//update article views
		$article_views=$article->get_article_views($article_id);
		$article_views+=1;
		$update_views=$article->update_article_views($article_id,$article_views);
		if(!$update_views){
			backHome();
		}
	}
}else{
	backHome();
}

function backHome(){
	header("Location:index");
	exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'App/Views/Home/meta.php'; ?>	
	<!--title-->
    <title><?php echo $title; ?> | News RedBlue Jd</title>
	<?php include 'App/Views/Home/stylesheet.php'; ?>
	<script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5bb482467283210011cb5ecc&product='inline-share-buttons' async='async'></script>	
</head><!--/head-->
<body>
	<div id="main-wrapper" class="page">
		<?php include 'App/Views/Home/article_header.php'; ?>
		<!--/#navigation--> 

	
		<div class="container">
			<div class="page-breadcrumbs">
				<h1 class="section-title">
					<?php echo $article_category; ?>
				</h1>	
			</div>
			<div class="section">
				<div class="row">
					<div class="col-sm-9">
						<div id="site-content" class="site-content">
							<div class="row">
								<div class="col-sm-12">
									<div class="left-content">
										<div class="details-news">											
											<div class="post">
												<div class="entry-header">
													<div class="entry-thumbnail">
														<?php 
														foreach ($article_info as $key => $value) {
															$Posters=$article->get_article_poster($value['article_id']);
														}
														?>
														<?php 
														foreach ($Posters as $key => $poster) {
															?>
														<img class="img-responsive" src="access/assets/IMG/<?php echo $poster['filename']; ?>" alt="" />
															<?php
														}
														?>
													</div>
												</div>
												<div class="post-content">								
													<div class="entry-meta">
														<ul class="list-inline">
															<li class="posted-by">
																<i class="fa fa-user"></i> by
																<a href="#">
																	<?php echo $author_name; ?>
																</a>
															</li>
															<li class="publish-date">
																<a href="#">
																	<i class="fa fa-clock-o"></i>
																	<?php 
																	foreach ($article_info as $key => $value) {
																		echo $function->string_date_format($value['validate_date']);
																	}
																	?>
																</a>
																</li>
															<li class="views">
																<a href="#">
																	<i class="fa fa-eye"></i>Yasuwe inshuro:<?php echo $article_views; ?>
																</a>
															</li>
															<li class="comments">
																<i class="fa fa-comment-o"></i>
																<a href="#">Yavuzweho:</a>
															</li>
														</ul>
													</div>
													<h2 class="entry-title">
														<?php echo $title; ?>
													</h2>

													<div class="entry-content">
														<?php 
														foreach ($article_info as $key => $value) {
															if(strlen($value['text'])>1000){
																echo "<p>".htmlspecialchars_decode($value['text'])." ....</p>";
															}else{
																echo "<p>".htmlspecialchars_decode($value['text'])."</p>";
															}
														}
														?>
														<?php 
														//include 'App/Views/Article/gallery.php';
														?>													
												</div>
											</div><!--/post--> 
										</div><!--/.section-->
									</div><!--/.left-content-->
								</div>
							</div>
						</div>
					</div>
						<!--/#site-content-->
						<div class="row">
							<div class="col-sm-12">								
								<?php include 'App/Views/Banner/article_first_leaderboard.php'; ?>
								<?php 
								include 'App/Views/Article/similar_articles.php';
								?>
								<?php 
								include 'App/Views/Article/comments.php';
								?>								
								<!--/.section -->	
							</div>
						</div>
					</div><!--/.col-sm-9 -->	
					
					<div class="col-sm-3">
						<div id="sitebar">
							<?php 
								include 'App/Views/Banner/article_first_cube.php';
							?>
							<!--/#widget-->
							
							<div class="widget follow-us">
								<h1 class="section-title title">Follow Us</h1>
								<ul class="list-inline social-icons">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									<li><a href="#"><i class="fa fa-youtube"></i></a></li>
								</ul>
							</div><!--/#widget-->
							<?php 
							include 'App/Views/Article/recent_articles.php';
							?>
							<!--/#widget-->
						</div><!--/#sitebar-->
					</div>
				</div>				
			</div><!--/.section-->
		</div><!--/.container-->
	</div><!--/#main-wrapper--> 
	<?php 
	include_once 'App/Views/Utils/web_footer.php';
	?>
    <?php 
    include 'App/Views/Home/script.php';
    ?>

</body>
</html>