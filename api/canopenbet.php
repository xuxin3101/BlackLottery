<?php
include('connect.php');
if ($_POST['password']=='mima') {
     //取出有效时间区间
     $sql="select * from systemsetting where syskey='starttime';";
     $res=$mysqli->query($sql);
     $row=$res->fetch_assoc();
     $starttime=$row['sysvalue'];//开始时间
     $sql="select * from systemsetting where syskey='endtime';";
     $res=$mysqli->query($sql);
     $row=$res->fetch_assoc();
     $endtime=$row['sysvalue'];//结束时间
     if($starttime !=$endtime){
        $starttime=strtotime($starttime);
        $endtime=strtotime($endtime);
        $currenttime=time();
        if (!isintime($starttime, $endtime, $currenttime)) {//不在时间区间内
        echo '0';
        $mysqli->close();
        return;
        }
     }
     echo '1'; 
}else{
    echo 'faild';
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
