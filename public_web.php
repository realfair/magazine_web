<?php 
$root_url=$_SERVER['DOCUMENT_ROOT'].'magazine_web/access/classes_loader.php';
require $root_url;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'App/Views/Home/meta.php'; ?>	
	<!--title-->
    <title>Amakuru RedBlue Jd</title>
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
											<h1 class="section-title title">Watch Video</h1>
											<div class="cat-menu">         
												<a href="listing.html">See all</a>					
											</div>
											<div class="post video-post medium-post">
												<div class="entry-header">
													<div class="entry-thumbnail embed-responsive embed-responsive-16by9">
														<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/-WlqrkXImsk" allowfullscreen></iframe>
													</div>
												</div>
												<div class="post-content">								
													<div class="video-catagory"><a href="#">World</a></div>
													<h2 class="entry-title">
														<a href="news-details.html">Our closest relatives aren't fans of daylight saving time</a>
													</h2>
												</div>
											</div><!--/post-->
											
											<div class="video-post-list">
												<ul>
													<li>
														<div class="post video-post small-post">
															<div class="entry-header">
																<div class="entry-thumbnail embed-responsive embed-responsive-16by9">
																	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/-WlqrkXImsk" allowfullscreen></iframe>
																</div>
															</div>
															<div class="post-content">								
																<div class="video-catagory"><a href="#">World</a></div>
																<h2 class="entry-title">
																	<a href="news-details.html">Our closest relatives aren't fans of daylight saving time</a>
																</h2>
															</div>
														</div><!--/post-->
													</li>
													<li>
														<div class="post video-post small-post">
															<div class="entry-header">
																<div class="entry-thumbnail embed-responsive embed-responsive-16by9">
																	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/-WlqrkXImsk" allowfullscreen></iframe>
																</div>
															</div>
															<div class="post-content">								
																<div class="video-catagory"><a href="#">Business</a></div>
																<h2 class="entry-title">
																	<a href="news-details.html">3 students arrested after body-slamming principal</a>
																</h2>
															</div>
														</div><!--/post-->
													</li>
													<li>
														<div class="post video-post small-post">
															<div class="entry-header">
																<div class="entry-thumbnail embed-responsive embed-responsive-16by9">
																	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/-WlqrkXImsk" allowfullscreen></iframe>
																</div>
															</div>
															<div class="post-content">								
																<div class="video-catagory"><a href="#">World</a></div>
																<h2 class="entry-title">
																	<a href="news-details.html">Our closest relatives aren't fans of daylight saving time</a>
																</h2>
															</div>
														</div><!--/post-->
													</li>
												</ul>
											</div>											
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
							
							<div class="widget meta-widget">
								<h1 class="section-title title">Widget</h1>
								<div class="meta-tab">
									<ul class="nav nav-tabs nav-justified" role="tablist">
										<li role="presentation"><a href="#author" data-toggle="tab"><i class="fa fa-user"></i>Authors</a></li>
										<li role="presentation" class="active"><a href="#comment" data-toggle="tab"><i class="fa fa-comment-o"></i>Comments</a></li>
										<li role="presentation"><a href="#tag" data-toggle="tab"><i class="fa fa-inbox"></i>Tag</a></li>
									</ul>
									<div class="tab-content">
										<div role="tabpanel" class="tab-pane" id="author">
											<ul class="authors-post">
												
												<li>
													<div class="post small-post">
														<div class="post-content">	
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">Jhon Due,</a></li>
																	<li class="publish-date"><a href="#">Dec 11, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												<li>
													<div class="post small-post">
														<div class="post-content">	
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">Matt Cloey</a></li>
																	<li class="publish-date"><a href="#">Dec 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												<li>
													<div class="post small-post">
														<div class="post-content">	
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">KOlony Wispe</a></li>
																	<li class="publish-date"><a href="#">Nov 25, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												
												<li>
													<div class="post small-post">
														<div class="post-content">
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">Matt Cloey</a>,</li>
																	<li class="publish-date"><a href="#">Nov 5, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												<li>
													<div class="post small-post">
														<div class="post-content">
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">Mike Tinson</a>,</li>
																	<li class="publish-date"><a href="#">Nov 18, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												
											</ul>
										</div>
										<div role="tabpanel" class="tab-pane active" id="comment">
											<ul class="comment-list">
												<li>
													<div class="post small-post">
														<div class="post-content">	
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">Matt Cloey ,</a></li>
																	<li class="publish-date"><a href="#">Dec 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												<li>
													<div class="post small-post">
														<div class="post-content">	
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">Jhon Due ,</a></li>
																	<li class="publish-date"><a href="#">Dec 11, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												<li>
													<div class="post small-post">
														<div class="post-content">	
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">KOlony Wispe ,</a></li>
																	<li class="publish-date"><a href="#">Nov 25, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												<li>
													<div class="post small-post">
														<div class="post-content">	
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">KOlony Wispe</a></li>
																	<li class="publish-date"><a href="#">Nov 25, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
												<li>
													<div class="post small-post">
														<div class="post-content">
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="post-author"><a href="#">Mike Tinson ,</a></li>
																	<li class="publish-date"><a href="#">Nov 18, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">3 students arrested after body-slamming principal</a>
															</h2>
														</div>
													</div><!--/post-->
												</li>
											</ul>
										</div>
										<div role="tabpanel" class="tab-pane" id="tag">
											<ul class="list-inline tag-cloud">
												<li><a href="#">Business</a>,</li>
												<li><a href="#">Creative</a>,</li>
												<li><a href="#">Marketing</a>,</li>
												<li><a href="#">Bloging</a>,</li>
												<li><a href="#">Science</a>,</li>
												<li><a href="#">Multipurpose</a>,</li>
												<li><a href="#">Graphics</a>,</li>
												<li><a href="#">Art</a>,</li>
												<li><a href="#">Politics</a>,</li>
												<li><a href="#">News</a>,</li>
												<li><a href="#">Sports</a>,</li>
												<li><a href="#">World</a>,</li>
												<li><a href="#">Lifestyle</a>,</li>
												<li><a href="#">Health</a>,</li>
												<li><a href="#">Environment</a>,</li>
												<li><a href="#">Entertainment</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div><!--/#widget-->
							
						</div><!--/#sitebar-->
					</div>
				</div>				
			</div><!--/.section-->
		</div><!--/.container-->
		<?php //include 'App/Views/Utils/twitter-feeds.php'; ?>
		<!--/#twitter-feed-->
		<?php 
		include_once 'App/Views/Utils/footer_widgets.php';
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