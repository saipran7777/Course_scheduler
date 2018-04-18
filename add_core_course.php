<?php
	require 'config.php';

	$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
	$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

	$name = $_POST["name"];
	$id = $_POST["course_id"];
	$ins = $_POST["ins"];
	$slot = $_POST["slot"];
	$type = $_POST["type"];
	$year = $_POST["year"];
	$batch = $_POST["batch"];
	$dept = $_POST["dept"];
	$roomno = $_POST["roomno"];
	$stmt = $conn->prepare("INSERT INTO `courses`(`course_id`, `course_name`, `slot`, `instructor`, `type`,`year`,`batch`,`dept`,`roomno`) VALUES (:type1,:type2,:type3,:type4,:type5,:type6,:type7,:type8,:type9)");
	$stmt-> bindParam(":type1",$id);
	$stmt-> bindParam(":type2",$name);
	$stmt-> bindParam(":type3",$slot);
	$stmt-> bindParam(":type4",$ins);
	$stmt-> bindParam(":type5",$type);
	$stmt-> bindParam(":type6",$year);
	$stmt-> bindParam(":type7",$batch);
	$stmt-> bindParam(":type8",$dept);
	$stmt-> bindParam(":type9",$roomno);
	$stmt->execute();

	echo "SUCCESS";		

?>
