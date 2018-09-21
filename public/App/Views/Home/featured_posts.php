<?php 
$Posts=$article->get_featured_posts();
foreach ($Posts as $key => $post) {
	//get article poster
	$Posters=$article->get_article_poster($post['article_id']);
	?>
	<div class="post feature-post">
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
			<div class="catagory world"><a href="#">World</a></div>
		</div>
		<div class="post-content">								
			<div class="entry-meta">
				<ul class="list-inline">
					<li class="publish-date"><i class="fa fa-clock-o"></i><a href="#"> Nov 1, 2015 </a></li>
					<li class="views"><i class="fa fa-eye"></i><a href="#">15k</a></li>
					<li class="loves"><i class="fa fa-heart-o"></i><a href="#">278</a></li>
					<li class="comments"><i class="fa fa-comment-o"></i><a href="#">189</a></li>
				</ul>
			</div>
			<h2 class="entry-title">
				<a href="news-details.html">
					<?php echo $post['title']; ?>
				</a>
			</h2>
		</div>
	</div><!--/post--> 
	<?php
}
?>
