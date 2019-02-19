<?php
include('connect.php');
include_once('../config.php');
if ($_POST['password']=='mima') {
    $mysqli->select_db('bet');
    $sql='update status set status=0';
    $res=$mysqli->query($sql);
    $mysqli->select_db($config['db']['dbname']);
    //取出当前期的表名
    $sql="select * from periods order by id desc";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $tablename=$row['tablename'];
    $periods=$row['periods'];
    $mysqli->select_db('bet');
    $sql="select * from $tablename where periods=$periods;";
    $data=[];
    $res=$mysqli->query($sql);
    while ($row=$res->fetch_assoc()) {
        array_push($data, $row);
    }
    echo json_encode($data);
}
$mysqli->close();
