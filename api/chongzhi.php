<?php
include('connect.php');
if (!empty($_POST['username'])) {
    $chongzhiusername=addslashes($_POST['chongzhiusername']);
    $amount=addslashes($_POST['amount']);
    $username=addslashes($_POST['username']);
    $password=addslashes($_POST['password']);
    //先检查账号密码
    $sql="select * from adminuser where username='$username' and password='$password'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if ($row) {//验证通过
        $mysqli->query('begin');
        //查询剩余额
        $sql="select * from wallet where username='$chongzhiusername'";
        $res=$mysqli->query($sql);
        $row=$res->fetch_assoc();
        $balance=((int)$row['coin'])+$amount;
        //先增加一个bills
        $sql="insert into bills(id,username,gamename,amount,surplus,type,remarks,time) values(null,'$chongzhiusername','充值',$amount,$balance,2,'',now())";
        $res=$mysqli->query($sql);
        if ($res) {//增加账单成功,加钱
            $sql="update wallet set coin=coin+$amount where username='$chongzhiusername'";
            $res=$mysqli->query($sql);
            if ($res) {
                $mysqli->query('commit');
                echo '1';
            } else {
                $mysqli->query('rollback');
                echo '交钱失败';
            }
        } else {
            $mysqli->query('rollback');
            echo '增加账单失败';
        }
    } else {
        echo 'erro';
    }
} else {//验证失败
    echo 'erro';
}
$mysqli->close();
