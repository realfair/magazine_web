<?php 
$Posts=$article->isoko(4);
?>
<div class="section lifestyle-section">
	<h1 class="section-title">Isoko</h1>
	<div class="cat-menu">         
		<a href="#">See all</a>					
	</div>
	<div class="row">
		<?php 
		foreach ($Posts as $key => $post) {
			$Posters=$article->get_article_poster($post['article_id']);
			$article_category=$article->get_article_category($post['category_id']);
			$views=$article->get_article_views($post['article_id']);
			?>
			<div class="col-md-6">
				<div class="post medium-post">
					<div class="entry-header">
						<div class="entry-thumbnail">
						<?php 
						foreach ($Posters as $key => $poster) {
							?>
						<img class="img-responsive" src="access/assets/IMG/<?php echo $poster['filename']; ?>" alt="" style="max-height: 150px;"/>
							<?php
						}
						?>
						</div>
					</div>
					<div class="post-content">								
						<div class="entry-meta">
							<ul class="list-inline">
								<li class="publish-date">
									<i class="fa fa-clock-o"></i>
									<a href="#">
										<?php echo $function->string_date_format($post['validate_date']); ?>
									</a>
								</li>
								<li class="views">
									<i class="fa fa-eye"></i>Yasuwe: 
									<a href="#"><?php echo $views; ?></a>
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
		?>
	</div>
</div>