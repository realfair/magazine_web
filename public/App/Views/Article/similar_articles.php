<?php 
$similar_articles=$article->get_similar_articles($category_id,$article_id);
if(count($similar_articles)>0){
?>
<div class="section">
	<h1 class="section-title">Izindi Nkuru Wasoma !</h1>
	<div class="row">
		<?php 
		foreach ($similar_articles as $key => $post) {
			$Posters=$article->get_article_poster($post['article_id']);
			$article_category=$article->get_article_category($post['category_id']);
			$category_color="";
			if($article_category=="IBYEGERANYO"){
				$category_color="world";
			}elseif($article_category=="IMIKINO"){
				$category_color="sport";
			}elseif($article_category=="IKORANABUHANGA"){
				$category_color="technology";
			}elseif($article_category=="IMYIDAGADURO"){
				$category_color="entertainment";
			}else{
				$category_color="politics";
			}
			?>
			<div class="col-sm-4" style="max-height: 335px;">
					<div class="post medium-post">
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
									<li class="publish-date">
										<a href="#"><i class="fa fa-clock-o"></i>
											<?php echo $function->string_date_format($value['validate_date']); ?>
										</a>
									</li>
									<li class="loves"><a href="#"><i class="fa fa-heart-o"></i>278</a></li>
								</ul>
							</div>
							<h2 class="entry-title">
								<a href="article?id=<?php echo $post['article_id']; ?>&title=<?php echo $post['title']; ?>">
									<?php echo $post['title']; ?>
								</a>
							</h2>
						</div>
					</div>
			</div>
			<?php
		}
		?>
	</div>
</div>
<?php
}
?>