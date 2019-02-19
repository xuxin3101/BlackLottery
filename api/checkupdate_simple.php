<?php
include('connect.php');
$sql="select * from checkupdate";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
$row=$res->fetch_assoc();
echo json_encode($row);

$mysqli->close();
