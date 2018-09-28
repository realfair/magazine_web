<?php 
$root_url=$_SERVER['DOCUMENT_ROOT'].'/magazine_web/classes_loader.php';
require $root_url;
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<?php include 'App/Views/Home/meta.php'; ?>	
	<!--title-->
    <title>News Press | News RedBlue Jd</title>
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
										<div class="section world-news">
											<h1 class="section-title title">Worlds</h1>	
											<div class="world-nav cat-menu">         
												<ul class="list-inline">                       
													<li class="active"><a href="listing.html">Us</a></li>
													<li><a href="listing.html">Crime</a></li>
													<li><a href="listing.html">Local</a></li>
													<li><a href="listing.html">Offbet</a></li>
													<li><a href="listing.html">Openion</a></li>
													<li><a href="listing.html">See All</a></li>
												</ul> 					
											</div>
											<div class="post">
												<div class="entry-header">
													<div class="entry-thumbnail">
														<img class="img-responsive" src="images/post/w1.jpg" alt="" />
													</div>
												</div>
												<div class="post-content">								
													<div class="entry-meta">
														<ul class="list-inline">
															<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
															<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
															<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
															<li class="comments"><i class="fa fa-comment-o"></i><a href="#">189</a></li>
														</ul>
													</div>
													<h2 class="entry-title">
														<a href="news-details.html">We Are Seeing The Effects Of The Minimum Wage Rise In San Francisco</a>
													</h2>
													<div class="entry-content">
														<p>Text of the printing and typesetting industry orem Ipsum has been the industry standard dummy text ever since the when an unknown printer took a galley of type and scrambled it to make a type specimen book ......</p>
													</div>
												</div>
												<div class="list-post">
													<ul>
														<li><a href="#">Detroit natives wary as recovery threatens to push them out <i class="fa fa-angle-right"></i></a></li>
														<li><a href="#">NBA impersonator does incredible Curry & Green impressions<i class="fa fa-angle-right"></i></a></li>
														<li><a href="#">Cellular carriers could gain some surprising competitors <i class="fa fa-angle-right"></i></a></li>
													</ul>
												</div><!--/list-post--> 
											</div><!--/post--> 
										</div><!--/.section-->
										
										<div class="section technology-news">
											<h1 class="section-title">Technology</h1>
											<div class="cat-menu">         
												<a href="listing.html">See all</a>					
											</div>
											<div class="row">
												<div class="col-md-8 col-sm-12">
													<div class="post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/t1.jpg" alt="" />
															</div>
														</div>
														<div class="post-content">								
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
																	<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
																	<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
																	<li class="comments"><i class="fa fa-comment-o"></i><a href="#">189</a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">We Are Seeing The Effects Of The Minimum Wage Rise In San Francisco</a>
															</h2>
															<div class="entry-content">
																<p>Text of the printing and typesetting industry orem Ipsum has been the industry standard dummy text ever since....</p>
															</div>
														</div>
													</div><!--/post--> 
												</div>
												<div class="col-md-4 col-sm-12">
													<div class="post small-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/t2.jpg" alt="" />
															</div>
														</div>
														<div class="post-content">								
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">Samsung Pay will support online shop</a>
															</h2>
														</div>
													</div><!--/post--> 
													<div class="post small-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/t3.jpg" alt="" />
															</div>
														</div>
														<div class="post-content">								
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">Why is the media so afraid of Facebook?</a>
															</h2>
														</div>
													</div><!--/post--> 
												</div>
											</div>
										</div><!--/technology-news--> 
										
										<div class="section add inner-add">
											<a href="#"><img class="img-responsive" src="images/post/add/add4.jpg" alt="" /></a>
										</div><!--/.section add-->
										
										<div class="section photo-gallery">
											<h1 class="section-title title">Photo Gallery</h1>	
											<div class="cat-menu">         
												<a href="listing.html">See all</a>					
											</div>
											<div id="photo-gallery" class="carousel slide carousel-fade post" data-ride="carousel">						
												<div class="carousel-inner">
													<div class="item active">
														<a href="#"><img class="img-responsive" src="images/gallery/1.jpg" alt="" /></a>
														<h2><a href="#">No one can agree on how a dog is supposed to wear human pants</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/2.jpg" alt="" /></a>
														<h2><a href="#">500-pound elephant seal causes traffic jam while repeatedly</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/3.jpg" alt="" /></a>
														<h2><a href="#">I rode a Metroboard electric skateboard 30 miles around Manhattan</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/4.jpg" alt="" /></a>
														<h2><a href="#">The super creepy side of the Internet of Things and smart homes</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/5.jpg" alt="" /></a>
														<h2><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/6.jpg" alt="" /></a>
														<h2><a href="#">Someone has calculated the total cost of saving Matt Damon</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/7.jpg" alt="" /></a>
														<h2><a href="#">Wet wedding: Yorkshire couple dons wellies to tie the knot in flooded town</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/8.jpg" alt="" /></a>
														<h2><a href="#">This dog is so stoked for his Christmas present he can hardly stand it</a></h2>
													</div>
													<div class="item">
														<a href="#"><img class="img-responsive" src="images/gallery/9.jpg" alt="" /></a>
														<h2><a href="#">The world's richest people lost $19 billion in 2015, but Jeff Bezos</a></h2>
													</div>
												</div><!--/carousel-inner-->
												
												<ol class="gallery-indicators carousel-indicators">
													<li data-target="#photo-gallery" data-slide-to="0" class="active">
														<img class="img-responsive" src="images/gallery/thumb1.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="1">
														<img class="img-responsive" src="images/gallery/thumb2.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="2">
														<img class="img-responsive" src="images/gallery/thumb3.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="3">
														<img class="img-responsive" src="images/gallery/thumb4.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="4">
														<img class="img-responsive" src="images/gallery/thumb5.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="5">
														<img class="img-responsive" src="images/gallery/thumb6.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="6">
														<img class="img-responsive" src="images/gallery/thumb7.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="7">
														<img class="img-responsive" src="images/gallery/thumb8.png" alt="" />
													</li>
													<li data-target="#photo-gallery" data-slide-to="8">
														<img class="img-responsive" src="images/gallery/thumb9.png" alt="" />
													</li>
												</ol><!--/gallery-indicators-->
												
												<div class="gallery-turner">
													<a class="left-photo" href="#photo-gallery" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
													<a class="right-photo" href="#photo-gallery" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
												</div>
											</div>
										</div><!--/photo-gallery--> 
										
										<div class="section lifestyle-section">
											<h1 class="section-title">Life Style</h1>
											<div class="cat-menu">         
												<a href="listing-life-style.html">See all</a>					
											</div>
											<div class="row">
												<div class="col-md-6">
													<div class="post medium-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/lifestyle/1.jpg" alt="" />
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
																<a href="news-details.html">Naomi & Liev hit the beach, plus more new celeb pics</a>
															</h2>
														</div>
													</div><!--/post--> 
													<div class="post medium-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/lifestyle/2.jpg" alt="" />
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
																<a href="news-details.html">18 Great Performances in Mediocre Movies in 2015</a>
															</h2>
														</div>
													</div><!--/post--> 
												</div>
												<div class="col-md-6">
													<div class="post medium-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/lifestyle/3.jpg" alt="" />
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
																<a href="news-details.html">How the stars celebrated Christmas on Instagram</a>
															</h2>
														</div>
													</div><!--/post--> 
													<div class="post medium-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/lifestyle/4.jpg" alt="" />
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
																<a href="news-details.html">Celeb Role Models You Can Feel Good About</a>
															</h2>
														</div>
													</div><!--/post--> 
												</div>
											</div>
										</div><!--/.lifestyle -->
										
										<div class="section health-section">
											<h1 class="section-title">Health</h1>
											<div class="cat-menu">         
												<a href="listing-life-style.html">See all</a>					
											</div>
											<div class="health-feature">
												<div class="post">
													<div class="entry-header">
														<div class="entry-thumbnail">
															<img class="img-responsive" src="images/post/health/1.jpg" alt="" />
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
															<a href="news-details.html">HealthNews Salutes: Direct Relief International</a>
														</h2>
													</div>
												</div><!--/post--> 
											</div>
											<div class="row">
												<div class="col-sm-12 col-md-6">
													<div class="post small-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/health/2.jpg" alt="" />
															</div>
														</div>
														<div class="post-content">								
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">EBreakfast Cereal: The Marketing of Sugar</a>
															</h2>
														</div>
													</div><!--/post--> 
													<div class="post small-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/health/3.jpg" alt="" />
															</div>
														</div>
														<div class="post-content">								
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">Giving Holiday Thanks for Pumpkins</a>
															</h2>
														</div>
													</div><!--/post--> 
												</div>
												<div class="col-sm-12 col-md-6">
													<div class="post small-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/health/4.jpg" alt="" />
															</div>
														</div>
														<div class="post-content">								
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">Aerobic Exercise: The Best Weapon</a>
															</h2>
														</div>
													</div><!--/post--> 
													<div class="post small-post">
														<div class="entry-header">
															<div class="entry-thumbnail">
																<img class="img-responsive" src="images/post/health/5.jpg" alt="" />
															</div>
														</div>
														<div class="post-content">								
															<div class="entry-meta">
																<ul class="list-inline">
																	<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 15, 2015 </a></li>
																</ul>
															</div>
															<h2 class="entry-title">
																<a href="news-details.html">Minimum drink price 'may breach EU law' </a>
															</h2>
														</div>
													</div><!--/post--> 
												</div>
											</div>
										</div><!--/.health-section -->
										
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
							
							<div class="widget">
								<h1 class="section-title title">This is Rising!</h1>
								<ul class="post-list">
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/1.jpg" alt="" />
												</div>
											</div>
											<div class="post-content">								
												<div class="video-catagory"><a href="#">World</a></div>
												<h2 class="entry-title">
													<a href="news-details.html">3 students arrested after body-slamming principal</a>
												</h2>
											</div>
										</div><!--/post--> 
									</li>
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/2.jpg" alt="" />
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
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/3.jpg" alt="" />
												</div>
											</div>
											<div class="post-content">								
												<div class="video-catagory"><a href="#">Sports</a></div>
												<h2 class="entry-title">
													<a href="news-details.html">3 students arrested after body-slamming principal</a>
												</h2>
											</div>
										</div><!--/post-->
									</li>
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/4.jpg" alt="" />
												</div>
											</div>
											<div class="post-content">								
												<div class="video-catagory"><a href="#">Technology</a></div>
												<h2 class="entry-title">
													<a href="news-details.html">3 students arrested after body-slamming principal</a>
												</h2>
											</div>
										</div><!--/post-->
									</li>
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/5.jpg" alt="" />
												</div>
											</div>
											<div class="post-content">								
												<div class="video-catagory"><a href="#">Politics</a></div>
												<h2 class="entry-title">
													<a href="news-details.html">3 students arrested after body-slamming principal</a>
												</h2>
											</div>
										</div><!--/post-->
									</li>
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/6.jpg" alt="" />
												</div>
											</div>
											<div class="post-content">								
												<div class="video-catagory"><a href="#">Health</a></div>
												<h2 class="entry-title">
													<a href="news-details.html">3 students arrested after body-slamming principal</a>
												</h2>
											</div>
										</div><!--/post-->
									</li>
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/7.jpg" alt="" />
												</div>
											</div>
											<div class="post-content">								
												<div class="video-catagory"><a href="#">Lifestyle</a></div>
												<h2 class="entry-title">
													<a href="news-details.html">3 students arrested after body-slamming principal</a>
												</h2>
											</div>
										</div><!--/post-->
									</li>
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/rising/8.jpg" alt="" />
												</div>
											</div>
											<div class="post-content">								
												<div class="video-catagory"><a href="#">Entertainment</a></div>
												<h2 class="entry-title">
													<a href="news-details.html">3 students arrested after body-slamming principal</a>
												</h2>
											</div>
										</div><!--/post-->
									</li>
									<li>
										<div class="post small-post">
											<div class="entry-header">
												<div class="entry-thumbnail">
													<img class="img-responsive" src="images/post/7.jpg" alt="" />
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
								</ul>
							</div><!--/#widget-->
							
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
		<div id="twitter-feed">
			<div class="container text-center">
				<div class="row">
					<div class="col-sm-8 col-sm-offset-2">
						<div class="twitter-feeds">
							<div class="twitter-feed">
								<img class="img-responsive" src="images/others/twitter.png" alt="" />
								<h2>#Newspress</h2>
								<p>Confusing <a href="#">#design</a> terms: what's the difference between quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="#">#UX, #UI and #IA? http://buff.ly/1KdjpEi  </a> </p>
							</div>
							<div class="twitter-feed">
								<img class="img-responsive" src="images/others/twitter.png" alt="" />
								<h2>#ThemeRegion</h2>
								<p>Confusing <a href="#">#design</a> terms: what's the difference between quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="#">#UX, #UI and #IA? http://buff.ly/1KdjpEi  </a> </p>
							</div>
							<div class="twitter-feed">
								<img class="img-responsive" src="images/others/twitter.png" alt="" />
								<h2>#Doors</h2>
								<p>Confusing <a href="#">#design</a> terms: what's the difference between quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <a href="#">#UX, #UI and #IA? http://buff.ly/1KdjpEi  </a> </p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/#twitter-feed-->
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
	
	
	<div class="subscribe-me text-center">
		<h1>Don’t Miss The Hottest News</h1>
		<h2>Subscribe our Newsletter</h2>
		<a href="#close" class="sb-close-btn"><img class="<img-responsive></img-responsive>" src="images/others/close-button.png" alt="" /></a>
		<form action="#" method="post" id="popup-subscribe-form" name="subscribe-form">			
			<div class="input-group">
				<span class="input-group-addon"><img src="images/others/icon-message.png" alt="" /></span>
				<input type="text" placeholder="Enter your email" name="email">
				<button type="submit" name="subscribe">Go</button>
			</div>
		</form>
	</div>  <!--/.subscribe-me--> 
	
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