<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

$list = $_POST['list'];
$list = json_decode($list,TRUE);

//print_r($list);
$stmt = $conn->prepare("TRUNCATE TABLE `courses`");
$stmt -> execute();

for ($i=0; $i <count($list) ; $i++) { 
	$cid = $list[$i]['course_id'];
	$cnm = $list[$i]['course_name'];
	$cslot = $list[$i]['slot'];
	$cyear = $list[$i]['year'];
	$cbatch = $list[$i]['batch'];
	$cdept = $list[$i]['dept'];
	$ctype = "Core";
	print_r($cnm);
	$stmt = $conn->prepare("INSERT INTO `courses` (`course_id`, `course_name`, `year`, `batch`, `dept`, `slot`,`type`) VALUES (:type1,:type2,:type3,:type4,:type5,:type6,:type7)");
	$stmt->bindParam(":type1",$cid);
	$stmt->bindParam(":type2",$cnm);
	$stmt->bindParam(":type3",$cyear);
	$stmt->bindParam(":type4",$cbatch);
	$stmt->bindParam(":type5",$cdept);
	$stmt->bindParam(":type6",$cslot);
	$stmt->bindParam(":type7",$ctype);
	$stmt -> execute();
}
?>