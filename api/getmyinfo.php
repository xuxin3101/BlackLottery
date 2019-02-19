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
    $result['myinfo']=(object)[];
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
if ($row) {//检查token通过
    $sql="select users.username username,users.level level,wallet.coin coin  from users,wallet where users.username='$username' and wallet.username='$username'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if($row){
        $result['info']="查询成功";
        $result['status']=1;
        $myinfo=[];
        $myinfo['username']=$username;
        $myinfo['balance']=$row['coin'];
        $myinfo['level']=$row['level'];
        $result['myinfo']=$myinfo;
        echo json_encode($result);
    }else{
        $result['info']="查询失败";
        $result['status']=3;
        $result['myinfo']=(object)[];
        echo json_encode($result);
    }
} else {//检查token不通过，驳回
    $result['info']="token不正确";
    $result['status']=2;
    $result['myinfo']=(object)[];
    echo json_encode($result);
}
$mysqli->close();
