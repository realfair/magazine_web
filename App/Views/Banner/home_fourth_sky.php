<?php 
$sky=$banner->get_public_banners(2);
$counter=0;
if(count($sky)>0){
	foreach ($sky as $key => $value) {
		$image_url="access/assets/banners/".$value['filename'];
		if($counter>=4 && $counter<=6){
			?>
			<div class="widget">
				<div class="add">
					<a href="#">
						<img class="img-responsive" src="<?php echo $image_url; ?>" alt="" />
					</a>
				</div>
			</div><!--/#widget-->
			<?php
		}
		$counter++;
	}
}else{
	?>
	<div class="widget">
		<div class="add">
			<a href="#"><img class="img-responsive" src="images/post/add/add3.jpg" alt="" /></a>
		</div>
	</div><!--/#widget-->
	<?php
}
?>
