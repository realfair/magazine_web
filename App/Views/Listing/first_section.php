<?php 
$top_article=$article->get_list_top_article($category_id);
?>
<div class="row">
	<?php
	$counter=0;
	foreach ($top_article as $key => $post) {
		$Posters=$article->get_article_poster($post['article_id']);
		if($counter>0){
			?>
			<div class="col-sm-4">
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
								<li class="publish-date"><a href="#"><i class="fa fa-clock-o"></i><?php echo $function->string_date_format($post['validate_date']); ?>
									</a>
								</li>
								<li class="views"><a href="#"><i class="fa fa-eye"></i>15k</a></li>
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
			</div>
			<?php
		}
		$counter++;
	}
	?>
</div>