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
$sql="select * from systemsetting where syskey='customserviceqq' or syskey='rechargeqq' or syskey='withdrawqq'";
$res= $mysqli->query($sql);
$customservice=[];
while($row=$res->fetch_assoc()){
    $customservice[$row['syskey']]=$row['sysvalue'];
}
$result['info']="请求成功";
$result['status']=1;
$result['customservice']=$customservice;
echo json_encode($result);
$mysqli->close();
