<?php
include('connect.php');
if (!empty($_POST['username'])) {
    $cricletime=addslashes($_POST['cricletime']);
    $customserviceqq=addslashes($_POST['customserviceqq']);
    $rechargeqq=addslashes($_POST['rechargeqq']);
    $withdrawqq=addslashes($_POST['withdrawqq']);
    $levelintroduce=addslashes($_POST['levelintroduce']);
    $starttime=addslashes($_POST['starttime']);
    $endtime=addslashes($_POST['endtime']);
    $username=addslashes($_POST['username']);
    $password=addslashes($_POST['password']);
    //先检查账号密码
    $sql="select * from adminuser where username='$username' and password='$password'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if ($row) {//验证通过
        
        $sql = "update systemsetting set sysvalue='$cricletime' where syskey='cricletime'";
        $res= $mysqli->query($sql);
        $sql = "update systemsetting set sysvalue='$customserviceqq' where syskey='customserviceqq'";
        $res= $mysqli->query($sql);
        $sql = "update systemsetting set sysvalue='$rechargeqq' where syskey='rechargeqq'";
        $res= $mysqli->query($sql);
        $sql = "update systemsetting set sysvalue='$withdrawqq' where syskey='withdrawqq'";
        $res= $mysqli->query($sql);
        $sql = "update systemsetting set sysvalue='$levelintroduce' where syskey='levelintroduce'";
        $res= $mysqli->query($sql);
        $sql = "update systemsetting set sysvalue='$starttime' where syskey='starttime'";
        $res= $mysqli->query($sql);
        $sql = "update systemsetting set sysvalue='$endtime' where syskey='endtime'";
        $res= $mysqli->query($sql);
        echo $res;
    }else{
        echo 'erro';
    }
} else {//验证失败
    echo 'erro';
}
$mysqli->close();
