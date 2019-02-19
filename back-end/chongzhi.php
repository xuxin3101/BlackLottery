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
                      <li><a href="addchatrecord.php">添加聊天记录</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 会员充钱 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       <li><a href="chongzhi.php">充值</a></li>
                      <li><a href="jiesuan.php">结算</a></li>
                      <li><a href="shezhidengji.php">设置等级</a></li>
                      <li><a href="chongzhirecord.php">充值记录</a></li>
                      <li><a href="jiesuanrecord.php">结算记录</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-home"></i> 系统设置 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="systemsetting.php">系统设置</a></li>
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
                <h3>充值</h3>
              </div>

              
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>充值</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                   
                    <form class="form-horizontal form-label-left" novalidate="">
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">账号 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="username" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text">
                        </div>
                      </div>
                      <div class="item form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">充值金额 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="amount" class="form-control col-md-7 col-xs-12" name="name" required="required" type="text" >
                        </div>
                      </div>
                     
                    
                      <div class="ln_solid"></div>
                      
                    </form>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-3">
                          <button id="update" class="btn btn-success" onclick="chongzhi()">更新</button>
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
  
      function chongzhi(){
        var chongzhiusername=$("#username").val();
        var amount=$("#amount").val();
        var username= localStorage.getItem("ljsscusername");
        var password= localStorage.getItem("ljsscpassword");
        var data="chongzhiusername="+chongzhiusername+"&amount="+amount+"&username="+username+"&password="+password;
        $.post('../api/chongzhi.php',data,function(res){
          console.log(res);
          if(res==1){//更新成功
            ShowSuccess("充值成功..");
            setTimeout(function() {
                location.href="chongzhi.php"
            }, 1000);
          }else{//更新失败
            ShowFailure("充值失败");
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
