<?php 
$banners=$banner->get_public_banners(1);
$counter=0;
if(count($banners)>1){
	foreach ($banners as $key => $value) {
		$image_url="../assets/banners/".$value['filename'];
		if($counter==1){
			?>
			<div class="section add inner-add">
				<a href="#">
					<img class="img-responsive" src="<?php echo $image_url; ?>" alt="" />
				</a>
			</div><!--/.section-->
			<?php
		}
		$counter++;
	}
}else{
	?>
	<div class="section add inner-add">
		<a href="#"><img class="img-responsive" src="images/post/add/add4.jpg" alt="" /></a>
	</div><!--/.section-->
	<?php
}
?>