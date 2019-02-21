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
$username=addslashes($_POST['username']);
$token=addslashes($_POST['token']);
//先检查token
$sql="select * from login where username='$username' and token='$token'";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
if($row){//token验证通过
    $apprentice=[];
    $grandson=[];
    $sql="select b.remarks subordinate,sum(b.amount) amount from relationship a,bills b where a.superior='$username' and b.remarks=a.subordinate group by subordinate";
    $res=$mysqli->query($sql);
    while($row=$res->fetch_assoc()){
        $tmpsub=$row['subordinate'];
        $sql="select sum(amount) amount from bills where remarks='$subordinate' and to_days(time) = to_days(now())";
        $tmpres=$mysqli->query($sql);
        $tmprow=$tmpres->fetch_assoc();
        $row['todayamount']=$row['amount'];
        array_push($apprentice,$row);
    }
    $sql="select c.remarks subordinate,sum(c.amount) amount from relationship a,relationship b,bills c where a.superior='$username' and a.subordinate=b.superior and b.subordinate=c.remarks group by subordinate";
    $res=$mysqli->query($sql);
    while($row=$res->fetch_assoc()){
        $tmpsub=$row['subordinate'];
        $sql="select sum(amount) amount from bills where remarks='$subordinate' and to_days(time) = to_days(now())";
        $tmpres=$mysqli->query($sql);
        $tmprow=$tmpres->fetch_assoc();
        $row['todayamount']=$row['amount'];
        array_push($grandson,$row);
    }
    $result['info']="获取成功";
    $result['status']=2;
    $result['apprentice']=$apprentice;
    $result['grandson']=$grandson;
    echo json_encode($result);

}else{
    $result['info']="token验证失败";
    $result['status']=2;
    $result['apprentice']=[];
    $result['grandson']=[];
    echo json_encode($result);
}


$mysqli->close();
