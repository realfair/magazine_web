<?php 
$Authors=$article->getAuthors(10,false);
?>
<ul class="authors-post">
	<?php 
	foreach ($Authors as $key => $author) {
		$author_id=(int)$author['user_id'];
		$Articles=$article->getAuthorArticles($author_id,1);
		foreach ($Articles as $key1 => $post) {
			?>
			<li>
				<div class="post small-post">
					<div class="post-content">	
						<div class="entry-meta">
							<ul class="list-inline">
								<li class="post-author">
									<a href="#">
										<?php echo $author['names']; ?>
									</a>
								</li>
								<li class="publish-date"><a href="#">
									<?php echo $function->string_date_format($post['validate_date']); ?>
								</a></li>
							</ul>
						</div>
						<h2 class="entry-title">
							<a href="article?title=<?php echo $post['title']; ?>&id=<?php echo $post['article_id']; ?>">
								<?php echo $post['title']; ?>
							</a>
						</h2>
					</div>
				</div><!--/post-->
			</li>
			<?php
		}
	}
	?>
	
</ul>