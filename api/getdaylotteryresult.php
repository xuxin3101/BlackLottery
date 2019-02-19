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
    $result['lotteryresult']=[];
    echo json_encode($result);
    $mysqli->close();
    return;
}
$date=addslashes($_POST['date']);
$sql="select * from lotteryresult where date_format(time,'%Y-%m-%d')='$date' order by period desc";
$res=$mysqli->query($sql);
$data=[];
while($row=$res->fetch_assoc()){
    array_push($data,$row);
}
$result['info']="获取成功";
$result['status']=1;
$result['lotteryresult']=$data;
echo json_encode($result);
$mysqli->close();
