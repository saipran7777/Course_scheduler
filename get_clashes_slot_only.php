<?php
require 'config.php';
$conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
$conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

$stmt = $conn->prepare("SELECT GROUP_CONCAT( id ) AS id FROM courses GROUP BY `slot` HAVING ( COUNT(`slot`) > 1 )");
$stmt -> execute();

while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $clashes = explode(',',$row['id']);
    unset($a);
    for ($i=0; $i < count($clashes); $i++) { 
    	$stmt1 = $conn->prepare("SELECT * FROM courses WHERE id=$clashes[$i] AND slot != '' AND clash_sorted ='0'");
		$stmt1 -> execute();
		$result = $stmt1->fetchAll(PDO::FETCH_ASSOC);
		if (count($result)>0) {
			$a[] = array_reverse($result);
		}
    }
    if (count($result)>0) {
			$b[] = $a;
	}
    
}
echo json_encode($b);
?>