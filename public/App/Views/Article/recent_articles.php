<?php 
$Posts=$article->get_featured_posts();

?>
<div class="widget">
	<h1 class="section-title title">This is Rising!</h1>
	<ul class="post-list">
	<?php 
	foreach ($Posts as $key => $post) {
		$Posters=$article->get_article_poster($post['article_id']);
		$article_category=$article->get_article_category($post['category_id']);
		?>
		<li>
			<div class="post small-post">
				<div class="entry-header">
					<div class="entry-thumbnail">
						<?php 
						foreach ($Posters as $key => $poster) {
							?>
						<img class="img-responsive" src="../assets/IMG/<?php echo $poster['filename']; ?>" alt=""/>
							<?php
						}
						?>
					</div>
				</div>
				<div class="post-content">								
					<div class="video-catagory">
						<a href="#">
							<?php echo $article_category; ?>
						</a>
					</div>
					<h2 class="entry-title">
						<a href="article">
							<?php
								$title=$post['title'];
								if(strlen($title)>50){
									echo substr($title,0,50).'....';
								}else{
									echo $title;
								}
							?>
						</a>
					</h2>
				</div>
			</div><!--/post--> 
		</li>
		<?php
	}
	?>		
	</ul>
</div>