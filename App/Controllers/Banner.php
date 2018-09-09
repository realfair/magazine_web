<?php 

class Banner extends Execute{

	//get ads categories
	public function get_ads_categories(){
		return $this->select_all_order_by(Tables::advert_categories(),"name",true);
	}
	//get ads name from id
	public function get_ads_name($advert_id){
		return $this->field_query(Tables::advert_categories(),"advert_id",$advert_id,"name");
	}
	//get ads banners
	public function get_ads_banners($advert_id){
		$credentials=array("advert_id"=>$advert_id);
		return $this->select_multi_clause(Tables::banners(),$credentials);
	}
	public function save_banner($advert_id,$filename,$extension){
		$array=array("advert_id"=>$advert_id,"filename"=>$filename,"extension"=>$extension,"status"=>'ACTIVE');
		return $this->multi_insert(Tables::banners(),$array);
	}
}
$banner=new Banner();
?>