<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

$stmt = $conn->prepare("TRUNCATE TABLE `dummy`");
$stmt -> execute();


$stmt = $conn->prepare("INSERT INTO dummy SELECT * FROM (SELECT id,course_id,course_name,year,batch,dept,slot,instructor,clash_sorted FROM courses WHERE slot!='' AND type='Core') A");
$stmt -> execute();

$stmt = $conn->prepare("TRUNCATE TABLE `dummy11`");
$stmt -> execute();

$stmt = $conn->prepare("INSERT INTO dummy11 SELECT * FROM (SELECT cu.id,cu.course_id,cu.course_name,cu.year,cu.batch,cu.dept,cu.slot,SUBSTRING(s.slot_id,1,1) as slot1,SUBSTRING(s.slot_id,2,1) as slot2,cu.instructor,cu.clash_sorted FROM dummy cu INNER JOIN (SELECT * FROM slots)s ON cu.slot = s.slot )A ");
$stmt -> execute();

$a =array();
$b =array();
$sum = 0;
$stmt = $conn->prepare("SELECT u.id as course1,u.dept as dept1,temp.id as course2,temp.dept as dept2,u.clash_sorted FROM dummy11 u INNER JOIN ( SELECT * FROM dummy11) temp ON temp.slot = u.slot AND temp.year = u.year AND temp.batch = u.batch AND temp.dept = u.dept AND temp.course_id != u.course_id AND u.clash_sorted=0 AND temp.clash_sorted=0");
$stmt -> execute();

while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	$c1 = $row['course1'];
	$c2 = $row['course2'];
	$d1 = $row['dept1'];
	$d2 = $row['dept2'];
	if($sum != (int)$c1 + (int)$c2){
		$sum = (int)$c1 + (int)$c2;
		array_push($a,array('0'=>$c1,'1'=>$d1,'2'=>$c2,'3'=>$d2));
	}

}

$stmt = $conn->prepare("SELECT u.id as course1,u.dept as dept1,temp.id as course2,temp.dept as dept2,u.clash_sorted FROM dummy11 u INNER JOIN ( SELECT * FROM dummy11) temp ON temp.slot1 = u.slot AND temp.year = u.year AND temp.batch = u.batch AND temp.dept = u.dept AND temp.course_id != u.course_id AND u.clash_sorted=0 AND temp.clash_sorted=0");
$stmt -> execute();

$sum=0;
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	$c1 = $row['course1'];
	$c2 = $row['course2'];
	$d1 = $row['dept1'];
	$d2 = $row['dept2'];
	if($sum != (int)$c1 + (int)$c2){
		$sum = (int)$c1 + (int)$c2;
		array_push($a,array('0'=>$c1,'1'=>$d1,'2'=>$c2,'3'=>$d2));
	}
}

$stmt = $conn->prepare("SELECT u.id as course1,u.dept as dept1,temp.id as course2,temp.dept as dept2,u.clash_sorted FROM dummy11 u INNER JOIN ( SELECT * FROM dummy11) temp ON temp.slot2 = u.slot AND temp.year = u.year AND temp.batch = u.batch AND temp.dept = u.dept AND temp.course_id != u.course_id AND u.clash_sorted=0 AND temp.clash_sorted=0");
$stmt -> execute();

$sum = 0;
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	$c1 = $row['course1'];
	$c2 = $row['course2'];
	$d1 = $row['dept1'];
	$d2 = $row['dept2'];
	if($sum != (int)$c1 + (int)$c2){
		$sum = (int)$c1 + (int)$c2;
		array_push($a,array('0'=>$c1,'1'=>$d1,'2'=>$c2,'3'=>$d2));
	}
}
$a = array_unique($a,SORT_REGULAR);
$a1 = array();
for ($i=0; $i <count($a) ; $i++) { 
	$stmt= $conn->prepare("SELECT * FROM courses WHERE id=:type AND dept=:type1");
	$stmt->bindParam("type",$a[$i][0]);
	$stmt->bindParam("type1",$a[$i][1]);
	$stmt->execute();
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	array_push($a1,$result);
	$stmt= $conn->prepare("SELECT * FROM courses WHERE id=:type AND dept=:type1");
	$stmt->bindParam("type",$a[$i][2]);
	$stmt->bindParam("type1",$a[$i][3]);
	$stmt->execute();
	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	array_push($a1,$result);
}
echo json_encode($a1);

?>