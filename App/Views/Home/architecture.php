<?php 
$Posts=$article->architecture(3);
?>
<div class="section sports-section">
	<h1 class="section-title title">Architecture</h1>
	<div class="cat-menu">         
		<a href="#">See all</a>					
	</div>
	<?php 
	foreach ($Posts as $key => $post) {
		$Posters=$article->get_article_poster($post['article_id']);
		$views=$article->get_article_views($post['article_id']);
		?>
		<div class="post medium-post">
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
						<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i> <?php echo $function->string_date_format($post['validate_date']); ?></a></li>
						<li class="views"><a href="#"><i class="fa fa-eye"></i>
							<?php echo $views; ?></a></li>
						<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
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
	?>										
</div>