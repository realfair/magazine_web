<?php 
$root_url=$_SERVER['DOCUMENT_ROOT'].'/magazine_web/classes_loader.php';
require $root_url;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'App/Views/Home/meta.php'; ?>	
	<!--title-->
    <title>News RedBlue Jd</title>
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
					
					<div class="col-md-3 visible-md visible-lg">
						<div class="add featured-add">
							<a href="#"><img class="img-responsive" src="images/post/add/add1.jpg" alt="" /></a>
						</div>
					</div><!--/#add--> 
				</div>
			</div><!--/.section--> 
			
			<div class="section add inner-add">
				<a href="#"><img class="img-responsive" src="images/post/add/add2.jpg" alt="" /></a>
			</div><!--/.section-->
			
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
										
										<div class="section add inner-add">
											<a href="#"><img class="img-responsive" src="images/post/add/add4.jpg" alt="" /></a>
										</div><!--/.section add-->
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
										<div class="section sports-section">
											<h1 class="section-title title">Sports</h1>
											<div class="cat-menu">         
												<a href="listing-sports.html">See all</a>					
											</div>										
											<div class="football-result post">
												<div class="featured-result">
													<h2 class="league-name">Premier League</h2>
													<div class="row">
														<div class="col-xs-4">
															<img class="img-responsive" src="images/gallery/league1.png" alt="" />
															<span class="match-result">3</span>
														</div>
														<div class="col-xs-4">
															<span class="verses">VS</span>
															<span class="match-time">90:00</span>
														</div>
														<div class="col-xs-4">
															<img class="img-responsive" src="images/gallery/league2.png" alt="" />
															<span class="match-result">0</span>
														</div>
													</div>
												</div>
												<div class="league-result">
													<ul>
														<li>
															<div class="row">
																<div class="col-xs-4">
																	<img class="img-responsive"  src="images/gallery/team1.png" alt="" />
																	<span class="team-name">Bra</span>
																</div>
																<div class="col-xs-4">
																	<span class="match-result">3-2</span>
																</div>
																<div class="col-xs-4">
																	<span class="team-name">Arg</span>
																	<img class="img-responsive" src="images/gallery/team2.png" alt="" />
																</div>
															</div>
														</li>
														<li>
															<div class="row">
																<div class="col-xs-4">
																	<img class="img-responsive" src="images/gallery/team2.png" alt="" />
																	<span class="team-name">Arg</span>
																</div>
																<div class="col-xs-4">
																	<span class="match-result">5-4</span>
																</div>
																<div class="col-xs-4">
																	<span class="team-name">Bra</span>
																	<img class="img-responsive" src="images/gallery/team1.png" alt="" />
																</div>
															</div>
														</li>
														<li>
															<div class="row">
																<div class="col-xs-4">
																	<img class="img-responsive" src="images/gallery/team1.png" alt="" />
																	<span class="team-name">Bra</span>
																</div>
																<div class="col-xs-4">
																	<span class="match-result">1-2</span>
																</div>
																<div class="col-xs-4">
																	<span class="team-name">Arg</span>
																	<img class="img-responsive" src="images/gallery/team2.png" alt="" />
																</div>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="post medium-post">
												<div class="entry-header">
													<div class="entry-thumbnail">
														<img class="img-responsive" src="images/others/sports1.jpg" alt="" />
													</div>
												</div>
												<div class="post-content">								
													<div class="entry-meta">
														<ul class="list-inline">
															<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
															<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
															<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
														</ul>
													</div>
													<h2 class="entry-title">
														<a href="news-details.html">Our closest relatives aren't fans of daylight saving time</a>
													</h2>
												</div>
											</div><!--/post--> 
											
											<div class="post medium-post">
												<div class="entry-header">
													<div class="entry-thumbnail">
														<img class="img-responsive" src="images/post/sports/2.jpg" alt="" />
													</div>
												</div>
												<div class="post-content">								
													<div class="entry-meta">
														<ul class="list-inline">
															<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
															<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
															<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
														</ul>
													</div>
													<h2 class="entry-title">
														<a href="news-details.html">Our closest relatives aren't fans of daylight saving time</a>
													</h2>
												</div>
											</div><!--/post--> 
											
											<div class="post medium-post">
												<div class="entry-header">
													<div class="entry-thumbnail">
														<img class="img-responsive" src="images/post/sports/1.jpg" alt="" />
													</div>
												</div>
												<div class="post-content">								
													<div class="entry-meta">
														<ul class="list-inline">
															<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
															<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
															<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
														</ul>
													</div>
													<h2 class="entry-title">
														<a href="news-details.html">Our closest relatives aren't fans of daylight saving time</a>
													</h2>
												</div>
											</div><!--/post--> 
											
										</div><!--/.sports-section -->
										
										<div class="section">
											<div class="add inner-add">
												<a href="#"><img class="img-responsive" src="images/post/add/add5.jpg" alt="" /></a>
											</div>
										</div>
										
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
										
										<div class="section business-section">
											<h1 class="section-title">Business</h1>
											<div class="cat-menu">         
												<a href="listing.html">See all</a>					
											</div>
											<div class="post medium-post">
												<div class="entry-header">
													<div class="entry-thumbnail">
														<img class="img-responsive" src="images/post/business/4.jpg" alt="" />
													</div>
												</div>
												<div class="post-content">								
													<div class="entry-meta">
														<ul class="list-inline">
															<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
															<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
															<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
														</ul>
													</div>
													<h2 class="entry-title">
														<a href="news-details.html">We are seeing the effects of the minimum wage san francisco</a>
													</h2>
												</div>
											</div><!--/post--> 
											
											<div class="stock-exchange text-center">
												<div class="stock-exchange-zone">
													<a href="#"><img class="img-responsive" src="images/gallery/stock.png" alt="" /></a>
												</div>
												<div class="stock-header">
													<div class="row">
														<div class="col-xs-4">Name</div>
														<div class="col-xs-4">Price</div>
														<div class="col-xs-4">%+/-</div>
													</div>
												</div>
												<div class="stock-reports">
													<div class="com-details">
														<div class="row">
															<div class="col-xs-4 com-name">BP</div>
															<div class="col-xs-4 current-price">388.65</div>
															<div class="col-xs-4 current-result">+0.58 <i class="fa fa-caret-up"></i></div>
														</div>
													</div>													
													<div class="com-details">
														<div class="row">
															<div class="col-xs-4 com-name">Royal Ba...</div>
															<div class="col-xs-4 current-price">318.25</div>
															<div class="col-xs-4 current-result">+0.32 <i class="fa fa-caret-up"></i></div>
														</div>
													</div>
													<div class="com-details">
														<div class="row">
															<div class="col-xs-4 com-name">Inmarsat</div>
															<div class="col-xs-4 current-price">214.19</div>
															<div class="col-xs-4 current-result">-0.43 <i class="fa fa-caret-down"></i></div>
														</div>
													</div>
												</div>												
											</div>
										</div><!-- /.business-section -->
										
									</div><!--/.middle-content-->
								</div>
							</div>
						</div><!--/#site-content-->
					</div>
					<div class="col-md-3 col-sm-4">
						<div id="sitebar">
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
							
							<div class="widget">
								<div class="add">
									<a href="#"><img class="img-responsive" src="images/post/add/add3.jpg" alt="" /></a>
								</div>
							</div><!--/#widget-->
							
							<?php 
							include 'App/Views/Article/recent_articles.php';
							?>							
							<div class="widget">
								<div class="add">
									<a href="#"><img class="img-responsive" src="images/post/add/add6.jpg" alt="" /></a>
								</div>
							</div><!--/#widget-->
							
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
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="widget">
							<h1 class="section-title title">About Us</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
							<address>
								<p>Address : 123 Gegrit, London, England</p>
								<p>Call : +1234-222-3333</p>
								<p>Email: <a href="#">info@newspress.com</a></p>
							</address>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="widget">
							<h1 class="section-title title">Flickr Gallery</h1>
							<ul>
								<li><a href="images/post/flicker/1.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/1.jpg" alt="" /></a></li>
								<li><a href="images/post/flicker/2.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/2.jpg" alt="" /></a></li>
								<li><a href="images/post/flicker/3.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/3.jpg" alt="" /></a></li>
								<li><a href="images/post/flicker/4.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/4.jpg" alt="" /></a></li>
								<li><a href="images/post/flicker/5.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/5.jpg" alt="" /></a></li>
								<li><a href="images/post/flicker/6.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/6.jpg" alt="" /></a></li>
								<li><a href="images/post/flicker/7.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/7.jpg" alt="" /></a></li>
								<li><a href="images/post/flicker/8.jpg" class="image-link"><img class="img-responsive" src="images/post/flicker/8.jpg" alt="" /></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="widget news-letter">
							<h1 class="section-title title">Weekly NewsLetter</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.</p>
							
							<form action="#" method="post" id="subscribe-form" name="subscribe-form">
								<input type="text" placeholder="Your E-mail" name="email">
								<button type="submit" name="subscribe" id="subscribe" >Subscribe</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.footer-widget-->
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