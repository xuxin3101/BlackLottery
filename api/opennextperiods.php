<?php
include('connect.php');
include_once('../config.php');
date_default_timezone_set('PRC');
//查询密码是否正确
$password=$_POST['password'];
if ($password=='mima') {
    /*
    //先查询每多少分钟开一次奖
    $sql="select * from systemsetting where syskey='cricletime'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $cricletime=(int)$row['sysvalue'];
    //计算每天有多少期
    $dailyamount=intval(1440/$cricletime);
   */
    //查询上一期是多少期，如果等于每天最大的期数，开启下一天的期
    $sql="select * from periods order by id desc";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $preperiods=(int)$row['periods'];
    $predate=$row['time'];
     
    $tablename='bet'.date("Ymd", time());
        //开启事务
        $sql="begin";
        $res=$mysqli->query($sql);
    if(date("Y-m-d",time())!=$predate){
        //不存在表
        $periods=1;
        $selectdb=$mysqli->select_db('bet');//切换数据库
        $sql="CREATE TABLE `$tablename` (
            `id` int(5) NOT NULL AUTO_INCREMENT,
            `username` varchar(25) NOT NULL,
            `type` int(2) NOT NULL,
            `amount` int(6) NOT NULL,
            `time` datetime NOT NULL,
            `periods` int(3) NOT NULL,
            `ballnum` int(1) DEFAULT NULL,
            PRIMARY KEY (`id`),
            UNIQUE KEY `username` (`username`,`time`,`type`,`ballnum`),
            CONSTRAINT `$tablename _ibfk_1` FOREIGN KEY (`username`) REFERENCES `BlackLottery`.`users` (`username`)
          ) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
          ";
        $res=$mysqli->query($sql);
        if (!$res) {//建表失败
            $sql="rollback";
            $res=$mysqli->query($sql);
            echo 'create table failed';
            $mysqli->close();
            return;
        } else {
            $mysqli->select_db($config['db']['dbname']);//切换回原数据库
        }
    } else {
        $periods=$preperiods+1;
    }
  
    $sql="insert into periods(id,periods,time,tablename,createtime) values (null,$periods,now(),'$tablename',now())";
    $res=$mysqli->query($sql);
    if ($res) {//成功
        $sql="commit";
        $res=$mysqli->query($sql);
        if ($res) {
            echo 'success';
        } else {
            echo 'failed';
        }
    } else {
        echo 'failed';
    }
} else {
    echo 'fool';
}

$mysqli->close();
