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
    $result['currentresult']=(object)[];
    echo json_encode($result);
    $mysqli->close();
    return;
}
  
    $sql="select * from lotteryresult order by id desc";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $result['info']="获取成功";
    $result['status']=1;
    $result['currentresult']=$row;
     //先查询每多少分钟开一次奖
     $sql="select * from systemsetting where syskey='cricletime'";
     $res=$mysqli->query($sql);
     $row=$res->fetch_assoc();
     $cricletime=(int)$row['sysvalue'];
     //计算每天有多少期
     $dailyamount=intval(1440/$cricletime);
      //取出有效时间区间
    $sql="select * from systemsetting where syskey='starttime';";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $starttime=$row['sysvalue'];//开始时间
    $sql="select * from systemsetting where syskey='endtime';";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $endtime=$row['sysvalue'];//结束时间
    $sql="select * from periods order by id desc";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $lotterytime=$row['createtime'];
    $lotterytime=strtotime($lotterytime)+$cricletime*60;
    $lotterytime=date('Y-m-d H:i:s', $lotterytime);
    $result['nextperiods']=$row['periods'];
    $result['lotterytime']=$lotterytime;
    $row=$res->fetch_assoc();
    $result['currentperiods']=$row['periods'];
    if ($starttime !=$endtime) {//开始结束时间不同，做判断在不在时间区间
        $starttime=strtotime($starttime);
        $endtime=strtotime($endtime);
        $currenttime=time();
        if (!isintime($starttime, $endtime, $currenttime)) {//不在时间区间内
            $line=strtotime('00:00:00');//当天午夜12点时间
            if(($currenttime-$line)/(3600)<12){//凌晨到12点
                $starttime=$starttime+86400;
            }
            $result['lotterytime']=date('Y-m-d H:i:s',$starttime);
        }
    }
   
    echo json_encode($result);

$mysqli->close();
function isintime($starttime, $endtime, $currenttime)
{
    //判断当前时间和午夜12点的时间
    $line=strtotime('00:00:00');//当天午夜12点时间
    if (($currenttime-$line)/(3600)<12) {//凌晨到中午12点之间
        $starttime=$starttime>$endtime?$starttime-86400:$starttime;
    } else {//下午到凌晨
        $endtime=$starttime>$endtime?$endtime+86400:$endtime;
    }
    if ($currenttime>=$starttime && $currenttime<=$endtime) {
        return true;
    } else {
        return false;
    }
}
