<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>龙江时时彩管理后台</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <script>
    var username=localStorage.getItem("ljsscusername");
    if(username==undefined || username==''){
      location.href="login.html";
    }
    </script>
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>龙江时时彩</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2 id='username1'>admin</h2>
              </div>
              <div class="clearfix"></div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> 赔率设置 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    <li><a href="peilv.php">0级会员赔率</a></li>
                      <li><a href="peilvlevel1.php">1级会员赔率</a></li>
                      <li><a href="peilvlevel2.php">2级会员赔率</a></li>
                      <li><a href="peilvlevel3.php">3级会员赔率</a></li>
                      <li><a href="peilvlevel4.php">4级会员赔率</a></li>
                      <li><a href="peilvlevel5.php">5级会员赔率</a></li>
                      <li><a href="peilvlevel6.php">6级会员赔率</a></li>
                      <li><a href="peilvlevel7.php">7级会员赔率</a></li>
                      <li><a href="peilvlevel8.php">8级会员赔率</a></li>
                      <li><a href="peilvlevel9.php">9级会员赔率</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 聊天记录设置 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="peilv.php">添加聊天记录</a></li>
                    </ul>
                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li id="logout" onclick="logout()"><i class="fa fa-sign-out pull-right"></i> 退出登录</li>
                  </ul>
                </li>

               
                  </ul>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>赔率管理</h3>
              </div>

              
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>1级会员加的赔率</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <?php
                    include('connect.php');
                    $sql="select * from odds_mem where level=1";
                    $res=$mysqli->query($sql);
                    $row=$res->fetch_assoc();
                    $mysqli->close();
                    ?>
                    <form class="form-horizontal form-label-left" novalidate="">
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">大小赔率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="daxiao" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text" value="<?php echo $row['bigorsmall'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">龙虎倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="longhu" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text" value="<?php echo $row['longhu'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">和倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="he" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['draw'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">牛1倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu1" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu1'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >牛2倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu2" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu2'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >牛3倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu3" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu3'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label  class="control-label col-md-3 col-sm-3 col-xs-12">牛4倍率<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu4" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu4'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label for="password2" class="control-label col-md-3 col-sm-3 col-xs-12">牛5倍率<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu5" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu5'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">牛6倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu6" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu6'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >牛7倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu7" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu7'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >牛8倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu8" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu8'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">牛9倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niu9" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niu9'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >牛牛倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="niuniu" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['niuniu'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >豹子倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="baozi" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['baozi'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >四张倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="sizhang" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['sizhang'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >葫芦倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="hulu" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['hulu'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >顺子倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="shunzi" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['shunzi'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >三张倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="sanzhang" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['sanzhang'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >两对倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="liangdui" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['liangdui'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >一队倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="yidui" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['yidui'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >五离倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="wuli" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['wuli'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >直选倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="zhixuan" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['zhixuan'] ?>">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" >任选倍率 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="renxuan" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text"  value="<?php echo $row['renxuan'] ?>">
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      
                    </form>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button id="update" class="btn btn-success" onclick="updateodds()">更新</button>
                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/nprogress/nprogress.js"></script>
    
    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
    <script src="js/alert.js"></script>
    <script>
  
      function updateodds(){
        var daxiao=$("#daxiao").val();
        var longhu=$("#longhu").val();
        var he=$("#he").val();
        var niu1=$("#niu1").val();
        var niu2=$("#niu2").val();
        var niu3=$("#niu3").val();
        var niu4=$("#niu4").val();
        var niu5=$("#niu5").val();
        var niu6=$("#niu6").val();
        var niu7=$("#niu7").val();
        var niu8=$("#niu8").val();
        var niu9=$("#niu9").val();
        var niuniu=$("#niuniu").val();
        var baozi=$("#baozi").val();
        var sizhang=$("#sizhang").val();
        var hulu=$("#hulu").val();
        var shunzi=$("#shunzi").val();
        var sanzhang=$("#sanzhang").val();
        var liangdui=$("#liangdui").val();
        var yidui=$("#yidui").val();
        var wuli=$("#wuli").val();
        var zhixuan=$("#zhixuan").val();
        var renxuan=$("#renxuan").val();
        var username= localStorage.getItem("ljsscusername");
        var password= localStorage.getItem("ljsscpassword");
        var data="daxiao="+daxiao+"&longhu="+longhu+"&he="+he+"&niu1="+niu1+"&niu2="+niu2+"&niu3="+niu3+"&niu4="+niu4+"&niu5="+niu5+"&niu6="+niu6+"&niu7="+niu7+"&niu8="+niu8+"&niu9="+niu9+"&niuniu="+niuniu+"&baozi="+baozi+"&sizhang="+sizhang+"&hulu="+hulu+"&shunzi="+shunzi+"&sanzhang="+sanzhang+"&liangdui="+liangdui+"&yidui="+yidui+"&wuli="+wuli+"&zhixuan="+zhixuan+"&renxuan="+renxuan+"&username="+username+"&password="+password+'&level=1';
        $.post('../api/updateodds.php',data,function(res){
          console.log(res);
          if(res==1){//更新成功
            ShowSuccess("发布成功..");
            setTimeout(function() {
                location.href="peilvlevel1.php"
            }, 1000);
          }else{//更新失败
            ShowFailure("发布失败");
          }


        })
      }
      var username= localStorage.getItem("ljsscusername");
      $("#username1").html(username);
      function logout(){
        localStorage.setItem("ljsscusername","");
        localStorage.setItem("ljsscpassword","");
        location.href="login.html"
      }
    
    

    </script>
  </body>
</html>
