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
                                  <th>时间</th>
                                  <th>表名</th>
                                  <th>操作</th>
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
                               $sql="select count(tablename) c from periods group by tablename";
                               $res = $mysqli->query($sql);
                               $row= $res->fetch_assoc();
                               $count=$row['c'];
                               $page=($page-1)*10;
                               $sql="select tablename,time,id from periods  group by tablename order by id desc limit $page,10;";
                               $res=$mysqli->query($sql);
                               
                               $mysqli->close();
                               while ($row=$res->fetch_assoc()) {
                                   ?>
                                <tr>
                                  <th scope="row"><?php echo $row['id']?></th>
                                  <td><?php echo $row['time']?></td>
                                  <td><?php echo $row['tablename']?></td>
                                  <td> <a href="pankoudetail.php?tablename=<?php echo $row['tablename']; ?>" class="btn btn-info btn-xs"><i
                                                            class="fa fa-pencil"></i> 查看 </a>
                                  </td>
                                </tr>
                               <?php
                               }?>
                              </tbody>
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
                                                            location.href="pankourecord.php?page=1"
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
                                                            location.href="pankourecord.php?page="+(page-1);

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
                                                            location.href="pankourecord.php?page="+(page+1);
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
                                                            location.href="pankourecord.php?page="+pageCount;
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
