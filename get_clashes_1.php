<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

$stmt = $conn->prepare("TRUNCATE TABLE `dummy`");
$stmt -> execute();


$stmt = $conn->prepare("INSERT INTO dummy SELECT * FROM ((SELECT cu.course_id,cu.course_name,cu.sem,cu.batch,co.slot,co.instructor,co.clash_sorted FROM curriculum cu INNER JOIN courses co ON cu.course_id = co.course_id WHERE cu.course_id LIKE '%CE%' AND co.slot !='') UNION (SELECT cu.course_id,cu.course_name,cu.sem,cu.batch,el.slot,el.instructor,el.clash_sorted FROM curriculum cu INNER JOIN electives el ON (cu.course_id = el.course_id AND cu.course_name = el.name) WHERE cu.course_id NOT LIKE '%CE%'  AND el.slot !='')) A");
$stmt -> execute();

$stmt = $conn->prepare("SELECT u.course_id,u.course_name,u.sem,u.batch, u.slot,u.instructor,u.clash_sorted FROM dummy u INNER JOIN ( SELECT sem, slot,clash_sorted, COUNT(*) FROM dummy GROUP BY sem, slot HAVING COUNT(*) > 1 AND clash_sorted='0') temp ON temp.sem = u.sem AND temp.slot = u.slot ORDER BY sem, slot");
$stmt -> execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
if (count($result)>0) {
	echo json_encode($result);
}
// $a = array_reverse($result);

?>