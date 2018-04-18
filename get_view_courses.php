<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
$stmt = $conn->prepare("SELECT a.*, b.totalCount FROM courses a INNER JOIN ( SELECT *,COUNT(*) totalCount FROM courses GROUP BY `course_id`,`instructor`) b ON a.`course_id` = b.`course_id` AND a.instructor = b.instructor ORDER BY a.`course_id` ");
$stmt -> execute();
$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($result);
?>