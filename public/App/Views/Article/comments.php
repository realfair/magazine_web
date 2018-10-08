<?php 
$comments=$article->get_article_comments($article_id);
?>
<div class="comments-wrapper">
	<h1 class="section-title title">Ibitekerezo!</h1>
	<ul class="media-list">
		<?php 
		if(count($comments)>0){
			foreach ($comments as $key => $comment) {
				?>
				<li class="media" style="padding: 5px;margin: 5px;">
					<div class="media-left">
						<a href="#"><img class="media-object" src="https://upload.wikimedia.org/wikipedia/commons/f/f4/User_Avatar_2.png" alt=""></a>
					</div>
					<div class="media-body">
						<h2>
							<a href="#">
								<?php echo $comment['user_names']; ?>
							</a>
						</h2>
						<h3 class="date">
							<a href="#"><?php echo $function->formatDate($comment['submit_date']); ?></a>
						</h3>
						<p>
							<?php 
							echo $comment['comment'];
							?>
						</p>
					</div>
				</li>
				<?php
			}
		}else{
			?>
			<li>
				<div class="alert alert-danger">
				  <strong>Nta gitekerezo!</strong> Ba uwa mbere mu gutanga igitekerezo
				</div>
			</li>
			<?php
		}
		?>
	</ul>

	<div class="comments-box">
		<h1 class="section-title title">TANGA IGITEKEREZO</h1>
		<form id="comment-form" name="comment-form" method="post">
			<div class="row">
				<div class="col-sm-6">
					<div class="form-group">
						<label for="name">Amazina</label>
						<input id="names" type="text" name="name" class="form-control" required="required">
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label for="email">Email yanyu <b>(Ntabwo igaragazwa!)</b></label>
						<input type="email" name="email" class="form-control" required="required">
						<input type="hidden" name="article" value="<?php echo $article_id; ?>">
					</div>
				</div>
				<div class="col-sm-12">
					<div class="form-group">
						<label for="comment" >Igitekerezo cyanyu</label>
						<textarea name="comment" id="comment" required="required" class="form-control" rows="5"></textarea>
					</div>
						<a href="" style="color: #ED1C24;font-size: 20px;" data-toggle="modal" data-target="#myModal">
							AMATEGEKO AGENGA IYANDIKA RY'IGITEKEREZO CYAWE
						</a>
					<!-- Modal -->
					  <div class="modal fade" id="myModal" role="dialog" style="margin-top: 10vh">
					    <div class="modal-dialog">
					    
					      <!-- Modal content-->
					      <div class="modal-content">
					        <div class="modal-header">
					          <button type="button" class="close" data-dismiss="modal">&times;</button>
					          <h4 class="modal-title">
					          	AMATEGEKO AGENGA IYANDIKA RY'IGITEKEREZO CYAWE
					          </h4>
					        </div>
					        <div class="modal-body">
					          <p style="line-height: 25px;font-size: 18px;">
								Witandukira kubijyanye n'iyi nkuru; wikwandika ibisebanya, ibyamamaza cyangwa bivangura; wikwandika ibiteye isoni, Wifuza kubona byihuse ibivugwa/ibisubizo ku gitekerezo cyawe, andika email yawe ahabugenewe. Ibi bidakurikijwe igitekerezo cyanyu gishobora kutagaragara hano cyangwa kigasibwa.

								Igitekerezo cyawe kigaragara nyuma y'isuzuma rikorwa na RedBlue JD, Murakoze!
					          </p>
					        </div>
					        <div class="modal-footer">
					          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        </div>
					      </div>
					      
					    </div>
					  </div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary" style="margin-left: 20px;">Send </button>
					</div>
					<div class="alert alert-danger" id="comm_response" style="display: none;margin: 10px;">

					</div>
				</div>
			</div>
		</form>
	</div>
</div>