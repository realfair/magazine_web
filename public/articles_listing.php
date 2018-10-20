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
								
								<div class="google-add">
									<div class="add inner-add text-center">
										<a href="#"><img class="img-responsive" src="images/post/google-add.jpg" alt="" /></a>
									</div><!--/.section-->
								</div><!--/.google-add-->
								
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
	<?php 
	include_once 'App/Views/Utils/web_footer.php';
	?>
		
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
	<!--/End:Preset Style Chooser-->
		
	<!--/#scripts--> 
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script> 
	<script type="text/javascript" src="js/moment.min.js"></script> 
	<script type="text/javascript" src="js/jquery.simpleWeather.min.js"></script> 
	<script type="text/javascript" src="js/jquery.sticky-kit.min.js"></script>
	<script type="text/javascript" src="js/jquery.easy-ticker.min.js"></script> 
	<script type="text/javascript" src="js/jquery.subscribe-better.min.js"></script> 
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/switcher.js"></script>

</body>
</html>