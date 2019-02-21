<?php
include('connect.php');
include_once('../config.php');
if ($_POST['password']=='mima') {
    //取出利息比
    $sql="select * from systemsetting where syskey='dailyinsterest'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $rate=$row['sysvalue'];
    $rate=$rate/10000;
    //查询出所有钱庄余额大于334的
    $minamount=1/$rate;
    $sql="select * from wallet where coin>=$minamount;";
    $res=$mysqli->query($sql);
    while($row=$res->fetch_assoc()){
        //对于筛选出来满足条件的加钱；
        $username=$row['username'];
        //查询一天之前的钱庄余额
        $sql="select sum(amount) amount from bills where username='$username' and to_days(now())-to_days(time)>1";
        $tmpres=$mysqli->query($sql);
        $tmprow=$tmpres->fetch_assoc();
        $amount=$tmprow['amount'];
        //查询几天取出的钱
        $sql="select sum(amount) amount from bills where username='$username' and to_days(now())-to_days(time)<=1 and amount<0";
        $tmpres=$mysqli->query($sql);
        $tmprow=$tmpres->fetch_assoc();
        $amount=$amount+$tmprow['amount'];
        $amount=$amount*$rate;
        send_moeny($mysqli,$row,$amount,$config['db']['dbname'],'每日利息','');
    }
    echo 'success';
    
} else {
    echo 'fool';
}
$mysqli->close();
function send_moeny($mysqli, $info, $amount, $dbname, $gamename, $remarks)
{
    //加账单，加余额
    $username=$info['username'];
    //切换数据库
    $mysqli->select_db('bet');
    //需要增加的钱
    $conin=intval($amount);
    //查询剩余额
    $sql="select * from wallet where username='$username'";
    $mysqli->select_db($dbname);
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $balance=((int)$row['coin'])+$conin;
    //增加一个账单
    $sql="insert into bills(id,username,gamename,amount,surplus,type,remarks,time) values(null,'$username','$gamename',$conin,$balance,0,'$remarks',now())";
    $res=$mysqli->query($sql);
    //增加余额
    $sql="update wallet set coin=coin+$conin where username='$username'";
    $res=$mysqli->query($sql);
    //切换回原来的数据库
    //$mysqli->select_db($dbname);
}
