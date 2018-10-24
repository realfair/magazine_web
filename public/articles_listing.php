<?php 
require $_SERVER['DOCUMENT_ROOT'].'/magazine_web/classes_loader.php';
if(isset($_GET['category'])){
	$category_id=(int)$function->sanitize($_GET['category']);
	//check if category is valid
	$check_category=$article->check_article_category($category_id);
	if(!$check_category){
		backHome();
	}else{
		$category_name=$article->get_article_category($category_id);
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
    <title><?php echo $category_name; ?> | News RedBlue Jd</title>
	<?php include 'App/Views/Home/stylesheet.php'; ?>
	<script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5bb482467283210011cb5ecc&product='inline-share-buttons' async='async'></script>	
</head><!--/head-->
<!--/head-->
<body>
	<div id="main-wrapper" class="page">
		<?php include 'App/Views/Home/article_header.php'; ?>
		<!--/#navigation--> 

	
		<div class="container">
			<div class="page-breadcrumbs">
				<h1 class="section-title">
					<?php echo $category_name; ?>
				</h1>	
			</div>
			<div class="section">
				<div class="row">
					<div class="col-sm-9">
						<div id="site-content" class="site-content">
							<div class="row">
								<div class="col-sm-12">
									<div class="left-content">
										<div class="world-news">
											<?php 
											include 'App/Views/Listing/top_article.php';
											?>
											<!--/post--> 
										</div><!--/.section-->		
									</div><!--/.left-content-->
								</div>
							
							</div>
						</div><!--/#site-content-->
						<div class="row">
							<div class="col-sm-12">
								<div class="section">
									<?php 
									include 'App/Views/Listing/first_section.php';
									?>
								</div><!--/.section -->	
								<?php include 'App/Views/Banner/article_first_leaderboard.php'; ?>								
								<div class="section">
									<?php 
									//include 'App/Views/Listing/second_section.php';
									?>
								</div><!--/.section -->	
							</div>
						</div>
						<?php 
						//include 'App/Views/Listing/pagination.php';
						?>
					</div><!--/.col-sm-9 -->	
					
					<div class="col-sm-3">
						<div id="sitebar">
							<?php include 'App/Views/Banner/article_first_cube.php'; ?>
							<?php include 'App/Views/Utils/follow_us.php'; ?>
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
	<!--/End:Preset Style Chooser-->
	<?php 
		include 'App/Views/Utils/listing_script.php';
	?>

</body>
</html>