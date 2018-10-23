<?php 
$Posts=$article->ubucukumbuzi(3);
?>
<div class="section world-news">
	<h1 class="section-title title">Ubucukumbuzi</h1>	
	<div class="world-nav cat-menu">         
		<ul class="list-inline">                       
			<li class="active"><a href="listing.html">Ubumenyamuntu</a></li>
			<li><a href="listing.html">Ikoranabuhanga</a></li>
			<li><a href="listing.html">Politiki</a></li>
			<li><a href="listing.html">Ubukungu</a></li>
			<li><a href="listing.html">Amateka</a></li>
		</ul> 					
	</div>
	<div class="post">
		<?php 
		$counter=0;
		foreach ($Posts as $key => $post) {
			$Posters=$article->get_article_poster($post['article_id']);
			$views=$article->get_article_views($post['article_id']);
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
<!-- 				<div class="entry-content">
					<p>
						<?php 
							if(strlen($post['text'])>200){
								echo htmlspecialchars_decode(substr($post['text'], 0,200).'........');
							}else{
								echo htmlspecialchars_decode($post['text']);
							}
						?>
					</p>
				</div> -->
			</div>
			<?php
		}
		?>
<!-- 		<div class="list-post">
			<ul>
				<li><a href="#">Detroit natives wary as recovery threatens to push them out <i class="fa fa-angle-right"></i></a></li>
				<li><a href="#">NBA impersonator does incredible Curry & Green impressions<i class="fa fa-angle-right"></i></a></li>
				<li><a href="#">Cellular carriers could gain some surprising competitors <i class="fa fa-angle-right"></i></a></li>
			</ul>
		</div> --><!--/list-post--> 
	</div><!--/post--> 
</div>