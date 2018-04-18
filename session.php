<?php
   include 'config.php';
   session_start();
  if(isset($_SESSION['login_user'])){
    $user_check = $_SESSION['login_user'];
    echo "<div>User : ".$user_check."  ";
    $user_name = $_SESSION['login_name'];
    echo "Name :".$user_name."</div>";

  }else{
    echo "No Session";
    header("location:login.html");
  }
?>  