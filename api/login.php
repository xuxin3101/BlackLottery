<?php
include('connect.php');
include_once('tools.php');
$config=require_once('../config.php');
header("Access-Control-Allow-Origin: *");
$result=[];
$tools=new Tools();
if (!$tools->checksign($_POST, $config['secretkey'])) {
    $result['info']="sign验证失败";
    $result['status']=0;
    $result['userinfo']=(object)[];
    echo json_encode($result);
    $mysqli->close();
    return;
}
$username=addslashes($_POST['username']);
$password=addslashes($_POST['password']);
if (empty($username) || empty($password)) {
    $result['info']="登陆失败";
    $result['status']=0;
    $result['userinfo']=(object)[];
    echo json_encode($result);
    $mysqli->close();
    return;
}
    $sql = "select id,status,username from users where username='$username' and password='$password';";
    $res = $mysqli->query($sql);
    if (!$res) {
        die("sql error:\n" . $mysqli->error);
    }
$row= $res->fetch_assoc();
if ($row) {
    if ($row['status']!='1') {//1代表正常状态，不是1代表被封
        $result['info']="账号状态异常";
        $result['status']=2;
        $userinfo=[];
        $userinfo['username']=$row['username'];
        $result['userinfo']=$userinfo;
        echo json_encode($result);
        $mysqli->close();
        return;
    }
    $uniqid = md5(uniqid(microtime(true), true));
    $sql="update login set token='$uniqid' where username='$username';";
    $res = $mysqli->query($sql);
    $result['info']="登录成功";
    $result['status']=1;
    $userinfo=[];
    $userinfo['username']=$row['username'];
    $result['userinfo']=$userinfo;
    echo json_encode($result);
} else {
    echo "failed";
}
$mysqli->close();

?>

