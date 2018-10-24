 <?php
 if($_FILES['file']['name'] != '')  
 { 
 	  $tmp=explode(".", $_FILES['file']['name']);
      $extension = end($tmp);  
      $allowed_type = array("jpg", "jpeg", "png", "gif","PNG");  
      if(in_array($extension, $allowed_type))  
      {
      	   //EXTRACT OTHER DATA FROM FORM
        require_once $_SERVER['DOCUMENT_ROOT'].'/magazine_web/classes_loader.php';
      	   $ads_id=$function->sanitize($_POST['ads_id']);
           $new_name = rand() . "." . $extension;  
           $path = $_SERVER['DOCUMENT_ROOT']."/magazine_web/assets/banners/" . $new_name;
           if(move_uploaded_file($_FILES['file']['tmp_name'], $path))  
           {  
            //save information into database.
            $status=$banner->save_banner($ads_id,$new_name,$extension);
            if($status){
              echo "200";
            }else{
              echo 'System Error Please Contact System Administrator.';
            }
           }else{
            echo "Error While Uploading Banner Please Contact System Administrator.";
           } 
      }  
      else  
      {  
        echo '<script>alert("Invalid File Formate")</script>';  
      }  
 }  
 else  
 {  
      echo '<script>alert("Please Select File")</script>';  
 }  
 ?>