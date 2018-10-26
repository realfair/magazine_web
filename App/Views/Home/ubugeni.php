<?php 
$Posts=$article->ubugeni(5,true);
?>
<div class="section health-section">
	<h1 class="section-title">Ubugeni</h1>
	<div class="cat-menu">         
		<a href="listing-life-style.html">See all</a>					
	</div>
	<?php 
	$counter=0;
	foreach ($Posts as $key => $post) {
		$Posters=$article->get_article_poster($post['article_id']);
		$views=$article->get_article_views($post['article_id']);
		if($counter==0){
			?>
			<div class="health-feature">
				<div class="post">
					<div class="entry-header">
						<div class="entry-thumbnail">
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
								<li class="publish-date">
									<a href="#">
										<i class="fa fa-clock-o"></i>
									<?php echo $function->string_date_format($post['validate_date']); ?>
									</a>
								</li>
								<li class="views">
									<a href="#">
										<i class="fa fa-eye"></i>
									<?php echo $views; ?>
									</a>
								</li>
							</ul>
						</div>
						<h2 class="entry-title">
							<a href="article?title=<?php echo $post['title']; ?>&id=<?php echo $post['article_id']; ?>">
								<?php echo $post['title']; ?>
							</a>
						</h2>
					</div>
				</div><!--/post--> 
			</div>
			<?php
		}
		$counter++;
	}
	?>
	<div class="row">
		<?php 
		$counter=0;
		foreach ($Posts as $key => $post) {
			$Posters=$article->get_article_poster($post['article_id']);
			$views=$article->get_article_views($post['article_id']);
			if($counter>=1 && $counter<=4){
				?>
				<div class="col-sm-12 col-md-6">
					<div class="post small-post">
						<div class="entry-header">
							<div class="entry-thumbnail">
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
								<li class="publish-date">
									<a href="#">
										<i class="fa fa-clock-o"></i>
									<?php echo $function->string_date_format($post['validate_date']); ?>
									</a>
								</li>
								</ul>
							</div>
							<h2 class="entry-title">
								<a href="article?title=<?php echo $post['title']; ?>&id=<?php echo $post['article_id']; ?>">
								<?php
								 if(strlen($post['title'])>50){
								 	echo substr($post['title'],0,50).'.....';
								 }else{
								 	echo $post['title'];
								 }
								?>
							</a>
							</h2>
						</div>
					</div><!--/post--> 
				</div>
				<?php
			}
			$counter++;
		}
		?>
	</div>
</div>