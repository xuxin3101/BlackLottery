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
    echo json_encode($result);
    $mysqli->close();
    return;
}
$username=addslashes($_POST['username']);
$token=addslashes($_POST['token']);
$amount=addslashes($_POST['amount']);
//先检查token
$sql="select * from login where username='$username' and token='$token'";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
if ($row) {//检查token通过
    $sql="begin;";
    $mysqli->query($sql);
    $sql="select * from wallet where username='$username' for update";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $bankbalance=$row['coin'];
    if ($bankbalance<$amount) {
        $sql="commit";
        $mysqli->query($sql);
        $result['info']="钱庄余额不足";
        $result['status']=3;
        echo json_encode($result);
    } else {
        //增加银行余额账单
        $surplus=$bankbalance-$amount;
        $sql="insert into bills(id,username,gamename,amount,surplus,type,time) values(null,'$username','钱庄转余额',-$amount,$surplus,9,now())";
        $res=$mysqli->query($sql);
        if ($res) {
            //给bills2添加一个账单
            $sql="select * from bills2 where username='$username'";
            $res=$mysqli->query($sql);
            $row=$res->fetch_assoc();
            $balance=$row['coin'];
            $balance=$balance+$amount;
            $sql="insert into bills2(id,username,gamename,amount,surplus,type,time) values(null,'$username','钱庄转余额',$amount,$balance,9,now())";
            $res=$mysqli->query($sql);
            if ($res) {//添加成功
                //更新钱庄余额
                $sql="update wallet set coin=coin-$amount where username='$username'";
                $res=$mysqli->query($sql);
                if ($res) {
                    //更新余额
                    $sql="update wallet2 set coin=coin+$amount where username='$username'";
                    $res=$mysqli->query($sql);
                    if ($res) {
                        //成功
                        $mysqli->query('commit');
                        $result['info']="余额转换成功";
                        $result['status']=1;
                        echo json_encode($result);
                    } else {
                        $result['info']="余额转换失败";
                        $result['status']=4;
                        echo json_encode($result);
                        $mysqli->query("rollback");
                    }
                } else {
                    $result['info']="余额转换失败";
                    $result['status']=4;
                    echo json_encode($result);
                    $mysqli->query("rollback");
                }
            } else {
                $result['info']="余额转换失败";
                $result['status']=4;
                echo json_encode($result);
                $mysqli->query("rollback");
            }
        } else {
            $result['info']="余额转换失败";
            $result['status']=4;
            echo json_encode($result);
            $mysqli->query("rollback");
        }

        //扣除银行余额
        $sql="update wallet set coin=coin-$amount";
    }
} else {//检查token不通过，驳回
    $result['info']="token不正确";
    $result['status']=2;
    echo json_encode($result);
}
$mysqli->close();
