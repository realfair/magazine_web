<?php 
$root_url=$_SERVER['DOCUMENT_ROOT'].'/magazine_web/classes_loader.php';
require $root_url;
if(isset($_GET['id']) && isset($_GET['title'])){
	//capture inputs
	$article_id=(int)$function->sanitize($_GET['id']);
	$title=$function->sanitize($_GET['title']);
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
				<div class="world-nav cat-menu">         
					<ul class="list-inline">                       
						<li class="active"><a href="#">Us</a></li>
						<li><a href="#">Crime</a></li>
						<li><a href="#">Local</a></li>
						<li><a href="#">Offbet</a></li>
						<li><a href="#">Openion</a></li>
					</ul> 					
				</div>
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
														<img class="img-responsive" src="../assets/IMG/<?php echo $poster['filename']; ?>" alt="" />
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
															<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
															<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
															<li class="comments"><i class="fa fa-comment-o"></i><a href="#">189</a></li>
														</ul>
													</div>
													<h2 class="entry-title">
														<?php echo $title; ?>
													</h2>
													<div class="entry-content">
														<?php 
														foreach ($article_info as $key => $value) {
															if(strlen($value['text'])>1000){
																echo "<p>".htmlspecialchars_decode(substr($value['text'], 0,500))." ....</p>";
															}else{
																echo "<p>".htmlspecialchars_decode(substr($value['text'], 0,500))."</p>";
															}
														}
														?>
														
														<div class="row post-inner-image">
															<div class="col-sm-4">
																<img class="img-responsive" src="images/post/inner1.jpg" alt="" />
															</div>
															<div class="col-sm-4">
																<img class="img-responsive" src="images/post/inner2.jpg" alt="" />
															</div>
															<div class="col-sm-4">
																<img class="img-responsive" src="images/post/inner3.jpg" alt="" />
															</div>
														</div><!-- post-inner-image -->
														<?php 
														foreach ($article_info as $key => $value) {
															if(strlen($value['text'])>1000){
																echo "<p>".htmlspecialchars_decode(substr($value['text'], 501,strlen($value['text'])))."</p>";
															}
														}
														?>
														<ul class="list-inline share-link">
															<li><a href="#"><img src="images/others/s1.png" alt="" /></a></li>
															<li><a href="#"><img src="images/others/s2.png" alt="" /></a></li>
															<li><a href="#"><img src="images/others/s3.png" alt="" /></a></li>
															<li><a href="#"><img src="images/others/s4.png" alt="" /></a></li>
														</ul>
													</div>
												</div>
											</div><!--/post--> 
										</div><!--/.section-->
									</div><!--/.left-content-->
								</div>
								
								
							
							</div>
						</div><!--/#site-content-->
						<div class="row">
							<div class="col-sm-12">								
								<div class="post google-add">
									<div class="add inner-add text-center">
										<a href="#"><img class="img-responsive" src="images/post/google-add.jpg" alt="" /></a>
									</div><!--/.section-->
								</div><!--/.google-add-->
								<?php 
								include 'App/Views/Article/comments.php';
								?>								
								<?php 
								include 'App/Views/Article/similar_articles.php';
								?>
								<!--/.section -->	
							</div>
						</div>
					</div><!--/.col-sm-9 -->	
					
					<div class="col-sm-3">
						<div id="sitebar">
							<div class="widget">
								<div class="add featured-add">
									<a href="#"><img class="img-responsive" src="images/post/add/add1.jpg" alt="" /></a>
								</div>
							</div><!--/#widget-->
							
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
	
	<footer id="footer">
		<div class="footer-top">
			<div class="container text-center">
				<div class="logo-icon"><img class="img-responsive" src="images/presets/preset1/logo-icon.png" alt="" /></div>
			</div>
		</div>
		<div class="footer-menu">
			<div class="container">
				<ul class="nav navbar-nav">                       
					<li><a href="#">Home</a></li>
					<li><a href="#">About</a></li>
					<li><a href="#">Products</a></li>
					<li><a href="#">Career</a></li>
					<li><a href="#">Advertisement</a></li>
					<li><a href="#">Team</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul> 
			</div>
		</div>
		<div class="bottom-widgets">
			<div class="container">
				<div class="col-sm-4">
					<div class="widget">
						<h2>Category</h2> 
						<ul>
							<li><a href="#">Business</a></li>
							<li><a href="#">Politics</a></li>
							<li><a href="#">Sports</a></li>
							<li><a href="#">World</a></li>
							<li><a href="#">Technology</a></li>
						</ul>
						<ul>
							<li><a href="#">Environment</a></li>
							<li><a href="#">Health</a></li>
							<li><a href="#">Entertainment</a></li>
							<li><a href="#">Lifestyle</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="widget">
						<h2>Editions</h2> 
						<ul>
							<li><a href="#">United States</a></li>
							<li><a href="#">China</a></li>
							<li><a href="#">India</a></li>
							<li><a href="#">Maxico</a></li>
							<li><a href="#">Middle East</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="widget">
						<h2>Tag</h2> 
						<ul>
							<li><a href="#">Gallery</a></li>
							<li><a href="#">Sports</a></li>
							<li><a href="#">Featured</a></li>
							<li><a href="#">World</a></li>
							<li><a href="#">Fashion</a></li>
						</ul>
						<ul>
							<li><a href="#">Environment</a></li>
							<li><a href="#">Health</a></li>
							<li><a href="#">Entertainment</a></li>
							<li><a href="#">Lifestyle</a></li>
							<li><a href="#">Business</a></li>
						</ul>
						<ul>
							<li><a href="#">Tech</a></li>
							<li><a href="#">Movie</a></li>
							<li><a href="#">Music</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="widget">
						<h2>Products</h2> 
						<ul>
							<li><a href="#">Ebook</a></li>
							<li><a href="#">Baby Product</a></li>
							<li><a href="#">Magazine</a></li>
							<li><a href="#">Sports Elements</a></li>							
							<li><a href="#">Technology</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container text-center">
				<p><a href="#">NewsPress </a>&copy; 2015 </p>
			</div>
		</div>		
	</footer>
		
	<!--/Preset Style Chooser--> 
	<div class="style-chooser">
		<div class="style-chooser-inner">
			<a href="#" class="toggler"><i class="fa fa-life-ring fa-spin"></i></a>
			<h4>Presets Color</h4>
			<ul class="preset-list clearfix">
				<li class="preset1 active" data-preset="1"><a href="#" data-color="preset1"></a></li>
				<li class="preset2" data-preset="2"><a href="#" data-color="preset2"></a></li>
				<li class="preset3" data-preset="3"><a href="#" data-color="preset3"></a></li>        
				<li class="preset4" data-preset="4"><a href="#" data-color="preset4"></a></li>
				<li class="preset5" data-preset="5"><a href="#" data-color="preset5"></a></li>
				<li class="preset6" data-preset="6"><a href="#" data-color="preset6"></a></li>
			</ul>
		</div>
    </div>
    <?php 
    include 'App/Views/Home/script.php';
    ?>

</body>
</html>