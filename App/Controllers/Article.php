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
		$array=array("category_id"=>$category_id,"sub_title"=>$sub_title,"title"=>$title,"text"=>$body,"status"=>'SUBMITTED','author_id'=>$author_id);
		return $this->multi_insert(Tables::articles(),$array);
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
	//save new article poster
	public function save_article_poster($article_id,$filename){
		$array=array("article_id"=>$article_id,"filename"=>$filename,"status"=>'ACTIVE');
		return $this->multi_insert(Tables::articles_posters(),$array);
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
		$credentials=array("article_id"=>$article_id);
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
}
$article=new Article();
?>