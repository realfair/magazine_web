<?php 

class Database{

	//properties
	private $server;
	private $database;
	private $user;
	private $password;

	protected function connect(){
		$this->server="localhost";
		$this->user="api_access";
		$this->password="Stuxnet7268";
		$this->database="magazine";

		$conn=new mysqli($this->server,$this->user,$this->password,$this->database);

		return $conn;
	}
}
?>