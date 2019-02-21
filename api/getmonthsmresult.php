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
$r=[];

$sql="select * from lotteryresult where date_sub(curdate(),interval 30 DAY) <= date(time) order by time";
$res=$mysqli->query($sql);
while($row=$res->fetch_assoc()){
    if(!isset($r[$row['time']])){
        $r[$row['time']]=['da'=>0,'xiao'=>0,'dan'=>0,'shuang'=>0,'long'=>0,'hu'=>0,'ping'=>0];
    }
    if($row['ball1']>$row['ball5']){
        $r[$row['time']]['long']++;
    }else if($row['ball1']<$row['ball5']){
        $r[$row['time']]['hu']++;
    }else{
        $r[$row['time']]['ping']++;
    }
    $tmpresult=$row['ball1']+$row['ball2']+$row['ball3']+$row['ball4']+$row['ball5'];
    if($tmpresult>22){
        $r[$row['time']]['da']++;
    }else{
        $r[$row['time']]['xiao']++;
    }
    if ($tmpresult%2==1) {
        $r[$row['time']]['dan']++;
    }else{
        $r[$row['time']]['shuang']++;
    }
    
        
}
$result['result']=$r;
    $result['status']=1;
    $result['info']="获取成功";
    echo json_encode($result);

$mysqli->close();
