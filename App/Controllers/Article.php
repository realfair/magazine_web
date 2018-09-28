<?php 

class Article extends Execute{
	public function get_articles_categories(){
		return $this->select_all_order_by(Tables::articles_categories(),"name",true);
	}
	public function save_article_category($name,$description){
		$array=array("name"=>$name,"description"=>$description,"status"=>'ACTIVE');
		return $this->multi_insert(Tables::articles_categories(),$array);
	}
	//function to save article
	public function save_article($title,$sub_title,$body,$category_id,$author_id){
		$today=date("Y-m-d");
		$array=array("category_id"=>$category_id,"sub_title"=>$sub_title,"title"=>$title,"text"=>$body,"status"=>'SUBMITTED','author_id'=>$author_id,"validate_date"=>$today);
		return $this->multi_insert(Tables::articles(),$array);
	}
	//function to update article
	public function update_article($article_id,$title,$sub_title,$body){
		$where=array("article_id"=>$article_id);
		$array=array("title"=>$title,"sub_title"=>$sub_title,"text"=>$body);
		return $this->query_update(Tables::articles(),$where,$array);
	}
	//get all articles
	public function get_recent_articles(){
		return $this->select_all_order_by(Tables::articles(),'article_id',false);
	}
	//check article id
	public function check_article_id($article_id){
		$credentials=array("article_id"=>$article_id);
		$number=$this->row_counter(Tables::articles(),$credentials);
		$status=false;
		if($number>0){
			$status=true;
		}else{
			$status=false;
		}
		return $status;
	}
	//get article info
	public function get_article($article_id){
		$credentials=array("article_id"=>$article_id);
		return $this->select_multi_clause(Tables::articles(),$credentials);
	}
	//get article status
	public function get_article_status($article_id){
		$credentials=array("article_id"=>$article_id);
		$article_info=$this->select_multi_clause(Tables::articles(),$credentials);
		$article_status="";
		foreach ($article_info as $key => $value) {
			$article_status=$value['status'];
		}
		return $article_status;
	}
	//change article status
	public function change_article_status($article_id,$status){
		$where=array("article_id"=>$article_id);
		$array=array("status"=>$status);
		return $this->query_update(Tables::articles(),$where,$array);
	}
	//get category name from id
	public function get_articles_category_name($category_id){
		return $this->field_query(Tables::articles_categories(),"category_id",$category_id,"name");
	}

	//save article attachments
	public function save_attachment($article_id,$filename,$extension){
		$array=array("article_id"=>$article_id,"file_name"=>$filename,"extenstion"=>$extension,"file_type"=>$extension,"status"=>'PENDING');
		
		return $this->multi_insert(Tables::attachments(),$array);
	}
	//get article documents
	public function get_documents($article_id){
		$data=array("status"=>'DELETED');
		$credentials=array("article_id"=>$article_id);
		return $this->select_multi_not(Tables::attachments(),$credentials,$data);
	}
	//remove article document
	public function remove_document($attach_id){
		$data=array("status"=>'DELETED');
		$where=array("attach_id"=>$attach_id);
		return $this->query_update(Tables::attachments(),$where,$data);
	}
	public function not_test(){
		$data=array("status"=>'DELETED');
		$where=array("article_id"=>16);
		return $this->select_multi_not(Tables::attachments(),$where,$data);
	}
	//save new article poster
	public function save_article_poster($article_id,$filename){
		$data=array("status"=>'PENDING');
		$where=array("article_id"=>$article_id);
		$status=$this->query_update(Tables::articles_posters(),$where,$data);
		if($status){
			$array=array("article_id"=>$article_id,"filename"=>$filename,"status"=>'ACTIVE');
			return $this->multi_insert(Tables::articles_posters(),$array);
		}else{
			return false;
		}
	}
	//check if article has poster
	public function check_article_poster($article_id){
		$credentials=array("article_id"=>$article_id);
		$number=$this->row_counter(Tables::articles_posters(),$credentials);
		$status=false;
		if($number>0){
			$status=true;
		}else{
			$status=false;
		}
		return $status;
	}
	//get article poster
	public function get_article_poster($article_id){
		$credentials=array("article_id"=>$article_id,"status"=>'ACTIVE');
		return $this->select_multi_clause(Tables::articles_posters(),$credentials);
	}
	//get articles based on status
	public function get_articles_by_status($status){
		$credentials=array("status"=>$status);
		return $this->select_clause_order_by(Tables::articles(),$credentials,'article_id',false);
	}
	//get total articles in system
	public function get_articles_number(){
		return $this->table_rows(Tables::articles());
	}


	############################# PUBLIC WEBSITE SECTION ####################################
	public function get_featured_posts(){
		$credentials=array("status"=>Tables::publish_status());
		return $this->select_order_limit(Tables::articles(),$credentials,'article_id',6,false);
	}
	
	public function get_popula_post(){
		$credentials=array("status"=>Tables::publish_status());
		return $this->select_order_limit(Tables::articles(),$credentials,'article_id',2,false);
	}
	public function get_article_category($category_id){
		$credentials=array("category_id"=>$category_id,"status"=>'ACTIVE');
		$category=$this->select_multi_clause(Tables::articles_categories(),$credentials);
		$article_category="";
		foreach ($category as $key => $value) {
			$article_category=$value['name'];
		}
		return $article_category;
	}
	public function second_row(){
		$rows=$this->table_rows(Tables::articles());
		$diff=$rows-4;
		$credentials=array("article_id"=>$diff);
		$compare=array("status"=>Tables::publish_status());
		$less=array("article_id"=>$rows);
		return $this->select_greater_less_than(Tables::articles(),$credentials,$compare,$less);
	}
	public function single_row_content(){
		$credentials=array("category_id"=>6,"status"=>Tables::publish_status());
		return $this->select_clause_order_by(Tables::articles(),$credentials,'article_id',false);
	}
	############################ END OF PUBLIC WEBSITE SECTION ##############################
}
$article=new Article();
?>