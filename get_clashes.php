<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

$stmt = $conn->prepare("SELECT u.id,u.course_id,u.name, u.slot,u.instructor,u.type,u.clash_sorted FROM courses u INNER JOIN ( SELECT instructor, slot,clash_sorted, COUNT(*) FROM courses GROUP BY instructor, slot HAVING COUNT(*) > 1 AND clash_sorted='0') temp ON temp.instructor = u.instructor AND temp.slot = u.slot ORDER BY instructor, slot");
$stmt -> execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$a = array_reverse($result);

echo json_encode($a);
?>