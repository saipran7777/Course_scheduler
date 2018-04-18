<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

$stmt = $conn->prepare("TRUNCATE TABLE `dummy1`");
$stmt -> execute();


$stmt = $conn->prepare("INSERT INTO dummy1 SELECT *FROM (SELECT u.id,u.course_id,u.course_name,u.year,u.batch,u.dept,u.roomno,u.slot,SUBSTRING(s.slot_id,1,1) as slot1,SUBSTRING(s.slot_id,2,1) as slot2, u.instructor,u.clash_sorted FROM courses u INNER JOIN (SELECT slot,slot_id FROM slots)s ON u.slot = s.slot WHERE instructor!='')A");
$stmt -> execute();

$a =array();
$stmt = $conn->prepare("SELECT u.id as course1,temp.id as course2,u.clash_sorted FROM dummy1 u INNER JOIN ( SELECT * FROM dummy1) temp ON temp.slot = u.slot AND u.instructor=temp.instructor AND temp.course_id != u.course_id AND u.clash_sorted=0 AND temp.clash_sorted=0");
$stmt -> execute();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	$c1 = $row['course1'];
	$c2 = $row['course2'];
	array_push($a,$c1);
	array_push($a,$c2);
}

$stmt = $conn->prepare("SELECT u.id as course1,temp.id as course2,u.clash_sorted FROM dummy1 u INNER JOIN ( SELECT * FROM dummy1) temp ON temp.slot1 = u.slot AND u.instructor=temp.instructor AND temp.course_id != u.course_id AND u.clash_sorted=0 AND temp.clash_sorted=0");
$stmt -> execute();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	$c1 = $row['course1'];
	$c2 = $row['course2'];
	array_push($a,$c1);
	array_push($a,$c2);
}

$stmt = $conn->prepare("SELECT u.id as course1,temp.id as course2,u.clash_sorted FROM dummy1 u INNER JOIN ( SELECT * FROM dummy1) temp ON temp.slot2 = u.slot AND u.instructor=temp.instructor AND temp.course_id != u.course_id AND u.clash_sorted=0 AND temp.clash_sorted=0");
$stmt -> execute();
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	$c1 = $row['course1'];
	$c2 = $row['course2'];
	array_push($a,$c1);
	array_push($a,$c2);
}
$a = array_unique($a);
$a1 = array();
for ($i=0; $i <count($a) ; $i++) { 
	$stmt= $conn->prepare("SELECT * FROM courses WHERE id=:type");
	$stmt->bindParam("type",$a[$i]);
	$stmt->execute();
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	array_push($a1,$result);
}
echo json_encode($a1);
?>