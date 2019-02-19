<?php 
$filename = $_GET['src'];
$name=substr(strrchr($filename, '/'), 1);
//文件的类型 
header("Content-Disposition: attachment; filename=$name"); 
//下载显示的名字 
readfile($filename); 
exit(); 
?> 