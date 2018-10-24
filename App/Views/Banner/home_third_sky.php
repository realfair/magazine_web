<?php 
$sky=$banner->get_public_banners(2);
$counter=0;
if(count($sky)>2){
	foreach ($sky as $key => $value) {
		$image_url="access/assets/banners/".$value['filename'];
		if($counter>=2 && $counter<=3){
			?>
			<div class="section">
				<div class="add inner-add">
					<a href="#">
						<img class="img-responsive" src="<?php echo $image_url; ?>" alt="" />
					</a>
				</div>
			</div>
			<?php
		}
		$counter++;
	}
}else{
	?>
	<div class="section">
		<div class="add inner-add">
			<a href="#"><img class="img-responsive" src="images/post/add/add5.jpg" alt="" /></a>
		</div>
	</div>
	<?php
}
?>


