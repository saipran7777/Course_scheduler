<?php
	require 'config.php';

	$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
	$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

	$id = $_POST["id"];
	$name = $_POST["name"];
	$cid = $_POST["course_id"];
	$slot = $_POST["slot"];
	$type = $_POST["type"];
	$ins = $_POST["ins"];
	$roomno = $_POST["roomno"];
	$totcap = $_POST["totcap"];
	$outcap = $_POST["outcap"];
	$alloc_type = $_POST["alloc_type"];

	$stmt = $conn->prepare("UPDATE `courses` SET `course_name`=:type2,`slot`=:type3,`type`=:type4,`instructor`=:type5,`roomno`=:type6,`totcap`=:type7,`outcap`=:type8,`alloc_type`=:type9 WHERE `id`=:type1");
	$stmt-> bindParam(":type1",$id);
	$stmt-> bindParam(":type2",$name);
	$stmt-> bindParam(":type3",$slot);
	$stmt-> bindParam(":type4",$type);
	$stmt-> bindParam(":type5",$ins);
	$stmt-> bindParam(":type6",$roomno);
	$stmt-> bindParam(":type7",$totcap);
	$stmt-> bindParam(":type8",$outcap);
	$stmt-> bindParam(":type9",$alloc_type);
	$stmt->execute();

	echo "SUCCESS";		

?>
