<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <!-- <base href="localhost:8080/ssmlogin"> -->
    <base href="<%=basePath%>"> 
    <title>My JSP 'map1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="assets/dist/css/ionicons.min.css">
  <link rel="stylesheet" href="assets/dist/css/AdminLTE.css">
  <link rel="stylesheet" href="assets/dist/css/skins/_all-skins.css">
  <link rel="stylesheet" href="assets/vince/css/vince.css">
  <link rel="stylesheet" href="assets/vince/biao/css/font-awesome.min.css">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--> 
<script type="text/javascript">
function getTime() {

    var dateObj = new Date();

    var year = dateObj.getFullYear();//年
    var month = dateObj.getMonth()+1;//月  (注意：月份+1)
    var date = dateObj.getDate();//日
    var day = dateObj.getDay();
    var weeks = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
    var week = weeks[day];//根据day值，获取星期数组中的星期数。
    var hours = dateObj.getHours();//小时
    var minutes = dateObj.getMinutes();//分钟
    var seconds = dateObj.getSeconds();//秒

    if(month<10){
        month = "0"+month;
    }
    if(date<10){
        date = "0"+date;
    }
    if(hours<10){
        hours = "0"+hours;
    }
    if(minutes<10){
        minutes = "0"+minutes;
    }
    if(seconds<10){
        seconds = "0"+seconds;
    }

    var newDate = year+"."+month+"."+date+"&nbsp"+hours+":"+minutes ;
    document.getElementById("date1").innerHTML = "时间：" + newDate;//在div中写入时间
    setTimeout('getTime()', 500);//每隔500ms执行一次getTime()
}
</script>
  
  </head>
  
  <body class="hold-transition skin-blue sidebar-mini" onload="getTime()"  >



<div class="fuceng">
  <div class="fuqu" id="box">
    <div class="fuquzone">
      <div class="fuqulogo" id="bar1">
        
      </div>
      <p class="fuqutitle" id="bar">
        <span class="fuclose">×</span>
      </p>
    
 </div></div></div>
<div class="wrapper">
  <header class="main-header">
    <a href="#" class="logo">
      <span class="logo-mini">
	  <img src="assets/vince/images/v01.png">
	  </span>
      <span class="logo-lg"><img src="assets/vince/images/v01.png">项目</span>
    </a>
    <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button"></a>
      <span class="all_title">628智能实验室</span>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="assets/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs">管理员</span>
            </a>
            <ul class="dropdown-menu">
              <li class="user-header">
                <img src="assets/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                <p>
                                              3 姓名：管理员
                
                </p>
              </li>
              <li class="user-footer">
                <div class="pull-right">
                  <a href="login.html" class="btn btn-default btn-flat">退出系统</a>
                </div>
              </li>
            </ul>
          </li>
         
        </ul>
      </div>
    </nav>
  </header>
  <aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
        <div class="pull-left image">
          <img src="assets/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>当前用户：管理员</p>
		  <p class="menu_time"  id="date1" />
          
        </div>
      </div>

      <ul class="sidebar-menu">
        <li class="header">菜单 MENU</li>
        <!-- <li class="active">
          <a href="map1.jsp">
            <i class="fa fa-home" style="font-size: 22px"></i> <span>位置检测</span>
          </a>
        </li> -->
        <li  class="active">
          <a href="xtjc.jsp">
            <i class="fa fa-map"></i> <span>系统集成</span>
          </a>
        </li>
        <li >
          <a href="map1.jsp">
            <i class="fa fa-home" style="font-size: 22px"></i> <span>位置检测</span>
          </a>
        </li>
        <li>
          <a href="http://10.20.4.127:8090/JNEC/SendRedict?id=8">
            <i class="fa fa-eye"></i> <span>实时监控</span>
          </a>
        </li>
        <li>
          <a href="http://10.20.4.127:8090/RXISP/SendRedict?id=0">
            <i class="fa fa-print" ></i> <span>智慧处理</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-sliders"></i>
            <span>负荷响应</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="xyxgpj.html"><i class="fa fa-bookmark"></i> 响应效果评价</a></li>
            <li><a href="fhxyfx.html"><i class="fa fa-bookmark"></i> 负荷响应分析</a></li>
            <li><a href="xyfagl.html"><i class="fa fa-bookmark"></i> 响应方案管理</a></li>
          </ul>
        </li>

        <li>
          <a href="yjgl.html">
            <i class="fa fa-bell"></i> <span>预警管理</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-gears"></i>
            <span>设备管理</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="sbaz.html"><i class="fa fa-bookmark"></i> 设备安装</a></li>
            <li><a href="sbbf.html"><i class="fa fa-bookmark"></i> 设备报废</a></li>
            <li><a href="sbcx.html"><i class="fa fa-bookmark"></i> 设备查询</a></li>
          </ul>
        </li>
        <li>
          <a href="kzcl.html">
            <i class="fa fa-magnet"></i> <span>控制策略</span>
          </a>
        </li>
        <!-- <li>
          <a href="xtjc.html">
            <i class="fa fa-map"></i> <span>系统集成</span>
          </a>
        </li> -->
      </ul>
    </section>
  </aside>
  
  <div class="content-wrapper">
    <section class="content-header"> 
      <ol class="breadcrumb">
      <!--   <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li> -->
        <li class="active">系统集成</li>
      </ol>
    </section>
    <div class="content qqq">
    <div class="xtjc">
         <div class="row">
           <div class="col-md-4 col-sm-6 xtjc_li">
           <a href="http://10.20.4.127:8090/JNEC/SendRedict?id=8">
            <div class="xtjc_nei">
              <img src="assets/vince/images/icon_18.png" alt="" >
             <p>监测系统</p></div></a>
           </div>
           <div class="col-md-4 col-sm-6 xtjc_li">
           <a href="http://10.20.4.127:8090/RXISPLineNew/SendRedict?id=0">
           <div class="xtjc_nei">
             <img src="assets/vince/images/icon_19.png" alt="">
             <p>智慧处理系统</p></div></a>
           </div>
           <div class="col-md-4 col-sm-6 xtjc_li">
           <a href="map1.jsp">
         <!--   //<a href="#"> -->
           <div class="xtjc_nei">
             <img src="assets/vince/images/icon_20.png" alt="">
             <p>定位系统</p></div></a>
           </div>
           <div class="col-md-4 col-sm-6 xtjc_li">
           <a href="#">
           <div class="xtjc_nei">
             <img src="assets/vince/images/icon_21.png" alt="">
             <p>换热站控制系统</p></div></a>
           </div>
           <div class="col-md-4 col-sm-6 xtjc_li">
           <a href="#">
           <div class="xtjc_nei">
             <img src="assets/vince/images/icon_22.png" alt="">
             <p>电梯系统</p></div></a>
           </div>
           <div class="col-md-4 col-sm-6 xtjc_li">
           <a href="#">
           <div class="xtjc_nei">
             <img src="assets/vince/images/icon_23.png" alt="">
             <p>用能计量系统</p></div></a>
           </div>
         </div>         
      </div>
    </div>
  </div>
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b></b>
    </div>
    <strong>Copyright &copy; 2014-2016  更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a></strong>
  </footer>
  <div class="control-sidebar-bg"></div>
</div>
<script src="assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/dist/js/app.min.js"></script>

<script src="assets/vince/js/nicescroll.js"></script>
<script src="assets/vince/drag/zxx.drag.1.0.js"></script>
<script src="assets/dist/js/demo.js"></script>
<script src="assets/vince/js/demo.js">
 
<div id="sss" style="display:none;height:200px;width:200px;"></div>
 
<script type="text/javascript">
var myChart1 = echarts.init(document.getElementById('sss'));
option1 = {
series: [{data: [247, 179]}]};
myChart1.setOption(option1);
</script>
</body>
</html>
