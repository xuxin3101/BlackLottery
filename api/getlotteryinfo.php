<?php
include('connect.php');
include_once('../config.php');
//查询密码是否正确
$password=$_POST['password'];
if ($password=='mima') {
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
    if($starttime !=$endtime){//开始结束时间不同，做判断在不在时间区间
        $starttime=strtotime($starttime);
        $endtime=strtotime($endtime);
        $currenttime=time();
        if(!isintime($starttime,$endtime,$currenttime)){//不在时间区间内
            $info=[];
            $line=strtotime('00:00:00');//当天午夜12点时间
            if(($currenttime-$line)/(3600)<12){//凌晨到12点
                $starttime=$starttime+86400;
            }
            $info['lotterytime']=date('Y-m-d H:i:s',$starttime);
            $info['periods']=0;
            echo json_encode($info); 
            $mysqli->close();
            return;
        }
    }

    //查询上一期是多少期，如果等于每天最大的期数，开启下一天的期
    $sql="select * from periods order by id desc";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $preperiods=(int)$row['periods'];//当前期
    $lotterytime=$row['createtime'];
    $lotterytime=strtotime($lotterytime)+$cricletime*60;
    $lotterytime=date('Y-m-d H:i:s',$lotterytime);
    $info=[];
    $info['lotterytime']=$lotterytime;
    $info['periods']=$preperiods;
    echo json_encode($info);
  
} else {
    echo 'fool';
}

$mysqli->close();
function isintime($starttime,$endtime,$currenttime){
	//判断当前时间和午夜12点的时间
	$line=strtotime('00:00:00');//当天午夜12点时间
	if(($currenttime-$line)/(3600)<12){//凌晨到中午12点之间
		$starttime=$starttime>$endtime?$starttime-86400:$starttime;
	}else{//下午到凌晨
		$endtime=$starttime>$endtime?$endtime+86400:$endtime;		
	}
	if($currenttime>=$starttime && $currenttime<=$endtime){
		return true;
	}else{
		return false;
	}
}
