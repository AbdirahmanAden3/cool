<?php
 
  
 $con = new mysqli("localhost", "root", "", "attedance");
  
   $id = $_GET['id'];

      $result = mysqli_query($con, "DELETE FROM careate WHERE id = '$id'");


      if($result){
          echo "succsesfully";  
        }else{
          echo "good";
        }


?>