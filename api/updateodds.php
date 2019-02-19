<?php
include('connect.php');
if (!empty($_POST['username'])) {
    $daxiao=addslashes($_POST['daxiao']);
    $longhu=addslashes($_POST['longhu']);
    $he=addslashes($_POST['he']);
    $niu1=addslashes($_POST['niu1']);
    $niu2=addslashes($_POST['niu2']);
    $niu3=addslashes($_POST['niu3']);
    $niu4=addslashes($_POST['niu4']);
    $niu5=addslashes($_POST['niu5']);
    $niu6=addslashes($_POST['niu6']);
    $niu7=addslashes($_POST['niu7']);
    $niu8=addslashes($_POST['niu8']);
    $niu9=addslashes($_POST['niu9']);
    $niuniu=addslashes($_POST['niuniu']);
    $baozi=addslashes($_POST['baozi']);
    $sizhang=addslashes($_POST['sizhang']);
    $hulu=addslashes($_POST['hulu']);
    $shunzi=addslashes($_POST['shunzi']);
    $sanzhang=addslashes($_POST['sanzhang']);
    $liangdui=addslashes($_POST['liangdui']);
    $yidui=addslashes($_POST['yidui']);
    $wuli=addslashes($_POST['wuli']);
    $zhixuan=addslashes($_POST['zhixuan']);
    $renxuan=addslashes($_POST['renxuan']);
    $username=addslashes($_POST['username']);
    $password=addslashes($_POST['password']);
    $level=addslashes($_POST['level']);
    //先检查账号密码
    $sql="select * from adminuser where username='$username' and password='$password'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if ($row) {//验证通过
        $sql = "update odds_mem set bigorsmall=$daxiao,longhu=$longhu,draw=$he,niu1=$niu1,niu2=$niu2,niu3=$niu3,niu4=$niu4,niu5=$niu5,niu6=$niu6,niu7=$niu7,niu8=$niu8,niu9=$niu9,niuniu=$niuniu
        ,baozi=$baozi,sizhang=$sizhang,hulu=$hulu,shunzi=$shunzi,sanzhang=$sanzhang,liangdui=$liangdui,yidui=$yidui,wuli=$wuli,zhixuan=$zhixuan,renxuan=$renxuan where level=$level";
        $res= $mysqli->query($sql);
        echo $res;
    }else{
        echo 'erro';
    }
} else {//验证失败
    echo 'erro';
}
$mysqli->close();
