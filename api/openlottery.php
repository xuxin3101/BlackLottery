<?php
include('connect.php');
include_once('../config.php');
if ($_POST['password']=='mima') {
    $ball1=addslashes($_POST['ball1']);
    $ball2=addslashes($_POST['ball2']);
    $ball3=addslashes($_POST['ball3']);
    $ball4=addslashes($_POST['ball4']);
    $ball5=addslashes($_POST['ball5']);
    //查询最的新一期
    $sql="select * from periods order by id desc";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $period=$row['periods'];
    $tablename=$row['tablename'];
    $time=$row['time'];
    /*
    //取出所有倍率
    $sql='select * from odds';
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $odds=[];
    foreach ($row as $key=>$value) {
        $odds[$key]=$value;
    }
    */
    $sql="begin";
    $mysqli->query($sql);
    $timeformat="%Y-%m-%d";
    $sql="insert into lotteryresult(id,ball1,ball2,ball3,ball4,ball5,period,time,createtime) values(null,$ball1,$ball2,$ball3,$ball4,$ball5,$period,str_to_date('$time','$timeformat'),now())";
    $res=$mysqli->query($sql);
    if ($res) {//插入成功,接下来发钱
        //切换数据库
        $mysqli->select_db('bet');
        $sql="select * from $tablename where periods=$period";
        $res=$mysqli->query($sql);
        $ball=[];
        array_push($ball, $ball1);
        array_push($ball, $ball2);
        array_push($ball, $ball3);
        array_push($ball, $ball4);
        array_push($ball, $ball5);
        sort($ball);
        $result=0;
        for ($i=0;$i<5;$i++) {
            $result=$result+$ball[$i];
        }
        if ($result>=23) {
            $isbig=true;
        } else {
            $isbig=false;
        }
        if ($ball1>$ball5) {
            $lhh=1;//1代表龙
        } else if ($ball1<$ball5) {
            $lhh=2;//2代表虎
        } else {
            $lhh=3;//3代表和
        }
        while ($row=$res->fetch_assoc()) {//给每条记录发钱
            $username=$row['username'];
            $sql="select  odds_mem.* from odds_mem,users where users.username='$username' and users.level=odds_mem.level";
            $mysqli->select_db($config['db']['dbname']);
            $oddres=$mysqli->query($sql);
            $mysqli->select_db('bet');
            $oddrow=$oddres->fetch_assoc();
            $odds=[];
            foreach ($oddrow as $key=>$value) {
                $odds[$key]=$value;
            }
            switch ($row['type']) {
                case '1'://大
                switch ($row['ballnum']) {
                    case 0:
                    if ($isbig) {//开奖结果也是大,发钱
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 1:
                    if ($ball1>=5) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 2:
                    if ($ball2>=5) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 3:
                    if ($ball3>=5) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 4:
                    if ($ball4>=5) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 5:
                    if ($ball5>=5) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;



                }
                break;
                case '2':
                switch ($row['ballnum']) {
                    case 0:
                    if (!$isbig) {//开奖结果也是大,发钱
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 1:
                    if ($ball1<=4) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 2:
                    if ($ball2<=4) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 3:
                    if ($ball3<=4) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 4:
                    if ($ball4<=4) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;
                    case 5:
                    if ($ball5<=4) {
                        send_moeny($mysqli, $row, $odds['bigorsmall'], $config['db']['dbname'], '大小游戏', $row['ballnum']);
                    }
                    break;



                }
                break;
                case '3':
                if ($lhh==1) {
                    send_moeny($mysqli, $row, $odds['longhu'], $config['db']['dbname'], '龙虎游戏', '');
                }
                break;
                case '4':
                if ($lhh==2) {
                    send_moeny($mysqli, $row, $odds['longhu'], $config['db']['dbname'], '龙虎游戏', '');
                }
                break;
                case '5':
                if ($lhh==3) {
                    send_moeny($mysqli, $row, $odds['draw'], $config['db']['dbname'], '龙虎游戏', '');
                }
                break;
                case '6':
                switch ($row['ballnum']) {
                    case 0:
                    if ($result%2==1) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 1:
                    if ($ball1%2==1) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 2:
                    if ($ball2%2==1) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 3:
                    if ($ball3%2==1) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 4:
                    if ($ball4%2==1) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 5:
                    if ($ball5%2==1) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;


                }
                break;
               
                case '7':
                switch ($row['ballnum']) {
                    case 0:
                    if ($result%2==0) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 1:
                    if ($ball1%2==0) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 2:
                    if ($ball2%2==0) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 3:
                    if ($ball3%2==0) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 4:
                    if ($ball4%2==0) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;
                    case 5:
                    if ($ball5%2==0) {
                        send_moeny($mysqli, $row, $odds['danshuang'], $config['db']['dbname'], '单双游戏', $row['ballnum']);
                    }
                    break;


                }
                break;
                case '8':
                if ($result%10==1) {
                    send_moeny($mysqli, $row, $odds['niu1'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '9':
                if ($result%10==2) {
                    send_moeny($mysqli, $row, $odds['niu2'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '10':
                if ($result%10==3) {
                    send_moeny($mysqli, $row, $odds['niu3'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '11':
                if ($result%10==4) {
                    send_moeny($mysqli, $row, $odds['niu4'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '12':
                if ($result%10==5) {
                    send_moeny($mysqli, $row, $odds['niu5'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '13':
                if ($result%10==6) {
                    send_moeny($mysqli, $row, $odds['niu6'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '14':
                if ($result%10==7) {
                    send_moeny($mysqli, $row, $odds['niu7'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '15':
                if ($result%10==8) {
                    send_moeny($mysqli, $row, $odds['niu8'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '16':
                if ($result%10==9) {
                    send_moeny($mysqli, $row, $odds['niu9'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '17':
                if ($result%10==0) {
                    send_moeny($mysqli, $row, $odds['niuniu'], $config['db']['dbname'], '牛牛游戏', '');
                }
                break;
                case '18':
                if ($ball1==$ball2 && $ball1==$ball3 && $ball1==$ball4 && $ball1==$ball5) {//豹子
                    send_moeny($mysqli, $row, $odds['baozi'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '19':
                if (($ball[0]==$ball[1] && $ball[0]==$ball[2] && $ball[0]==$ball[3])||($ball[1]==$ball[2] && $ball[1]==$ball[3] && $ball[1]==$ball[4])) {
                    send_moeny($mysqli, $row, $odds['sizhang'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '20':
                if (($ball[0]==$ball[1] && $ball[0]==$ball[2] && $ball[3]==$ball[4])||($ball[0]==$ball[1] && $ball[2]==$ball[3] && $ball[2]==$ball[4])) {
                    send_moeny($mysqli, $row, $odds['hulu'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '21':
                $isshunzi=true;
                for ($i=0;$i<4;$i++) {
                    if ($ball[$i]+1 !=$ball[$i+1]) {
                        $isshunzi=false;
                        break;
                    }
                }
                if ($isshunzi) {
                    send_moeny($mysqli, $row, $odds['shunzi'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '22':
                $arr=[];
                for ($i=0;$i<5;$i++) {
                    $arr[$ball[$i]]= $arr[$ball[$i]]+1;
                }
                $maxcount=0;
                foreach ($arr as $key=> $value) {
                    if ($value > $maxcount) {
                        $maxcount=$value;
                    }
                }
                if ($maxcount >= 3) {
                    send_moeny($mysqli, $row, $odds['sanzhang'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '23':
                $arr=[];
                for ($i=0;$i<5;$i++) {
                    $arr[$ball[$i]]= $arr[$ball[$i]]+1;
                }
                $r=0;
                foreach ($arr as $key=> $value) {
                    if ($value >= 2) {
                        $r++;
                    }
                }
                if ($r>=2) {
                    send_moeny($mysqli, $row, $odds['liangdui'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '24':
                $arr=[];
                for ($i=0;$i<5;$i++) {
                    $arr[$ball[$i]]= $arr[$ball[$i]]+1;
                }
                $isyidui=false;
                foreach ($arr as $key=> $value) {
                    if ($value >= 2) {
                        $isyidui=true;
                        break;
                    }
                }
                if ($isyidui) {
                    send_moeny($mysqli, $row, $odds['yidui'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '25':
                if (($ball[0]==1 && $ball[1]==3 && $ball[2]==5 && $ball[3]==7 && $ball[4]==9)||($ball[0]==0 && $ball[1]==2 && $ball[2]==4 && $ball[3]==6 && $ball[4]==8)) {
                    send_moeny($mysqli, $row, $odds['wuli'], $config['db']['dbname'], '德州扑克游戏', '');
                }
                break;
                case '26':
                if ($ball5==$row['ballnum']) {
                    send_moeny($mysqli, $row, $odds['zhixuan'], $config['db']['dbname'], '直选个位', '');
                }
                break;
                case '27':
                if ($ball4==$row['ballnum']) {
                    send_moeny($mysqli, $row, $odds['zhixuan'], $config['db']['dbname'], '直选十位', '');
                }
                break;
                case '28':
                if ($ball3==$row['ballnum']) {
                    send_moeny($mysqli, $row, $odds['zhixuan'], $config['db']['dbname'], '直选百位', '');
                }
                break;
                case '29':
                if ($ball2==$row['ballnum']) {
                    send_moeny($mysqli, $row, $odds['zhixuan'], $config['db']['dbname'], '直选千位', '');
                }
                break;
                case '30':
                if ($ball1==$row['ballnum']) {
                    send_moeny($mysqli, $row, $odds['zhixuan'], $config['db']['dbname'], '直选万位', '');
                }
                break;
                case '31':
                for ($i=0;$i<5;$i++) {
                    if ($ball[$i]==$row['ballnum']) {
                        send_moeny($mysqli, $row, $odds['renxuan'], $config['db']['dbname'], '任选游戏', '');
                        break;
                    }
                }
                break;

            }
        }
        //给所有记录发钱完毕
        $sql='commit';
        $mysqli->query($sql);
        echo 'success';
    } else {
        //rollback
        echo 'failed';
        $sql="rollback";
        $mysqli->query($sql);
    }
} else {
    echo 'fool';
}
$mysqli->close();
function send_moeny($mysqli, $info, $odd, $dbname, $gamename, $remarks)
{
    //加账单，加余额
    $username=$info['username'];
    //切换数据库
    $mysqli->select_db('bet');
    //需要增加的钱
    $conin=((int)$info['amount'])*(1+$odd);
    $conin=intval($conin);
    //查询剩余额
    $sql="select * from wallet where username='$username'";
    $mysqli->select_db($dbname);
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    $balance=((int)$row['coin'])+$conin;
    //增加一个账单
    $sql="insert into bills(id,username,gamename,amount,surplus,type,remarks,time) values(null,'$username','$gamename',$conin,$balance,1,'$remarks',now())";
    $res=$mysqli->query($sql);
    //增加余额
    $sql="update wallet set coin=coin+$conin where username='$username'";
    $res=$mysqli->query($sql);
    //切换回原来的数据库
    //$mysqli->select_db($dbname);
}
