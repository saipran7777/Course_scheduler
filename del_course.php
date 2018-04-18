<?php
	require 'config.php';

	$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
	$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

	$id = $_POST["id"];

	$stmt = $conn->prepare("DELETE FROM `courses` WHERE `id`=:type1");
	$stmt-> bindParam(":type1",$id);
	$stmt->execute();

	echo "SUCCESS";		

?>
