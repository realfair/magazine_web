<?php 
$banners=$banner->get_public_banners(1);
$counter=0;
if(count($banners)>0){
	foreach ($banners as $key => $value) {
		$image_url="access/assets/banners/".$value['filename'];
		if($counter==0){
			?>
			<div class="post google-add">
				<div class="add inner-add text-center">
					<a href="#">
						<img class="img-responsive" src="<?php echo $image_url; ?>" alt="" />
					</a>
				</div><!--/.section-->
			</div>
			<?php
		}
		$counter++;
	}
}else{
	?>
	<div class="post google-add">
		<div class="add inner-add text-center">
			<a href="#"><img class="img-responsive" src="images/post/google-add.jpg" alt="" /></a>
		</div><!--/.section-->
	</div>
	<?php
}
?>
