<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
//$sem = '';
//$sem = $_POST['sem'];
$stmt = $conn->prepare("SELECT * FROM `curriculum_odd`");
$stmt -> execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
//$a = array_reverse($result);
echo json_encode($result);

$stmt = $conn->prepare("TRUNCATE TABLE `curr_curriculum`");
$stmt -> execute();

$stmt = $conn->prepare("INSERT INTO `curr_curriculum` SELECT * FROM (SELECT * FROM `curriculum` WHERE `course_id` LIKE '%CE%' AND (sem%2)=:type ORDER BY `sem`) A");
$stmt-> bindParam(":type",$sem);
$stmt -> execute();

?>