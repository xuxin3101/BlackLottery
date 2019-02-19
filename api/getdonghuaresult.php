<?php
include('connect.php');
include_once('../config.php');
header("Access-Control-Allow-Origin: *");
header('Access-Control-Allow-Methods:OPTIONS, POST'); // 允许option，get，post请求
header('Access-Control-Allow-Headers:x-requested-with'); // 允许x-requested-with请求头
date_default_timezone_set('PRC');
$result=[];
$result['time']=time()*1000;
$current=[];
$sql="select * from systemsetting where syskey='cricletime'";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
$cricletime=(int)$row['sysvalue'];
$sql="select * from periods order by id desc;";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
$next=[];
$next['periodNumber']=$row['periods'];

$next['periodDate']=date('Ymd',strtotime($row['time']));

$createtime=$row['createtime'];
$lotterytimestamp=strtotime($createtime)+$cricletime*60;
$lotterytime=date('Y-m-d H:i:s',$lotterytimestamp);
$next['awardTime']=$lotterytime;
$next['awardTimeInterval']=($lotterytimestamp-time())*1000;
$result['awardState']=$lotterytimestamp-time()>0?false:true;
$next['delayTimeInterval']=$cricletime;
$result['next']=$next;
$cuttentinfo=$res->fetch_assoc();
$sql="select * from lotteryresult order by id desc";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
$current['periodNumber']=$row['period'];
$current['periodDate']=date('Ymd',strtotime($row['time']));
$createtime=$cuttentinfo['createtime'];
$lotterytime=strtotime($createtime)+$cricletime*60;
$lotterytime=date('Y-m-d H:i:s',$lotterytime);
$current['awardTime']=$lotterytime;
$ball1=$row['ball1'];
$ball2=$row['ball2'];
$ball3=$row['ball3'];
$ball4=$row['ball4'];
$ball5=$row['ball5'];
$current['awardNumbers']=$ball1.','.$ball2.','.$ball3.','.$ball4.','.$ball5;
$result['current']=$current;

echo json_encode($result);
$mysqli->close();
