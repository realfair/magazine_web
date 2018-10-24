<?php 
$cube=$banner->get_public_banners(3);
$counter=0;
if(count($cube)>0){
	foreach ($cube as $key => $value) {
		$image_url="../assets/banners/".$value['filename'];
		if($counter==0){
			?>
			<div class="col-md-3 visible-md visible-lg">
				<div class="add featured-add">
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
	<div class="col-md-3 visible-md visible-lg">
		<div class="add featured-add">
			<a href="#"><img class="img-responsive" src="images/post/add/add1.jpg" alt="" /></a>
		</div>
	</div>
	<?php
}
?>
