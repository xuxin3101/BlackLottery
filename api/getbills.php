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
    $result['bills']=[];
    echo json_encode($result);
    $mysqli->close();
    return;
}

$username=addslashes($_POST['username']);
$token=addslashes($_POST['token']);
//先检查token
$sql="select * from login where username='$username' and token='$token'";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
if($row){
    $sql="select * from bills where username='$username' order by id desc";
    $res=$mysqli->query($sql);
    $data=[];
    while($row=$res->fetch_assoc()){
        array_push($data,$row);
    }
    $result['info']="请求成功";
    $result['status']=1;
    $result['bills']=$data;
    echo json_encode($result);
}else{
    $result['info']="token不正确";
    $result['status']=2;
    $result['bills']=[];
    echo json_encode($result);
}


$mysqli->close();
