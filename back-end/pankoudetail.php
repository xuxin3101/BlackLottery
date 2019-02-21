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
                  <li><a><i class="fa fa-home"></i> 盘口信息记录 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="pankourecord.php">押注信息</a></li>
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
                    <h2>充值记录</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                   
                   
                  <div id="collapseOne1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true" style="">
                          <div class="panel-body">
                            <table class="table table-striped">
                              <thead>
                                <tr>
                                  <th>id</th>
                                  <th>账号</th>
                                  <th>类型</th>
                                  <th>钱数</th>
                                  <th>时间</th>
                                  <th>期数</th>
                                  <th>购买球数字</th>
                                </tr>
                              </thead>
                              <tbody>
                              <?php
                               include('connect.php');
                               if (empty($_GET['page'])) {
                                   $page='1';
                               } else {
                                   $page=$_GET['page'];
                               }
                               $tablename=$_GET['tablename'];
                               if(empty($tablename))
                               {echo   '非法访问';
                                return;
                              }
                               $mysqli->select_db('bet');
                               $sql="select count(*) c from $tablename";
                               $res = $mysqli->query($sql);
                               $row= $res->fetch_assoc();
                               $count=$row['c'];
                               $page=($page-1)*10;
                               $sql="select * from $tablename  limit $page,10;";
                               $res=$mysqli->query($sql);
                               
                               
                               while ($row=$res->fetch_assoc()) {
                                 $time=$row['time'];
                                   ?>
                                <tr>
                                  <th scope="row"><?php echo $row['id']?></th>
                                  <td><?php echo $row['username']?></td>
                                  <td><?php 
                                  switch ($row['type']){
                                    case 1:
                                    echo '大';
                                    break;
                                    case 2:
                                    echo '小';
                                    break;
                                    case 3:
                                    echo '龙';
                                    break;
                                    case 4:
                                    echo '虎';
                                    break;
                                    case 5:
                                    echo '和';
                                    break;
                                    case 6:
                                    echo '单';
                                    break;
                                    case 7:
                                    echo '双';
                                    break;
                                    case 8:
                                    echo '牛1';
                                    break;
                                    case 9:
                                    echo '牛2';
                                    break;
                                    case 10:
                                    echo '牛3';
                                    break;
                                    case 11:
                                    echo '牛4';
                                    break;
                                    case 12:
                                    echo '牛5';
                                    break;
                                    case 13:
                                    echo '牛6';
                                    break;
                                    case 14:
                                    echo '牛7';
                                    break;
                                    case 15:
                                    echo '牛8';
                                    break;
                                    case 16:
                                    echo '牛9';
                                    break;
                                    case 17:
                                    echo '牛牛';
                                    break;
                                    case 18:
                                    echo '豹子';
                                    break;
                                    case 19:
                                    echo '四张';
                                    break;
                                    case 20:
                                    echo '葫芦';
                                    break;
                                    case 21:
                                    echo '顺子';
                                    break;
                                    case 22:
                                    echo '三张';
                                    break;
                                    case 23:
                                    echo '两对';
                                    break;
                                    case 24:
                                    echo '一对';
                                    break;
                                    case 25:
                                    echo '五离';
                                    break;
                                    case 26:
                                    echo '个位直选';
                                    break;
                                    case 27:
                                    echo '十位直选';
                                    break;
                                    case 28:
                                    echo '百位直选';
                                    break;
                                    case 29:
                                    echo '千位直选';
                                    break;
                                    case 30:
                                    echo '万位直选';
                                    break;
                                    case 31:
                                    echo '任选';
                                    break;
                                  }
                                  
                                  ?></td>
                                  <td><?php echo $row['amount']?></td>
                                  <td><?php echo $row['time']?></td>
                                  <td><?php echo $row['periods']?></td>
                                  <td><?php echo $row['ballnum']?></td>
                                </tr>
                               <?php
                               }?>
                              </tbody>
                              <?php 
                             
                              $sql="select sum(amount) amount from ".$tablename;
                              $res=$mysqli->query($sql);
                              $row=$res->fetch_assoc();
                             
                              ?>
                              <tr><td style="color:red;">当天总销售金额:<?php echo $row['amount'];?></td>
                              <?php 
                               $mysqli->select_db('BlackLottery');
                               $sql="select sum(amount) amount from bills2 where type=1 and to_days(time) = to_days('$time')";
                               $res=$mysqli->query($sql);
                               $row=$res->fetch_assoc();
                               $mysqli->close();
                              ?>
                                  <td style="color:green;">当天总出奖金:<?php 
                                  if($row['amount']==null)
                                  echo 0;
                                  else
                                  echo $row['amount'];
                                  ?></td>
                              </tr>
                              <tr>
                                            <td colspan="10">
                                                
                                                <div class="f-right" style="float: right" id="page_go_url" data-url="/Admin/article/articleList">
                                                    总共<span style="font-weight:bold;margin:3px 3px 3px 3px;"> <?php echo $count ?> </span>个记录&nbsp;&nbsp;&nbsp;
                                                    分为<span style="font-weight:bold;margin: 3px 3px 3px 3px;"> <?php echo(int)(($count-1)/10)+1 ?> </span>页&nbsp;&nbsp;&nbsp;
                                                    当前<span style="font-weight:bold;margin: 3px 3px 3px 3px;"> <?php echo $page/10+1?> </span>页&nbsp;&nbsp;&nbsp;
                                                    <button type="button" class="btn btn-white" onclick="gotoPageFirst();">第一页
                                                    </button>
                                                    <button type="button" class="btn btn-white" onclick="gotoPagePrev();">上一页
                                                    </button>
                                                    <button type="button" class="btn btn-white" onclick="gotoPageNext();">
                                                        下一页
                                                    </button>
                                                    <button type="button" class="btn btn-white" onclick="gotoPageLast();">
                                                        最后页
                                                    </button>
                                                </div>

                                                <script type="text/javascript">
                                                    // 分页数据 处理------------------------------开始----------------------
                                                    function getpara() {
	                                            var url = location.search
	                                            var theRequest = new Object();
                                            	if (url.indexOf("?") != -1) {
                                        		var str = url.substr(1);
                                            	strs = str.split("&");
	                                          	for (var i = 0; i < strs.length; i++) {
		                                    	theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
	                                            	}
                                                	}
                                        	return theRequest;
                                                	}
                                                    var page=getpara().page;
                                                  if(page==undefined){
                                                   page=1;
                                                    }
                                          if(typeof page=='string'){
                                    page=parseInt(page);
                           }
                                 var pageCount=<?php echo (int)(($count-1)/10)+1;  ?>
                                                    /**
                                                     * 第一页
                                                     */
                                                    function gotoPageFirst() {
                                                        if (page == 1) {
                                                            alert("已经是第一页了哦");
                                                            return;
                                                        } else {
                                                            location.href="pankoudetail.php?page=1&tablename=<?php echo $tablename; ?>";
                                                        }
                                                    }

                                                    /**
                                                     * 上一页
                                                     */
                                                    function gotoPagePrev() {
                                                        if (page == 1) {
                                                            alert("已经是第一页了哦");
                                                            return;
                                                        } else {
                                                            location.href="pankoudetail.php?page="+(page-1)+"&tablename=<?php echo $tablename;?>";

                                                        }
                                                    }

                                                    /**
                                                     * 下一页
                                                     */
                                                    function gotoPageNext() {

                                                        if (pageCount == 1) {
                                                            alert("总共就一页数据哦");
                                                            return;
                                                        } else if (page == pageCount) {
                                                            alert("已经是最后一页");
                                                            return;
                                                        } else {
                                                            location.href="pankoudetail.php?page="+(page+1)+"&tablename=<?php echo $tablename;?>";
                                                        }
                                                    }
                                                    /**
                                                     * 最后一页
                                                     */
                                                    function gotoPageLast() {
                                                        if (pageCount == 1) {
                                                            alert("总共就一页数据哦");
                                                            return;
                                                        } else if (page == pageCount) {
                                                            alert("已经是最后一页");
                                                            return;
                                                        } else {
                                                            location.href="pankoudetail.php?page="+pageCount+"&tablename=<?php echo $tablename;?>";
                                                        }
                                                      }
                                                </script>
                                            </td>
                                        </tr>
                            </table>
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
