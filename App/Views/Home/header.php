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
						<li><a href="listing?category=12">Ubumenyi k'umyubakire</a></li>
						<li><a href="listing?category=13">Gukora imbata z'inzu</a></li>
						<li><a href="listing?category=14">Amazu yo kubamo</a></li>
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
									<li><a href="listing?category=15">Ubumenyamuntu</a></li>
									<li><a href="listing?category=16">Ikoranabuhanga</a></li>
									<li><a href="listing?category=17">Politiki</a></li>
									<li><a href="listing?category=34">Ubukungu</a></li>
									<li><a href="listing?category=18">Amateka</a></li>
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
										<li><a href="listing?category=19">Gushushanya</a></li>
										<li><a href="listing?category=20">Ububumbyi</a></li>
										<li><a href="listing?category=21">Ibihangano</a></li>
										<li><a href="listing?category=22">Umuziki</a></li>
										<li><a href="#">Ibindi..</a></li>
									</ul>
								</div>
								<div class="col-sm-3">
									<h2>Inkuru</h2>
									<ul>
										<li><a href="listing?category=23">Inkuru zirangira</a></li>
										<li><a href="listing?category=24">Inkuru z'uruhererekane</a></li>
										<li><a href="listing?category=25">Inkuru z'urukundo</a></li>
										<li><a href="listing?category=26">Inkuru z'igisha</a></li>
										<li><a href="listing?category=27">Ubuhamya</a></li>
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
									<li><a href="listing?category=9">Mudasobwa</a></li>
									<li><a href="listing?category=10">Ibinyabiziga</a></li>
									<li><a href="listing?category=11">Telefoni</a></li>
								</ul>
							</div>
							<?php 
							include 'App/Views/Home/tech_header.php';
							?>
						</div>
					</div>
				</li>
				<li class="politics dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Isoko</a>
					<ul class="dropdown-menu">
						<li><a href="listing?category=28">Amazu</a></li>
						<li><a href="listing?category=29">Ibibanza</a></li>
						<li><a href="listing?category=30">Ibinyabiziga</a></li>
						<li><a href="listing?category=31">Camera n'ibikoresho byazo</a></li>
						<li><a href="listing?category=41">Mudasobwa</a></li>
						<li><a href="listing?category=32">Ibikoresho byo mu rugo</a></li>
					</ul>
				</li>
				<li class="health dropdown mega-dropdown"><a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">Amashusho</a>
					<div class="dropdown-menu mega-menu">
						<div class="container">
							<div class="row">
								<div class="col-sm-3">
									<h2>Amashusho</h2>
									<ul>
										<li><a href="listing?category=33">GUkora amashusho</a></li>
										<li><a href="listing?category=42">Amashusho agezweho</a></li>
										<li><a href="listing?category=43">Amashusho meza</a></li>
										<li><a href="listing?category=44">Amashusho adasanzwe</a></li>
										<li><a href="listing?category=45">Amashusho y'igisha</a></li>
									</ul>
								</div>
								<div class="col-sm-3">
									<h2>Gufotora</h2>
									<ul>
										<li><a href="listing?category=46">Amafoto agezweho</a></li>
										<li><a href="listing?category=47">Amafoto meza</a></li>
										<li><a href="listing?category=48">Amafoto adasanzwe</a></li>
									</ul>
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
			</ul> 					
		</nav>
		<div class="searchNlogin">
			<ul>
				<li class="search-icon"><i class="fa fa-search"></i></li>
				<li class="dropdown user-panel">
					<a href="https://www.instagram.com/redbluejd/" target="_blank"><i class="fa fa-instagram" ></i></a>
				</li>
			</ul>
			<div class="search">
				<form role="form">
					<input id="txtSearch" type="text" class="search-form" autocomplete="off" placeholder="Type & Press Enter">
					<div class="row" style="background: #fff;">
						<center><img id="loader" src="images/others/loader.gif" style="width: 90px;"></center>
						<div id="div_search" class="col-md-12" style="min-height: 300px;background: #fff;display: none;">
							
						</div>
					</div>
				</form>
			</div> <!--/.search--> 
		</div><!-- searchNlogin -->
	</div>
</div>
</header>