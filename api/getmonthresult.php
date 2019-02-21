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
        $r[$row['time']]=['num0'=>0,'num1'=>0,'num2'=>0,'num3'=>0,'num4'=>0,'num5'=>0,'num6'=>0,'num7'=>0,'num8'=>0,'num9'=>0];
    }
    
    for($i=0;$i<5;$i++){
        switch ($i){
            case 0:
            $ball='ball1';
            break;
            case 1:
            $ball='ball2';
            break;
            case 2:
            $ball='ball3';
            break;
            case 3:
            $ball='ball4';
            break;
            case 4:
            $ball='ball5';
            break;
        }
        switch ($row[$ball]) {
            case 0:
            $r[$row['time']]['num0']++;
            break;
            case 1:
            $r[$row['time']]['num1']++;
            break;
            case 2:
            $r[$row['time']]['num2']++;
            break;
            case 3:
            $r[$row['time']]['num3']++;
            break;
            case 4:
            $r[$row['time']]['num4']++;
            break;
            case 5:
            $r[$row['time']]['num5']++;
            break;
            case 6:
            $r[$row['time']]['num6']++;
            break;
            case 7:
            $r[$row['time']]['num7']++;
            break;
            case 8:
            $r[$row['time']]['num8']++;
            break;
            case 9:
            $r[$row['time']]['num9']++;
            break;
        }

    }
    

        
}
$result['result']=$r;
    $result['status']=1;
    $result['info']="获取成功";
    echo json_encode($result);

$mysqli->close();
