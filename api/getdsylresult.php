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

$value=addslashes($_POST['value']);
switch ($value){
    case 0://近一个月的数据
    $sql="select * from lotteryresult where date_sub(curdate(),interval 30 DAY) <= date(time)";
    break;
    case 1://近三个月的数据
    $sql="select * from lotteryresult where date_sub(curdate(),interval 90 DAY) <= date(time)";
    break;
    case 2://近半年的数据
    $sql="select * from lotteryresult where date_sub(curdate(),interval 180 DAY) <= date(time)";
    break;
    case 3://近一年的数据
    $sql="select * from lotteryresult where date_sub(curdate(),interval 365 DAY) <= date(time)";
    break;
}
$r=[];
$ball1=[];
$ball2=[];
$ball3=[];
$ball4=[];
$ball5=[];
$tmpball1x=0;
$tmpball1d=0;
$tmpball2x=0;
$tmpball2d=0;
$tmpball3x=0;
$tmpball3d=0;
$tmpball4x=0;
$tmpball4d=0;
$tmpball5x=0;
$tmpball5d=0;
$res=$mysqli->query($sql);
while($row=$res->fetch_assoc()){
    if($row['ball1']%2==1){//1球dan
        $tmpball1x++;
        $tmpball1d=0;
        for($i=0;$i<$tmpball1x;$i++){
            $ball1['x'.($i+1)]++;
        }
    }else{//1球小
        $tmpball1d++;
        $tmpball1x=0;
        for($i=0;$i<$tmpball1d;$i++){
            $ball1['d'.($i+1)]++;
        }

    }
    if($row['ball2']%2==1){//1球大
        $tmpball2x++;
        $tmpball2d=0;
        for($i=0;$i<$tmpball2x;$i++){
            $ball2['x'.($i+1)]++;
        }
        

    }else{//1球小
        $tmpball2d++;
        $tmpball2x=0;
        for($i=0;$i<$tmpball2d;$i++){
            $ball2['d'.($i+1)]++;
        }

    }
    if($row['ball3']%2==1){//1球大
        $tmpball3x++;
        $tmpball3d=0;
        for($i=0;$i<$tmpball3x;$i++){
            $ball3['x'.($i+1)]++;
        }
        

    }else{//1球小
        $tmpball3d++;
        $tmpball3x=0;
        for($i=0;$i<$tmpball3d;$i++){
            $ball3['d'.($i+1)]++;
        }

    }
    if($row['ball4']%2==1){//1球大
        $tmpball4x++;
        $tmpball4d=0;
        for($i=0;$i<$tmpball4x;$i++){
            $ball4['x'.($i+1)]++;
        }
        

    }else{//1球小
        $tmpball4d++;
        $tmpball4x=0;
        for($i=0;$i<$tmpball4d;$i++){
            $ball4['d'.($i+1)]++;
        }
        

    }
    if($row['ball5']%2==1){//1球大
        $tmpball5x++;
        $tmpball5d=0;
        for($i=0;$i<$tmpball5x;$i++){
            $ball5['x'.($i+1)]++;
        }
        

    }else{//1球小
        $tmpball5d++;
        $tmpball5x=0;
        for($i=0;$i<$tmpball5d;$i++){
            $ball5['d'.($i+1)]++;
        }
    }

}
$r['ball1']=$ball1;
$r['ball2']=$ball2;
$r['ball3']=$ball3;
$r['ball4']=$ball4;
$r['ball5']=$ball5;
$result['status']=1;
$result['info']="获取成功";
$result['result']=$r;
echo json_encode($result);

$mysqli->close();
