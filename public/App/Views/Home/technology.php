<?php 
$Posts=$article->technology(3);
?>
<div class="section technology-news">
	<h1 class="section-title">Ikoranabuhanga</h1>
	<div class="cat-menu">         
		<ul class="list-inline">                       
			<li class="active"><a href="listing.html">Mudasobwa</a></li>
			<li><a href="listing.html">Telefoni</a></li>
			<li><a href="listing.html">Ibinyabiziga</a></li>
		</ul> 				
	</div>
	<div class="row">
		<div class="col-md-8 col-sm-12">
			<div class="post">
				<?php
				$count=0;
				foreach ($Posts as $key => $post) {
					$Posters=$article->get_article_poster($post['article_id']);
					$views=$article->get_article_views($post['article_id']);
					if($count==0){
						?>
						<div class="entry-header">
							<div class="entry-thumbnail">
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
									<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> <?php echo $function->string_date_format($post['validate_date']); ?></a></li>
									<li class="views"><a href="#"><i class="fa fa-eye"></i>
										<?php echo $views; ?></a></li>
									<li class="comments"><i class="fa fa-comment-o"></i><a href="#">189</a></li>
								</ul>
							</div>
							<h2 class="entry-title">
								<a href="article?id=<?php echo $post['article_id']; ?>&title=<?php echo $post['title']; ?>">
									<?php echo $post['title']; ?>
								</a>
							</h2>
						</div>
						<?php
					}
					$count++;
				}
				?>
			</div><!--/post--> 
		</div>
		<div class="col-md-4 col-sm-12">
			<?php 
			$count=0;
			foreach ($Posts as $key => $post) {
				$Posters=$article->get_article_poster($post['article_id']);
				$views=$article->get_article_views($post['article_id']);
				if($count>0 && $count<=3){
					?>
						<div class="post small-post">
							<div class="entry-header">
								<div class="entry-thumbnail">
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
										<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i><?php echo $function->string_date_format($post['validate_date']); ?></a></li>
									</ul>
								</div>
								<h2 class="entry-title">
									<a href="article?id=<?php echo $post['article_id']; ?>&title=<?php echo $post['title']; ?>">
									<?php echo $post['title']; ?>
								</a>
								</h2>
							</div>
						</div><!--/post--> 
					<?php
				}
				$count++;
			}
			?>
		</div>
	</div>
</div>