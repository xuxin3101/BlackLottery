<?php
include('connect.php');
include_once('tools.php');
include_once('../config.php');
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods:OPTIONS, POST'); // 允许option，get，post请求
header('Access-Control-Allow-Headers:x-requested-with'); // 允许x-requested-with请求头
$result=[];
$tools=new Tools();
if (!$tools->checksign($_POST, $config['secretkey'])) {
    $result['info']="sign验证失败";
    $result['status']=0;
    $result['customservice']=(object)[];
    echo json_encode($result);
    $mysqli->close();
    return;
}
$rand=mt_rand(1,2);
$chatrecord=[];
while($rand--){
    $sql="SELECT username,content FROM `chatrecord` AS t1 JOIN (SELECT ROUND(RAND() * (SELECT MAX(id) FROM `chatrecord`)) AS id) AS t2 WHERE t1.id >= t2.id ORDER BY t1.id ASC LIMIT 1;";
    $res= $mysqli->query($sql);
    $row=$res->fetch_assoc();
    array_push($chatrecord,$row);
}
$result['info']="请求成功";
$result['status']=1;
$result['chartrecord']=$chatrecord;
echo json_encode($result);
$mysqli->close();
