<?php 
$popular_post=$article->get_popula_post();
foreach ($popular_post as $key => $post) {
	$Posters=$article->get_article_poster($post['article_id']);
	$article_category=$article->get_article_category($post['category_id']);
	?>
	<div class="post feature-post">
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
			<div class="catagory health">
				<span>
				<a href="#">
					<?php echo $article_category; ?>
				</a>
				</span>
			</div>
		</div>
		<div class="post-content">								
			<div class="entry-meta">
				<ul class="list-inline">
					<li class="publish-date"><i class="fa fa-clock-o"></i>
						<a href="#">
						<?php echo $post['validate_date']; ?> 
						</a>
					</li>
					<li class="views"><i class="fa fa-eye"></i><a href="#">15k</a></li>
					<li class="loves"><i class="fa fa-heart-o"></i><a href="#">278</a></li>
				</ul>
			</div>
			<h2 class="entry-title">
				<a href="news-details.html">
					<?php echo $post['title']; ?>
				</a>
			</h2>
		</div>
	</div>
	<!--/post--> 
	<?php
}
?>
