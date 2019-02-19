<?php
include('connect.php');
if (!empty($_POST['username'])) {
    $dengjiusername=addslashes($_POST['dengjiusername']);
    $level=addslashes($_POST['level']);
    $username=addslashes($_POST['username']);
    $password=addslashes($_POST['password']);
    //先检查账号密码
    $sql="select * from adminuser where username='$username' and password='$password'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if ($row) {//验证通过
        $sql="update users set level=$level where username='$dengjiusername'";
        $res=$mysqli->query($sql);
        if ($res) {
            echo '1';
        } else {
            echo '交钱失败';
        }
    } else {
        echo 'erro';
    }
} else {//验证失败
    echo 'erro';
}
$mysqli->close();
