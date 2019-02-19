<?php
//header("Content-type:text/html;charset=utf-8");
$config=require('../config.php');
$mysql_conf = array(
    'host'    =>$config['db']['HOST'], 
    'db'      =>$config['db']['dbname'], //数据库名称
    'db_user' =>$config['db']['db_user'], //用户名
    'db_pwd'  =>$config['db']['db_pwd'], //密码
    );
$mysqli = @new mysqli($mysql_conf['host'], $mysql_conf['db_user'], $mysql_conf['db_pwd']);
if ($mysqli->connect_errno) {
    die("could not connect to the database:\n" . $mysqli->connect_error);//诊断连接错误
}
$mysqli->query("set names 'utf8';");//编码转化
$select_db = $mysqli->select_db($mysql_conf['db']);
if (!$select_db) {
    die("could not connect to the db:\n" .  $mysqli->error);
}
?>