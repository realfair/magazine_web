<?php 
$Posts=$article->ibyegeranyo(6,true);
$counter=0;
foreach ($Posts as $key => $post) {
	$Posters=$article->get_article_poster($post['article_id']);
	$views=$article->get_article_views($post['article_id']);
	if($counter<=3){
		?>
		<div class="col-sm-3">
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
						</ul>
					</div>
					<h2 class="entry-title">
						<a href="article?id=<?php echo $post['article_id']; ?>&title=<?php echo $post['title']; ?>">
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