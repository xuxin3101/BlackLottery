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
    $result['oddsinfo']=(object)[];
    echo json_encode($result);
    $mysqli->close();
    return;
}
$username=$_POST['username'];
$sql="select odds_mem.* from odds_mem,users where users.username='$username' and users.level=odds_mem.level";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
$result['info']="获取成功";
$result['status']=0;
$result['oddsinfo']=$row;
echo json_encode($result);
$mysqli->close();
