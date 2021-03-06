<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jsmap.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 	 <base href="<%=basePath%>">
  <style type="text/css">
.boldhead{ font-weight:bold; font-size: 24px; text-align:center; padding:20px}
.pichead{overflow:auto; height:100px; width:96%; font-size:14px; font-weight:bold; margin:auto auto auto auto; border:2px solid #0066CC; background:#FFFFFF; padding-top:10px; padding-bottom:10px;}
.pichead li{float:left;margin:5px;width:400px;}
.picview { width:96%; margin:auto auto auto auto; text-align:center; border-bottom: solid 2px #0066CC; border-left:solid 2px #0066CC; border-right:solid 2px #0066CC; background:#FFFFFF; height:500px; overflow:hidden; }
.picview img{width:700px; cursor: move; margin:15px; z-index:1; border:8px solid #D8D8D8;}
#contral{ position: absolute;z-index:10; left:15px; top:240px;}
#contral img{ width:auto; margin:auto; cursor:auto; width:20px; border:0px;}
#contral ul{width: 88px;}
#contral li{width:26px; height:26px; float:left; list-style:none;}
</style>
<!--
From:http://blog.csdn.net/kingerq
Created date：2009-04-09
Programmer:多菜鸟
Function:
用JS实现和google地图一样的图片查看器-----图片放大、缩小、移动和还原，都控制在一个div层里，兼容ie7,FF
-->
</head>

<body>
<div class="boldhead">用JS实现和google地图一样的图片查看器<br /><!-- -----图片放大、缩小、移动和还原，都控制在一个div层里，兼容ie7,FF --></div>



<div id="picview" class="picview">
  <div id="contral">
    <ul>
      <li></li>
      <li><img src="assets/images/gallery/up.gif" onClick="clickMove('up')" title="UP"></li>
      <li></li>
      <li><img src="assets/images/gallery/left.gif" onClick="clickMove('left')" title="LEFT"></li>
      <li><img src="assets/images/gallery/zoom.gif" onClick="realsize();" title="FULL SIZE"></li>
      <li><img src="assets/images/gallery/right.gif" onClick="clickMove('right')" title="RIGHT"></li>

      <li></li>
      <li><img src="assets/images/gallery/down.gif" onClick="clickMove('down')" title="DOWN"></li>
      <li></li>
      <li></li>
      <li><img src="assets/images/gallery/zoom_in.gif" onClick="bigit();" title="ZOOM IN"></li>
      <li></li>
      <li></li>
      <li><img src="assets/images/gallery/zoom_out.gif" onClick="smallit();" title="ZOOM OUT"></li>
      <li></li>

    </ul>
  </div>
  <img src="assets/images/gallery/Sunset.jpg" alt="Moving" name="viewArea" id="viewArea" />
  </div>
  <div class="pichead">
  <ul>
    <li><a href="#" onClick="changeImage('assets/images/gallery/Sunset.jpg');return false;">Sunset.jpg</a></li>
    <li><a href="#" onClick="changeImage('assets/images/gallery/Water lilies.jpg');return false;">Water lilies.jpg</a></li>
    <li><a href="#" onClick="changeImage('assets/images/gallery/Blue hills.jpg');return false;">Blue hills.jpg</a></li>
    <li><a href="#" onClick="changeImage('assets/images/gallery/Winter.jpg');return false;">Winter.jpg</a></li>
  </ul>
</div>
<!--div id="mouseData"></div-->
</body>
</html>
<script>
var rate = 0.2;
var pp = document.getElementById("viewArea");
var vv = document.getElementById("picview");

var ie=document.all;
var nn6=document.getElementById&&!document.all;
var isdrag=false;
var y,x;
var st,sl;

function moveMouse(e) {
 if (isdrag) {
 var mouseX = nn6 ? e.clientX : event.clientX;
 var mouseY = nn6 ? e.clientY : event.clientY;
 
 vv.scrollTop = st+(y-mouseY);
 vv.scrollLeft = sl+(x-mouseX);
 //document.getElementById('mouseData').innerHTML = "x="+x+" y="+y+" x-mouseX="+(x-mouseX)+" y-mouseY="+(y-mouseY);
 return false;
 }
}

function initDrag(e) {
 var oDragHandle = nn6 ? e.target : event.srcElement;
 isdrag = true;
 x = nn6 ? e.clientX : event.clientX;
 y = nn6 ? e.clientY : event.clientY;
 
 st = vv.scrollTop;
 sl = vv.scrollLeft;

 document.onmousemove = moveMouse;
 return false;
}
pp.onmousedown=initDrag;
pp.onmouseup=new Function("isdrag=false");

function bigit(){
  pp.style.height = pp.height*(1+rate)+"px";
  pp.style.width = pp.width*(1+rate)+"px";
}
function smallit(){
  pp.style.height = pp.height*(1-rate)+"px";
  pp.style.width = pp.width*(1-rate)+"px";
}

function realsize(){
  var newImg = new Image();
  newImg.src = pp.src;
  pp.style.height = newImg.height+"px";
  pp.style.width = newImg.width+"px";
}

function clickMove(s){
 if(s=="up"){
  vv.scrollTop = vv.scrollTop-100;
 }else if(s=="down"){
  vv.scrollTop = vv.scrollTop+100;
 }else if(s=="left"){
  vv.scrollLeft = vv.scrollLeft-100;
 }else if(s=="right"){
  vv.scrollLeft = vv.scrollLeft+100;
 }
}

function changeImage(path){
  pp.src = path;
  pp.style.width = "600px";
  vv.scrollTop = 0;
  vv.scrollLeft = 0;
}

</script>
