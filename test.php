<?php 
require "classes_loader.php";
$articles=$article->get_similar_articles("6","22");
var_dump($articles[0]);
?>