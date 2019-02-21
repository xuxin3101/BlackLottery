<?php
include('connect.php');
include_once('../config.php');
header("Access-Control-Allow-Origin: *");
$result=[];
$username=addslashes($_POST['username']);
$password=addslashes($_POST['password']);
$inviter=addslashes($_POST['inviter']);
if (empty($username) || empty($password)||strlen($username)<6||strlen($password)<6) {
    $result['info']="注册失败";
    $result['status']=2;
    echo json_encode($result);
    $mysqli->close();
    return;
}
//使用事务的概念往users表和login表里各插入一条数据
$sql="begin;";
$res= $mysqli->query($sql);
$sql="insert into users(id,username,password,status,level) values(null,'$username','$password',1,0)";
$res= $mysqli->query($sql);
if ($res) {//往users表里插入成功
    $sql="insert into login(id,username) values(null,'$username')";
    $res= $mysqli->query($sql);
    if ($res) {//往login表里插入成功
        $sql="insert into wallet(id,username,coin) values(null,'$username',0)";
        $res=$mysqli->query($sql);
        if ($res) {//往wallet表里插入成功
            //往relationship表里插入一条数据
            $sql="insert into relationship(id,superior,subordinate) values(null,'$inviter','$username')";
            $res=$mysqli->query($sql);
            if ($res) {//往relationship表里插入成功
                $sql="insert into bills(id,username,gamename,amount,surplus,type,remarks,time) values(null,'$inviter','邀请好友',0,null,7,'$username',now())";
                $res=$mysqli->query($sql);
                if($res){ 
                    $sql="commit";
                    $res= $mysqli->query($sql);
                    if ($res) {//
                        $result['info']="注册成功";
                        $result['status']=1;
                        echo json_encode($result);
                    } else {//注册失败
                        $sql="rollback;";
                        $res= $mysqli->query($sql);
                        $result['info']="注册失败";
                        $result['status']=2;
                        echo json_encode($result);
                    }
                }else{
                    $sql="rollback;";
                    $res= $mysqli->query($sql);
                    $result['info']="往relationship表里插入失败";
                    $result['status']=2;
                    echo json_encode($result);

                }
               
            } else {//往relationship表里插入失败
                $sql="rollback;";
                $res= $mysqli->query($sql);
                $result['info']="往relationship表里插入失败";
                $result['status']=2;
                echo json_encode($result);
            }
        } else {//往wallet表里插入失败
            $sql="rollback;";
            $res= $mysqli->query($sql);
            $result['info']="往wallet表里插入失败";
            $result['status']=2;
            echo json_encode($result);
        }
    } else {//注册失败
        $sql="rollback;";
        $res= $mysqli->query($sql);
        $result['info']="注册失败";
        $result['status']=2;
        echo json_encode($result);
    }
} else {//往users表里插入失败,执行rollback
    $sql="rollback;";
    $res= $mysqli->query($sql);
    $result['info']="注册失败";
    $result['status']=2;
    echo json_encode($result);
}
  
$mysqli->close();
