<?php
include('connect.php');
?>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登陆中..</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
    <h1>登录中，请稍后..</h1>
    <?php $username=addslashes($_POST['username']);
    $password=addslashes($_POST['password']);
    if (empty($username)||empty($password)) {
         ?>
       <a href="login.php">登陆失败，三秒后自动返回，失败点次返回登录页面</a>
        <?php
        header("Refresh:3;url=../back-end/login.php");
        $mysqli->close();
        return;
    }
    $sql="select * from adminuser where username ='$username' and password='$password'";
    $res=$mysqli->query($sql);
    $row=$res->fetch_assoc();
    if($row){//登录成功
        ?>
        <script>
            var username="<?php echo $row['username'] ?>";
            var password="<?php echo $row['password'] ?>";
            localStorage.setItem("ljsscusername",username);
            localStorage.setItem("ljsscpassword",password);
        </script>
        <a href="../back-end/peilv.php">登录成功，3秒后自动跳转，若跳转失败点此跳转</a>
        <?php
         header("Refresh:3;url=../back-end/peilv.php");  
    }else{
        ?>
         <a href="login.php">登陆失败，三秒后自动返回，失败点次返回登录页面</a>
        <?php
        header("Refresh:3;url=../back-end/login.php");
    }
    $mysqli->close();
        
    ?>
</body>
</html>

