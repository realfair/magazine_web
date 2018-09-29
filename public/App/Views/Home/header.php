<header id="navigation">
<div class="navbar" role="banner">
	<div class="container">
		<a class="secondary-logo" href="index">
			<img class="img-responsive" src="images/logo/logo.png" alt="logo" style="width: 100px;">
		</a>
	</div>
	<div class="topbar">
		<div class="container">
			<div id="topbar" class="navbar-header">							
				<a class="navbar-brand" href="index">
					<img class="img-responsive" src="images/logo/logo.png" alt="logo" style="width: 100px;">
				</a>
				<div id="topbar-right">
					<div class="dropdown language-dropdown">						
						<a data-toggle="dropdown" href="#"><span class="change-text">En</span> <i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu language-change">
							<li><a href="#">EN</a></li>
							<li><a href="#">KINY</a></li>
						</ul>								
					</div>
					<div id="date-time"></div>
					<div id="weather"></div>
				</div>
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div> 
		</div> 
	</div> 
	<div id="menubar" class="container">	
		<nav id="mainmenu" class="navbar-left collapse navbar-collapse"> 
			<ul class="nav navbar-nav">                       
				<li class="home dropdown"><a href="index">Ahabanza</a>
				</li>
				<li class="business dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Architecture</a>
					<ul class="dropdown-menu">
						<li><a href="#">Ubumenyi k'umyubakire</a></li>
						<li><a href="#">Gukora imbata z'inzu</a></li>
						<li><a href="#">Amazu yo kubamo</a></li>
						<li><a href="#">Ibindi..</a></li>
					</ul>
				</li>
				<li class="world dropdown mega-cat-dropdown">
					<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Ibyegeranyo</a>
					<div class="dropdown-menu mega-cat-menu">
						<div class="container">
							<div class="sub-catagory">
								<h2 class="section-title">Ibyegeranyo</h2>
								<ul class="list-inline">
									<li><a href="#">Ubumenyamuntu</a></li>
									<li><a href="#">Ikoranabuhanga</a></li>
									<li><a href="#">Politiki</a></li>
									<li><a href="#">Ubukungu</a></li>
									<li><a href="#">Amateka</a></li>
									<li><a href="#">Ibindi</a></li>
								</ul>
							</div>
							<div class="row">
								<?php 
								include 'App/Views/Home/ibyegeranyo_header.php';
								?>
							</div>
						</div>
					</div>
				</li>
				<li class="environment dropdown mega-dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Ubugeni</a>
					<div class="dropdown-menu mega-menu">
						<div class="container">
							<div class="row">
								<div class="col-sm-3">
									<h2>Ubugeni</h2>
									<ul>
										<li><a href="#">Gushushanya</a></li>
										<li><a href="#">Ububumbyi</a></li>
										<li><a href="#">Ibihangano</a></li>
										<li><a href="#">Umuziki</a></li>
										<li><a href="#">Ibindi..</a></li>
									</ul>
								</div>
								<div class="col-sm-3">
									<h2>Inkuru</h2>
									<ul>
										<li><a href="#">Inkuru zirangira</a></li>
										<li><a href="#">Inkuru z'uruhererekane</a></li>
										<li><a href="#">Inkuru z'urukundo</a></li>
										<li><a href="#">Inkuru z'igisha</a></li>
										<li><a href="#">Ubuhamya</a></li>
									</ul>
								</div>
								<div class="col-sm-3">
									<h2>Inkuru iheruka</h2>
									<div class="entry-thumbnail">
										<img class="img-responsive" src="images/post/4.jpg" alt="" /> 
									</div>												
								</div>
								<div class="col-sm-3">
									<h2>Inkuru y'amashusho.</h2>
									<div class="entry-thumbnail embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/jnfQBVAIPfc" allowfullscreen></iframe>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="world dropdown mega-cat-dropdown">
					<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Ubucukumbuzi</a>
					<div class="dropdown-menu mega-cat-menu">
						<div class="container">
							<div class="sub-catagory">
								<h2 class="section-title">Ubucukumbuzi</h2>
								<ul class="list-inline">
									<li><a href="#">Ubumenyamuntu</a></li>
									<li><a href="#">Ikoranabuhanga</a></li>
									<li><a href="#">Politiki</a></li>
									<li><a href="#">Ubukungu</a></li>
									<li><a href="#">Amateka</a></li>
									<li><a href="#">Ibindi</a></li>
								</ul>
							</div>
							<div class="row">
								<?php 
								include 'App/Views/Home/ibyegeranyo_header.php';
								?>
							</div>
						</div>
					</div>
				</li>
				<li class="technology dropdown mega-cat-dropdown">
					<a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Ikoranabuhanga</a>
					<div class="dropdown-menu mega-cat-menu">
						<div class="container">
							<div class="sub-catagory">
								<h2 class="section-title">Ikoranabuhanga</h2>
								<ul class="list-inline">
									<li><a href="#">Mudasobwa</a></li>
									<li><a href="#">Ibinyabiziga</a></li>
									<li><a href="#">Telefoni</a></li>
									<li><a href="#">Ibindi...</a></li>
								</ul>
							</div>
							<div class="row">
								<div class="col-sm-3">
									<div class="post medium-post">
										<div class="entry-header">
											<div class="entry-thumbnail">
												<img class="img-responsive" src="images/post/technology/6.jpg" alt="" />
											</div>
										</div>
										<div class="post-content">								
											<div class="entry-meta">
												<ul class="list-inline">
													<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 5, 2015 </a></li>
													<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
													<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
												</ul>
											</div>
											<h2 class="entry-title">
												<a href="news-details.html">Apple may be preparing for new Beats radio stations</a>
											</h2>
										</div>
									</div><!--/post--> 
								</div>
								<div class="col-sm-3">
									<div class="post medium-post">
										<div class="entry-header">
											<div class="entry-thumbnail">
												<img class="img-responsive" src="images/post/technology/5.jpg" alt="" />
											</div>
										</div>
										<div class="post-content">								
											<div class="entry-meta">
												<ul class="list-inline">
													<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 5, 2015 </a></li>
													<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
													<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
												</ul>
											</div>
											<h2 class="entry-title">
												<a href="news-details.html">Why is the media so afraid of Facebook?</a>
											</h2>
										</div>
									</div><!--/post--> 
								</div>
								<div class="col-sm-3">
									<div class="post medium-post">
										<div class="entry-header">
											<div class="entry-thumbnail">
												<img class="img-responsive" src="images/post/technology/4.jpg" alt="" />
											</div>
										</div>
										<div class="post-content">								
											<div class="entry-meta">
												<ul class="list-inline">
													<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 5, 2015 </a></li>
													<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
													<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
												</ul>
											</div>
											<h2 class="entry-title">
												<a href="news-details.html">Samsung Pay will support online shopping</a>
											</h2>
										</div>
									</div><!--/post--> 
								</div>
								<div class="col-sm-3">
									<div class="post medium-post">
										<div class="entry-header">
											<div class="entry-thumbnail">
												<img class="img-responsive" src="images/post/technology/3.jpg" alt="" />
											</div>
										</div>
										<div class="post-content">								
											<div class="entry-meta">
												<ul class="list-inline">
													<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> Nov 5, 2015 </a></li>
													<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
													<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
												</ul>
											</div>
											<h2 class="entry-title">
												<a href="news-details.html">The best games for your phone</a>
											</h2>
										</div>
									</div><!--/post--> 
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="politics dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Isoko</a>
					<ul class="dropdown-menu">
						<li><a href="#">Amazu</a></li>
						<li><a href="#">Ibibanza</a></li>
						<li><a href="#">Ibinyabiziga</a></li>
						<li><a href="#">Camera n'ibikoresho byazo</a></li>
						<li><a href="#">Mudasobwa</a></li>
						<li><a href="#">Ibikoresho byo mu rugo</a></li>
						<li><a href="#">Ibindi</a></li>
					</ul>
				</li>
				<li class="health dropdown mega-dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Amashusho</a>
					<div class="dropdown-menu mega-menu">
						<div class="container">
							<div class="row">
								<div class="col-sm-3">
									<h2>Amashusho</h2>
									<ul>
										<li><a href="#">GUkora amashusho</a></li>
										<li><a href="#">Amashusho agezweho</a></li>
										<li><a href="#">Amashusho meza</a></li>
										<li><a href="#">Amashusho adasanzwe</a></li>
										<li><a href="#">Amashusho y'igisha</a></li>
									</ul>
								</div>
								<div class="col-sm-3">
									<h2>Gufotora</h2>
									<ul>
										<li><a href="#">Amafoto agezweho</a></li>
										<li><a href="#">Amafoto meza</a></li>
										<li><a href="#">Amafoto adasanzwe</a></li>
										<li><a href="#">Ibindi...</a></li>
									</ul>
								</div>
								<div class="col-sm-3">
									<h2>Inkuru iheruka</h2>
									<div class="entry-thumbnail">
										<img class="img-responsive" src="images/post/4.jpg" alt="" /> 
									</div>												
								</div>
								<div class="col-sm-3">
									<h2>Inkuru y'amashusho.</h2>
									<div class="entry-thumbnail embed-responsive embed-responsive-16by9">
										<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/jnfQBVAIPfc" allowfullscreen></iframe>
									</div>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="more dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Pages +</a>
					<ul class="dropdown-menu">
						<li><a href="news-details.html">News Details</a></li>
						<li><a href="listing.html">Category Listing</a></li>
						<li><a href="listing-life-style.html">Category Lifestyle</a></li>
						<li><a href="listing-sports.html">Category Sports</a></li>
						<li><a href="404.html">404 Error</a></li>
						<li><a href="author-listing.html">Author Listing <span class="badge">New</span></a></li>
						<li><a href="author-details.html">Author Details <span class="badge">New</span></a></li>
						<li><a href="about-us.html">About Us <span class="badge">New</span></a></li>
						<li><a href="contact-us.html">Contact Us <span class="badge">New</span></a></li>
						<li><a href="contact-us2.html">Contact Us Two <span class="badge">New</span></a></li>
						<li><a href="signup.html">Sign Up Page<span class="badge">New</span></a></li>
						<li><a href="signin.html">Sign In page<span class="badge">New</span></a></li>
					</ul>
				</li>
			</ul> 					
		</nav>
		<div class="searchNlogin">
			<ul>
				<li class="search-icon"><i class="fa fa-search"></i></li>
				<li class="dropdown user-panel"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i></a>
					<div class="dropdown-menu top-user-section">
						<div class="top-user-form">
							<form id="top-login" role="form">
								<div class="input-group" id="top-login-username">
									<span class="input-group-addon"><img src="images/others/user-icon.png" alt="" /></span>
									<input type="text" class="form-control" placeholder="Username" required="">
								</div>
								<div class="input-group" id="top-login-password">
									<span class="input-group-addon"><img src="images/others/password-icon.png" alt="" /></span>
									<input type="password" class="form-control" placeholder="Password" required="">
								</div>
								<div>
									<p class="reset-user">Forgot <a href="#">Password/Username?</a></p>
									<button class="btn btn-danger" type="submit">Login</button>
								</div>
							</form>
						</div>
						<div class="create-account">
							<a href="#">Create a New Account</a>
						</div>
					</div>
				</li>
			</ul>
			<div class="search">
				<form role="form">
					<input type="text" class="search-form" autocomplete="off" placeholder="Type & Press Enter">
				</form>
			</div> <!--/.search--> 
		</div><!-- searchNlogin -->
	</div>
</div>
</header>