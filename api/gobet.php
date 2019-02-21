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
//检查status，是否允许投注
$mysqli->select_db('bet');
$res=$mysqli->query('select * from status');
$row=$res->fetch_assoc();
if ($row['status']==0) {
    //投注通道已关闭,不允许插入
    $result['info']="投票通道已关闭";
    $result['status']=5;
    echo json_encode($result);
    $mysqli->close();
    return;
}
$mysqli->select_db($config['db']['dbname']);

$username=addslashes($_POST['username']);
$token=addslashes($_POST['token']);
//先检查token
$sql="select * from login where username='$username' and token='$token'";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
if ($row) {//检查token通过
    //查询自己有没有上级
    $sql="select * from relationship where subordinate='$username'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if ($row) {
        $superior=$row['superior'];
        //查询徒弟的分配比率
        $sql="select * from systemsetting where syskey='apprentice';";
        $res=$mysqli->query($sql);
        $row=$res->fetch_assoc();
        $apprenticerate=$row['sysvalue'];
        //查询自己有没有二级上级
        $sql="select b.* from relationship a,relationship b where a.subordinate='$username' and a.superior=b.subordinate";
        $res=$mysqli->query($sql);
        $row=$res->fetch_assoc();
        if ($row) {
            $ercishangji=$row['superior'];
            //查询二次上级分配比率
            $sql="select * from systemsetting where syskey='grandson';";
            $res=$mysqli->query($sql);
            $row=$res->fetch_assoc();
            $ercishangjirate=$row['sysvalue'];
        }
    }
    

   

    //查询当前期的表
    $sql="select * from periods order by id desc";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $tablename=$row['tablename'];
    $periods=$row['periods'];
    //取出数据，查询余额是不是够
    $data=$_POST['data'];
    $dataarray=explode("|", $data);
    $money=0;//本次押注花费总金额
    foreach ($dataarray as $key=>$value) {
        $tmp=explode(";", $value);
    
        if ($tmp[0]==1 || $tmp[0]==2 || $tmp[0]==6 || $tmp[0]==7 || $tmp[0]==26 ||$tmp[0]==27 ||$tmp[0]==28 ||$tmp[0]==29 ||$tmp[0]==30 || $tmp[0]==31) {
            //数据格式为 1;0;1000格式
            $money=$money+$tmp[2];
        } else {//数据格式为 3;10000格式
            $money=$money+$tmp[1];
        }
    }
    //查询本人余额,
    $sql="select * from wallet2 where username='$username'";
    $res=$mysqli->query($sql);
    $coinrow=$res->fetch_assoc();
    $balance=$coinrow['coin'];
    if ($balance >= $money) {//余额大于下注金额,下注
        $sql="begin";
        $mysqli->select_db('bet');
        $mysqli->query($sql);
        $issuccess=true;
        foreach ($dataarray as $key=>$value) {
            $tmp=explode(";", $value);
            if ($tmp[0]==1 || $tmp[0]==2 || $tmp[0]==6 || $tmp[0]==7 || $tmp[0]==26|| $tmp[0]==27|| $tmp[0]==28|| $tmp[0]==29|| $tmp[0]==30 || $tmp[0]==31) {
                //数据格式为 1;0;1000格式
                $type=$tmp[0];
                $tmpamount=$tmp[2];
                $weishu=$tmp[1];
                $sql="insert into $tablename(id,username,type,amount,time,periods,ballnum) values(null,'$username',$type,$tmpamount,now(),$periods,$weishu);";
                $remarks=$weishu;
            } else {//数据格式为 3;10000格式
                $type=$tmp[0];
                $tmpamount=$tmp[1];
                $sql="insert into $tablename(id,username,type,amount,time,periods) values(null,'$username',$type,$tmpamount,now(),$periods);";
            }
            $mysqli->select_db('bet');
            $res=$mysqli->query($sql);
            if (!$res) {
                $mysqli->query("rollback");
                $issuccess=false;
                break;
            } else {//在账单中增加一个记录
                switch ($type) {
                case 1:
                $gamename='大小游戏';
                break;
                case 2:
                $gamename='大小游戏';
                break;
                case 3:
                case 4:
                case 5:
                $gamename='龙虎游戏';
                break;
                case 6:
                case 7:
                $gamename="单双游戏";
                break;
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                $gamename='牛牛游戏';
                break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                $gamename='德州扑克';
                break;
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                $gamename='直选数字';
                break;
                case 31:
                $gamename='任选数字';
            }
                $balance=$balance-$tmpamount;
                $tmpamount=0-$tmpamount;
                if (!isset($remarks)) {
                    $sql="insert into bills2(id,username,gamename,amount,surplus,type,time) values(null,'$username','$gamename',$tmpamount,$balance,5,now())";
                } else {
                    $sql="insert into bills2(id,username,gamename,amount,surplus,type,remarks,time) values(null,'$username','$gamename',$tmpamount,$balance,5,'$remarks',now())";
                }
          
                $mysqli->select_db($config['db']['dbname']) ;
                $res=$mysqli->query($sql);
                if (!$res) {
                    $mysqli->query("rollback");
                    $issuccess=false;
                    break;
                } else {//增加账单成功
                if (isset($superior)) {//有上级
                    //给自己的上级加一个账单
                    $tmpamount=(0-$tmpamount)*$apprenticerate;
                    $sql="insert into bills(id,username,gamename,amount,surplus,type,remarks,time) values(null,'$superior','$gamename',$tmpamount,null,3,'$username',now())";
                    $res=$mysqli->query($sql);
                }
                if(isset($ercishangji)){//有二次上级
                    //给自己的二次上级加一个账单
                    $tmpamount=$tmpamount/$apprenticerate*$ercishangjirate;
                    $sql="insert into bills(id,username,gamename,amount,surplus,type,remarks,time) values(null,'$ercishangji','$gamename',$tmpamount,null,8,'$username',now())";
                    $res=$mysqli->query($sql);
                }
                }
            }
        }
        if ($issuccess==false) {//失败
            $result['info']="押注失败";
            $result['status']=4;
            echo json_encode($result);
        } else {//成功，从钱包中扣钱
            $mysqli->select_db($config['db']['dbname']);
            $sql="update wallet2 set coin=coin-$money where username='$username'";
            $res=$mysqli->query($sql);
            if ($res) {
                //给上一级的钱包加钱
                $money=$money*$apprenticerate;
                $sql="update wallet set coin=coin+$money where username='$superior'";
                $mysqli->query($sql);
                //给二级的钱包加钱
                $money=$money/$apprenticerate*$ercishangjirate;
                $sql="update wallet set coin=coin+$money where username='$ercishangji'";
                $mysqli->query($sql);
                $mysqli->query("commit");
                $result['info']="押注成功";
                $result['status']=1;
                echo json_encode($result);
            } else {//减钱失败
                $mysqli->query("rollback");
                $result['info']="押注失败";
                $result['status']=4;
                echo json_encode($result);
            }
        }
    } else {//余额不够,驳回
        $result['info']="余额不足";
        $result['status']=3;
        echo json_encode($result);
    }
} else {//检查token不通过，驳回
    $result['info']="token不正确";
    $result['status']=2;
    echo json_encode($result);
}
$mysqli->close();
