<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
  <head>
     <base href="<%=basePath%>">
     
     <meta charset="UTF-8">
	 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	 <meta http-equiv="pragma" content="no-cache">
	 <meta http-equiv="cache-control" content="no-cache">
	 <meta http-equiv="expires" content="0">    
	 <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	 <meta http-equiv="description" content="This is my page">
     <title>行业智慧能力平台</title>
     <link rel="stylesheet" type="text/css" href="assets/css/style2.0.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->

		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" type="text/css" href="css/style2.0.css">

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="assets/js/html5shiv.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
     <style type="text/css">
	 ul li{font-size: 30px;color:#2ec0f6;}
	.tyg-div{z-index:-1000;float:left;position:absolute;left:5%;top:20%;color:#3b402b;}
	.tyg-p{
		font-size: 14px;
	    font-family: 'microsoft yahei';
	    position: absolute;
	    top: 135px;
	    left: 60px;
	}
	.tyg-div-denglv{
		z-index:1000;float:right;position:absolute;right:3%;top:10%;
	}
	.tyg-div-form{
		background-color: #23305a;
		width:300px;
		height:auto;
		margin:120px auto 0 auto;
		color:#2ec0f6;
	}
	.tyg-div-form form {padding:10px;}
	.tyg-div-form form input[type="text"]{
		width: 270px;
	    height: 30px;
	    margin: 25px 10px 0px 0px;
	}
	.tyg-div-form form button {
	    cursor: pointer;
	    width: 270px;
	    height: 44px;
	    margin-top: 25px;
	    padding: 0;
	    background: #2ec0f6;
	    -moz-border-radius: 6px;
	    -webkit-border-radius: 6px;
	    border-radius: 6px;
	    border: 1px solid #2ec0f6;
	    -moz-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    -webkit-box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    box-shadow:
	        0 15px 30px 0 rgba(255,255,255,.25) inset,
	        0 2px 7px 0 rgba(0,0,0,.2);
	    font-family: 'PT Sans', Helvetica, Arial, sans-serif;
	    font-size: 14px;
	    font-weight: 700;
	    color: #fff;
	    text-shadow: 0 1px 2px rgba(0,0,0,.1);
	    -o-transition: all .2s;
	    -moz-transition: all .2s;
	    -webkit-transition: all .2s;
	    -ms-transition: all .2s;
}
</style>
<body>
<div class="tyg-div">
	<ul>
    	<li>让</li>
    	<li><div style="margin-left:20px;">智</div></li>
    	<li><div style="margin-left:40px;">能</div></li>
    	<li><div style="margin-left:60px;">改</div></li>
    	<li><div style="margin-left:80px;">变</div></li>
    	<li><div style="margin-left:100px;">生</div></li>
    	<li><div style="margin-left:120px;">活</div></li>
    </ul>
</div> 
<div id="contPar" class="contPar">
	<div id="page1"  style="z-index:1;">
		<div class="title0">智能管控处理平台</div>
		<!-- <div class="title1">旅游、交通、气象、公共安全、大数据</div> -->
		<div class="imgGroug">
			<ul>
				<img alt="" class="img0 png" src="assets/img/page1_0.png">
				<img alt="" class="img1 png" src="assets/img/page1_1.png">
				<img alt="" class="img2 png" src="assets/img/page1_2.png">
			</ul>
		</div>
		<img alt="" class="img3 png" src="assets/img/page1_3.jpg">
	</div>
</div>
<div class="tyg-div-denglv">
	<div class="tyg-div-form">
	 ${msg }</br>  
		<form action="${pageContext.request.contextPath }/user/login.action " methed="post">
			<h2>登录</h2><!-- <p class="tyg-p">欢迎访问 </p> -->
			<div style="margin:5px 0px;">
				<input type="text" id="name" name="name" class="form-control" placeholder="请输入账号..."/>
			</div>
			<div style="margin:5px 0px;">
				<input type="text" id="password" name="password" class="form-control" placeholder="请输入密码..."/>
			</div>
			<div style="margin:5px 0px;">
				<!-- <input type="text" style="width:150px;" placeholder="请输入验证码..."/> -->
				<!-- <img src="./img/1.png" style="vertical-align:bottom;" alt="验证码"/> -->
			</div>
			<button type="submit" onclick="check_form_login()" >登<span style="width:20px;"></span>录</button>
		</form>
	</div>
</div>
	<script type="text/javascript">
function check_form_login() {
			if(isNull($("#name").val()))     {
				alert("请输入用户名！"); 
				return false;
			}
			if(isNull($("#password").val())) {
				alert("请输入密码！");
				return false;
			}
			 
		}
		function isNull(str) {
			if ( str == "" ) return true;
			var regu = "^[ ]+$";
			var re = new RegExp(regu);
			return re.test(str);
		}
		</script>
<script type="text/javascript" src="assets/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="assets/js/com.js"></script>
<!--[if IE 6]>
<script language="javascript" type="text/javascript" src="./script/ie6_png.js"></script>
<script language="javascript" type="text/javascript">
DD_belatedPNG.fix(".png");
</script>
<![endif]-->
<!-- <div style="text-align:center;">
<p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p>
</div> -->

</body>
</html>
