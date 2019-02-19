<?php
include('connect.php');
if ($_POST['password']=='mima') {
    $mysqli->select_db('bet');
    $sql='update status set status=1';
    $res=$mysqli->query($sql);
    if ($res) {
        echo 'success';
    } else {
        echo 'failed';
    }
}else{
    echo 'faild';
}

$mysqli->close();
