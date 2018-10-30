<?php 
$root_url=$_SERVER['DOCUMENT_ROOT'].'/magazine_web/access/classes_loader.php';
require $root_url;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'App/Views/Home/meta.php'; ?>	
	<!--title-->
    <title>RedBlueJd</title>
	<?php include 'App/Views/Home/stylesheet.php'; ?>	
</head><!--/head-->
<body>
	<div id="main-wrapper" class="homepage">
		<!--navigation--> 
		<?php include 'App/Views/Home/header.php'; ?>
		<!--/#navigation--> 
		<div class="container">
			<div class="section">
				<div class="row">
					<div class="site-content col-md-9">
						<div class="row">
							<div class="col-sm-8">
								<div id="home-slider">
									<?php include 'App/Views/Home/featured_posts.php'; ?>
								</div>
							</div>
							<div class="col-sm-4">
								<?php 
								include 'App/Views/Home/popular_post.php';
								?>
							</div>
						</div>
						<div class="row">
							<?php 
							include 'App/Views/Home/second_row.php';
							?>
						</div>
					</div><!--/#content--> 
					<?php include 'App/Views/Banner/home_first_cube.php'; ?>
					<!--/#add--> 
				</div>
			</div><!--/.section--> 
			<?php include 'App/Views/Banner/home_first_leaderboard.php'; ?>			
			<div class="section">				
				<div class="latest-news-wrapper">
					<h1 class="section-title">Ibyegeranyo.</h1>	
					<div id="latest-news">
						<?php 
						include 'App/Views/Home/single_row_content.php';
						?>
					</div>
				</div><!--/.latest-news-wrapper-->
			</div><!--/.section-->
			
			<div class="section">
				<div class="row">
					<div class="col-md-9 col-sm-8">
						<div id="site-content">
							<div class="row">
								<div class="col-md-8 col-sm-6">
									<div class="left-content">
										<?php include 'App/Views/Home/ubucukumbuzi.php'; ?>
										<!--/.Ubucukumbuzi-->
										<?php include 'App/Views/Home/technology.php'; ?>
										<!--/technology-news--> 
										<?php include'App/Views/Banner/home_second_leaderboard.php'; ?>
										<!--/.section add-->
										<!-- Sports -->
										<?php include 'App/Views/Home/report.php'; ?>
										<!--  -->
										<?php //include 'App/Views/Home/gallery.php'; ?>
										<!--/photo-gallery--> 
										
										<!--/.lifestyle -->
										<?php  include 'App/Views/Home/ubugeni.php';?>
										<!--/.health-section -->
										
									</div><!--/.left-content-->
								</div>
								<div class="col-md-4 col-sm-6">
									<div class="middle-content">
										<?php include 'App/Views/Home/architecture.php'; ?>
										<!--/.sports-section -->
										<?php include 'App/Views/Banner/home_third_sky.php'; ?>										
										<div class="section video-section">
											<?php 
											include 'App/Views/Article/popular_articles.php';
											?>
										</div> <!-- /.video-section -->
										<?php include 'App/Views/Home/ads.php'; ?>
										<!-- /.business-section -->
										
									</div><!--/.middle-content-->
								</div>
							</div>
						</div><!--/#site-content-->
					</div>
					<div class="col-md-3 col-sm-4">
						<div id="sitebar">
							<?php include 'App/Views/Utils/follow_us.php'; ?>
							<!--/#widget-->
							<?php include 'App/Views/Banner/home_first_sky.php'; ?>
							<?php 
							include 'App/Views/Article/recent_articles.php';
							?>							
							<?php include 'App/Views/Banner/home_second_sky.php'; ?>						
							<div class="widget weather-widget">
								<div id="weather-widget"></div>
							</div><!--/#widget-->
							<?php include 'App/Views/Banner/widget.php'; ?>
							<?php include 'App/Views/Banner/home_fourth_sky.php'; ?>
							<!--/#widget-->
							
						</div><!--/#sitebar-->
					</div>
				</div>				
			</div><!--/.section-->
		</div><!--/.container-->
		<?php //include 'App/Views/Utils/twitter-feeds.php'; ?>
		<!--/#twitter-feed-->
		<?php 
			//include_once 'App/Views/Utils/footer_widgets.php';
		?><!--/.footer-widget-->
	</div><!--/#main-wrapper--> 
	<?php 
	include_once 'App/Views/Utils/web_footer.php';
	?>	
	<?php 
	include_once 'App/Views/Utils/subscribe_modal.php';
	?>
	
    <?php 
    include 'App/Views/Home/script.php';
    ?>

</body>
</html>