<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
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

<!-- 鼠标滑轮事件 -->
<!-- <script type="text/javascript">  
  
 /** 
* 注册滚轮事件函数 
* @param element : 注册的事件对象 
* @param wheelHandle : 注册事件函数 
*/ 
function addScrollListener(element, wheelHandle) { 
  if(typeof element != 'object') return; 
  if(typeof wheelHandle != 'function') return; 
// 监测浏览器 
  if(typeof arguments.callee.browser == 'undefined') { 
  var user = navigator.userAgent; 
  var b = {}; 
b.opera = user.indexOf("Opera") > -1 && typeof window.opera == "object"; 
b.khtml = (user.indexOf("HTML") > -1 || user.indexOf("AppleWebKit") > -1 || user.indexOf("Konqueror") > -1) && !b.opera; 
b.ie = user.indexOf("MSIE") > -1 && !b.opera; 
b.gecko = user.indexOf("Gecko") > -1 && !b.khtml; 
arguments.callee.browser = b; 
} 
  if(element == window) 
  element = document; 
  if(arguments.callee.browser.ie) 
  element.attachEvent('onmousewheel', wheelHandle); 
  else 
   element.addEventListener(arguments.callee.browser.gecko ? 'DOMMouseScroll' : 'mousewheel', wheelHandle, false); 
 }  
  var display = document.getElementById('viewArea'); 
function wheelHandle(e) { 
if(e.wheelDelta) {// IE, KHTML, Opera 
display.innerHTML = (e.wheelDelta > 0 ? '上' : '下'); 
} else { // Gecko 
display.innerHTML = (e.detail < 0 ? '上' : '下'); 
} 
} 
addScrollListener(window, wheelHandle); 
  
</script>  -->

 <!-- 
  <script language="javascript">

  function mousePosition(ev){
     if(ev.pageX || ev.pageY){
      return {x:ev.pageX, y:ev.pageY};
      }
      return {
       x:ev.clientX + document.body.scrollLeft - document.body.clientLeft,
       y:ev.clientY + document.body.scrollTop  - document.body.clientTop
       };
 }

function mouseMove(ev){
    ev = ev || window.event;
    var mousePos = mousePosition(ev);
    document.getElementById('xxx').value = mousePos.x;
   document.getElementById('yyy').value = mousePos.y;
}


document.onmousemove = mouseMove;

  
  function Show(el){
      var x = parseInt(document.getElementById('xxx').value)-el.offsetLeft;
      var y = parseInt(document.getElementById('yyy').value)-el.offsetTop;
      x = "X:"+x;
      y = "Y:"+y;
      alert(x+","+y); 
  }
  
</script> -->
<style type="text/css">
.boldhead{ font-weight:bold; font-size: 24px; text-align:center; padding:20px}
.pichead{overflow:auto; height:100px; width:100%; font-size:14px; font-weight:bold; margin:auto auto auto auto; border:2px solid #0066CC; background:#cea13b; padding-top:10px; padding-bottom:10px;}
.pichead li{float:left;margin:5px;width:400px;}
.picview { width:100% !important;margin:auto auto auto auto; text-align:center; border-bottom: solid 10px #666699; border-left:solid 10px #666699; border-right:solid 10px #666699; background:	#B0C4DE !important; height:500px; overflow:hidden; }
/* .picview imag{ overflow:auto; width:100%; cursor: move; margin:1px; z-index:1; border:8px solid #f5e888;} */
#contral{ position: absolute;z-index:10; left:15px; top:240px;}
#contral img{ width:auto; margin:auto; cursor:auto; width:20px; border:0px;}
#contral ul{width: 88px;}
#contral li{width:26px; height:26px; float:left; list-style:none;}
</style>
  </head>
  
  <body class="hold-transition skin-blue sidebar-mini" onload="getTime();Initialize();  "  >



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
       <!--  <li class="active">
          <a href="map1.jsp">
            <i class="fa fa-home" style="font-size: 22px"></i> <span>位置检测</span>
          </a>
        </li> -->
        <li>
          <a href="xtjc.jsp">
            <i class="fa fa-map"></i> <span>系统集成</span>
          </a>
        </li>
        <li  class="active" >
          <a href="map1.jsp">
            <i class="fa fa-home" style="font-size: 22px"></i> <span>位置检测</span>
          </a>
        </li>
        <li>
          <a href="http://localhost:8080/JNEC/SendRedict?id=8">
            <i class="fa fa-eye"></i> <span>实时监控</span>
          </a>
        </li>
        <li>
          <a href="http://localhost:8080/RXISP/SendRedict?id=0">
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
        <li><a href="#"><i class="fa fa-dashboard"></i> 位置检测</a></li>
      </ol>
    </section>
    <div class="content qqq"  >
   <div   id="picview" class="picview" style=" height:100%;" >
      <div id="contral">  
      <input   type="button" value="显示定位" style='font-size:20px;background : #D9D919; border: 1px solid #ccc; font-family:  华文行楷 ;' onclick="sendcommand1();" />
      <!--  <input   type="button" value="显示定位" style='font-size:20px;background : #D9D919; border: 1px solid #ccc; font-family:  华文行楷 ;' onclick="sendcommand2();" />
      
       <input   type="button" value="显示定位" style='font-size:20px;background : #D9D919; border: 1px solid #ccc; font-family:  华文行楷 ;' onclick="sendcommand3();" />
       -->
      
         <ul></ul>
         
    <ul>
      <li></li>
      <li><img src="assets/images/gallery/up.gif" onClick="  panDoc(goUp=true)" title="UP"></li>
      <li></li>
      <li><img src="assets/images/gallery/left.gif" onClick="goRight=true; panDoc()" title="LEFT"></li>
      <li><img src="assets/images/gallery/zoom.gif" onClick="goCentert=true; panDoc()" title="FULL SIZE"></li>
      <li><img src="assets/images/gallery/right.gif" onClick="goLeft=true; panDoc()"  title="RIGHT"></li>

      <li></li>
      <li><img src="assets/images/gallery/down.gif" onClick="goDown=true; panDoc()" title="DOWN"></li>
      <li></li>
      <li></li>
      <li><img src="assets/images/gallery/zoom_in.gif" onClick="goOut=true; panDoc()" title="ZOOM IN"></li>
      <li></li>
      <li></li>
      <li><img src="assets/images/gallery/zoom_out.gif" onClick="goIn=true; panDoc()" title="ZOOM OUT"></li>
      <li></li>

    </ul>
     <!-- <input   type="button" value="显示定位" style='font-size:20px;border: 1px solid #ccc; font-family:  华文行楷 ;' onclick="getId();" /> -->
  </div> 
 
  <embed   id="viewArea" src="assets/images/gallery/map1.svg"  xmlns="http://www.w3.org/2000/svg"  hight="900"  width="1300"    preserveAspectRatio="xMidYMid meet" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"  
    onclick="Show(this)"  alt="Moving" name="viewArea"  
      
  />
    
  </div>
    </div>
  </div>
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b></b>
    </div>
    <strong>Copyright &copy;sdu<a href="http://www.mycodes.net/" target="_blank">lab628</a></strong>
  </footer>
  <div class="control-sidebar-bg"></div>
</div>

 
<script src="assets/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/dist/js/app.min.js"></script>
  
<script src="assets/vince/js/nicescroll.js"></script>
<script src="assets/vince/drag/zxx.drag.1.0.js"></script>
<script src="assets/dist/js/demo.js"></script>
<script src="assets/vince/js/demo.js"></script>
 
 <!-- 缩放  -->
 <script type="text/javascript" src="assets/js/jquery-3.2.0.min.js"></script>
		<script type="text/javascript" src="assets/js/jquery.mousewheel.js"></script>
		<script src="assets/js/d3.v3.min.js"></script>
		<script type="text/javascript" src="assets/js/snap.svg-min.js"></script>
		<script type="text/javascript" src="assets/js/indexTest.js"></script>		
 
 <!--  -->

<div id="sss" style="display:none;height:200px;width:400px;"></div>

<script src="assets/vince/js/echarts.min.js"></script>
<script type="text/javascript">
function sendcommand1(){
 sendCommand0();
 sendCommand("admin","123", 1 ,"10.20.4.43","44116900018005","0");
 setTimeout('sendCommand0();',3000);
 sendCommand("admin","123","2","10.20.4.43","44116C00018002","0");
 // setTimeout('sendCommand("admin","123","2","10.20.4.43","44116C00018002","0")',1000); 
 //获取位置
  //setTimeout('getId();',500);
  
 
  alert("命令发送成功"); 
  }

function sendCommand(user,device,name,macip,command,state) {
$.ajax({
				url:"${pageContext.request.contextPath }/send/command.action",
				type:'get',
				data:{user:user,device:device,name:name,macip:macip,command:command,state:state},
				dataType:"json",
				success:function(data) {
				/* 	alert("命令发送成功"); */
																							
				},
				error:function(){
                alert(XMLHttpRequest.status);
                
            }
		 
			});

}
function sendCommand0(){
       $.ajax({
				url:"${pageContext.request.contextPath }/send/command0.action",
				type:'get',

				dataType:"json",
				success:function(data) {
					//alert("命令发送成功"); 
																							
				},
				error:function(){
                alert(XMLHttpRequest.status);
                
            }
		 
			});


}
</script>

<script type="text/javascript">
 
 // set global variables
 var htmlObj, SVGDoc, SVGRoot, viewBox, goLeft, goRight, goUp, goDown, goIn, goOut, innerSVG ;
 var currentSize, currentPosition, currentRoomId, currentRoomLabel, currentPosition1, currentPosition2, currentPosition3;
 var svgns = "http://www.w3.org/2000/svg";
 
 
/* PS:节点里面没有ID属性。
nodelist的值只有获取到元素的length。
  */
 
 
 
function Initialize(){

   htmlObj = document.getElementById("viewArea");
   SVGDoc = htmlObj.getSVGDocument();
   SVGRoot = SVGDoc.documentElement;
   //getId();//加载时自动执行该函数；
  
		
   /* if (SVGDoc.addEventListener) {   
    // IE9, Chrome, Safari, Opera   
    SVGDoc.addEventListener("mousewheel", MouseWheelHandler, false);   
    // Firefox   
    SVGDoc.addEventListener("DOMMouseScroll", MouseWheelHandler, false);   
}   
window.onmousewheel= SVGDoc.onmousewheel=MouseWheelHandler; 
// IE 6/7/8   
else myimage.attachEvent("onmousewheel", MouseWheelHandler);   */

} // end function Initialize()

//绑定鼠标滑轮事件
if(document.addEventListener){
   		document.addEventListener('DOMMouseScroll',scrollZoom,true);
   			//.getSVGDocument().getElementById( "group1-1")document.documentElement.scrollLeft
 }
		window.onmousewheel=document. onmousewheel=scrollZoom;
 
 

function panDoc(evt){
 
   viewBox = SVGRoot.getAttribute('viewBox');
   var viewVals = viewBox.split(' ');
   currentPosition = parseFloat(viewVals[0]);
   currentPosition1 = parseFloat(viewVals[1]);
   currentPosition2 = parseFloat(viewVals[2]);
   currentPosition3 = parseFloat(viewVals[3]);
 /*   if (goCenter == true){

          //  currentPosition=0;
          goCenter = false;
          alert(viewBox);
   } */
   
   
   
   if (goLeft == true){

          currentPosition = currentPosition - 100;
 
      goLeft = false;
  
   }

   if (goRight == true){
     if (currentPosition < 1500) {
          currentPosition = currentPosition + 100;
     }
     goRight = false;
  
   }
  if (goUp == true){
     if (currentPosition1 < 1300) {
          currentPosition1 = currentPosition1 + 100;
     }
     goUp = false;
     
   }
    if (goDown == true){
     if (currentPosition1 < 1500) {
          currentPosition1 = currentPosition1 -100;
     }
     goDown = false;
     
   }
  if (goIn == true){

          currentPosition2 = currentPosition2 /0.9;
           currentPosition3 = currentPosition3 /0.9 ;
      goIn = false;
       
   }

   if (goOut == true){
    
          currentPosition3 = currentPosition3 *0.9;
		  currentPosition2 = currentPosition2 *0.9;
     
     goOut = false;
      
   }
   
  
   
   viewVals[0] = currentPosition;
   viewVals[1] = currentPosition1;
   viewVals[2] = currentPosition2;
   viewVals[3] = currentPosition3;
   SVGRoot.setAttribute('viewBox', viewVals.join(' '));

} // end function panDoc()
/*  /**
		 *	滑轮滚动处理事件，向上滚放大
		 *	{Object} e 事件对象
		 */  
/* function scrollZoom(e){
			e=e || window.event ;
			//e.detail用来兼容 FireFox
       		e.wheelDelta >0?panDoc(goOut=true):panDoc(goIn=true) ;
		} */
</script>
 
		
<!-- /* function location() {
				 
					$.ajax({
						url:'SendFormulaComm2',
						type:'get',
						data:{$("#st42").val() },
						dataType:"json",
						success:function(data) {
							if(data.success==true)
								alert("保存成功");	
							else
								alert("socket连接异常");	
							
																									
						},
						error:function(){
							alert("failuer");
						}
			 
					});
}
 */ -->
 <!-- <script type="text/javascript">
  function getId(){
  // var svgdoc = document.getElementById("viewArea").getSVGDocument().getElementById("shape92-267").id; 
    var svgdoc = document.getElementById("viewArea").getSVGDocument();
    var svgId = svgdoc.getElementById("shape258-373")  ; 
       alert("svgdoc:"+svgdoc );
         alert("svgId:"+svgId  ); 
            
            var svgimg =document.createElementNS("http://www.w3.org/2000/svg","image");
           svgimg.setAttributeNS(null,"height","100"); 
            svgimg.setAttributeNS(null,"width","300"); 
             svgimg.href.baseVal = " 1.png" ;
            svgimg.setAttributeNS(null,"x","0");
            svgimg.setAttributeNS(null,"y","750");
            alert("svgimg:"+svgimg);
            svgimg.setAttributeNS(null, "visibility", "visible");
            svgId.appendChild(svgimg);
      
   
 }  
 </script> -->
 <script type="text/javascript">
 
 var svgIdd;
 var svgimg=document.createElementNS("http://www.w3.org/2000/svg","image");
 function getId(){
 var svgId;
 
 
                             
						    var svgdoc = document.getElementById("viewArea").getSVGDocument() ;
						    svgimg.href.baseVal = "<%=request.getContextPath() %>/assets/images/gallery/1.png" ;
						   // alert("svgdoc:"+svgdoc );
						    
 
                $.ajax({
					url: "${pageContext.request.contextPath }/location/findlocation.action",
					type:"get",
					contentType: "application/json;charset=utf-8",
					dataType:"json",
					success:function(data) {
						  //alert(data);
						$.each(data,function(i,n){
						//alert ("i:"+i+"n:"+n);
						 
						if(i=="areaid") {
						//alert("123");
						  svgId = svgdoc.getElementById(n);
						 
						}
						else if(i=="height") {
						svgimg.setAttributeNS(null,"height",n);
						}
						else if(i=="width") {
						svgimg.setAttributeNS(null,"width",n); 
						}
						else if(i=="x") {
						svgimg.setAttributeNS(null,"x",n);
						}
						else if(i=="y") {
						svgimg.setAttributeNS(null,"y",n);
						}
						
							 //svgimg.href.baseVal = " 1.png" ;
							 
							 //alert("svgdoc:"+svgdoc );
							/* var svgId = svgdoc.getElementById(n["areaid"] );
                             alert("svgId:"+svgId.id  );  
							 svgimg.setAttributeNS(null,"height",n['height']);
							  //svgimg.setAttributeNS(null,"width",n['width']);  
							//svgimg.setAttributeNS(null,"x",n['x']);
                           //svgimg.setAttributeNS(null,"y",n['y']);
							svgimg.setAttributeNS(null, "visibility", "visible");
                            svgId.appendChild(svgimg);*/
						});
						if(svgId!=svgIdd) {
						if(svgIdd) {
 							svgIdd.removeChild(svgimg);
 						}
						svgimg.setAttributeNS(null, "visibility", "visible");
                            svgId.appendChild(svgimg);
                            svgIdd=svgId;
						}
						
							//alert("haha");									
					},
					error:function(){
						alert("failuer");
					}
				 
				});
				 }
 // var svgdoc = document.getElementById("viewArea").getSVGDocument().getElementById("shape92-267").id;  
   /*  var svgdoc = document.getElementById("viewArea").getSVGDocument();
    var svgId = svgdoc.getElementById("shape257-375")  ; 
       alert("svgdoc:"+svgdoc );
         alert("svgId:"+svgId  ); 
            
            var svgimg =document.createElementNS("http://www.w3.org/2000/svg","image");
           svgimg.setAttributeNS(null,"height","100"); 
            svgimg.setAttributeNS(null,"width","600"); 
             svgimg.href.baseVal = " 1.png" ;
            svgimg.setAttributeNS(null,"x","80");
            svgimg.setAttributeNS(null,"y","750");
            alert("svgimg:"+svgimg);
            svgimg.setAttributeNS(null, "visibility", "visible");
            svgId.appendChild(svgimg); */
      
   

            // setInterval("sendcommand1()", 6000);///页面更新
                
                setInterval("getId()", 2000);
</script>
 
 
 
</html>
