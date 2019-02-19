<?php
include('connect.php');
if (!empty($_POST['username'])) {
    $name=addslashes($_POST['name']);
    $record=addslashes($_POST['record']);
    $username=addslashes($_POST['username']);
    $password=addslashes($_POST['password']);
    //先检查账号密码
    $sql="select * from adminuser where username='$username' and password='$password'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if ($row) {//验证通过
        $sql="insert into chatrecord(id,username,content) values(null,'$name','$record')";
        $res=$mysqli->query($sql);
        echo $res;
    } else {
        echo 'erro';
    }
} else {//验证失败
    echo 'erro';
}
$mysqli->close();
