<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
$user = $_POST['user'];
$stmt = $conn->prepare("SELECT * FROM `courses` WHERE `instructor`='$user'");
$stmt -> execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$a = array_reverse($result);
echo json_encode($a);
?>