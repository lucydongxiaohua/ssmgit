<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
	<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript" src="assets/js/jquery-1.8.3.min.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <%--  ${msg }</br>  --%> 
     <%-- <img src="${pageContext.request.contextPath }/assets/images/gallery/image-1.jpg"/>
    <a href="${pageContext.request.contextPath }/login.jsp">去登录</a>   --%>
    <body onLoad="sendRequest()" >

<div class="videozz"></div>
	<video  autoplay muted loop poster="assets/images/fallba1ck.jpg">
		<source src="assets/images/mov.mp4">		
		你的游览器不支持video支持
	</video>
    
<div class="box">
	<div class="box-a">
    <div class="m-2">
          <div class="m-2-1">
             
           <form onsubmit="return check_form_login()" action="${pageContext.request.contextPath }/user/login.action "  method="post">
                <div class="m-2-2">
                  <input type="text" id="name" name="name" class="form-control" autocomplete="off" placeholder="请输入账号..."/>
                </div>
                <div class="m-2-2">
                  <input type="password" id="password" name="password" class="form-control" autocomplete="off" placeholder="请输入密码..."/>
                </div>
               <!--  <div class="m-2-2-1">
                   <input type="text" placeholder="请输入验证码"/>
                   <img src="assets/images/1.png"/>
                </div> -->
                <div class="m-2-2">
                   <button type="submit"  >登<span style="width:20px;"></span>录</button>
                  
                </div>
                 <a href="regist.jsp" data-target="#signup-box" class="user-signup-link">                                 
													注册
													<i class="ace-icon fa fa-arrow-right"></i>       
												</a>   
            </form>
            <%-- <form action="${pageContext.request.contextPath }/user/login.action ">
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
		</form> --%>
          </div>
    </div>
    <div class="m-5"> 
    <div id="m-5-id-1"> 
    <div id="m-5-2"> 
    <div id="m-5-id-2">  
    </div> 
    <div id="m-5-id-3"></div> 
    </div> 
    </div> 
    </div>   
    <div class="m-10"></div>
    <div class="m-xz7"></div>
    <div class="m-xz8 xzleft"></div>
    <div class="m-xz9"></div>
    <div class="m-xz9-1"></div>
    
    <div class="m-x17 xzleft"></div>
    <div class="m-x18"></div>
    <div class="m-x19 xzleft"></div>
    <div class="m-x20"></div>  
    <div class="m-8"></div>
    <div class="m-9"><div class="masked1" id="sx8">欢迎访问</div></div> 
    <div class="m-11">
    	<div class="m-k-1"><div class="t1"></div></div>
        <div class="m-k-2"><div class="t2"></div></div>
        <div class="m-k-3"><div class="t3"></div></div>
        <div class="m-k-4"><div class="t4"></div></div>
        <div class="m-k-5"><div class="t5"></div></div>
        <div class="m-k-6"><div class="t6"></div></div>
        <div class="m-k-7"><div class="t7"></div></div>
    </div>   
    <div class="m-14"><div class="ss"></div></div>
    <div class="m-15-a">
    <div class="m-15-k">
    	<div class="m-15xz1">
            <div class="m-15-dd2"></div>
        </div>
    </div>
    </div>
    <div class="m-16"></div>
    <div class="m-17"></div>
    <div class="m-18 xzleft"></div>
    <div class="m-19"></div>
    <div class="m-20 xzleft"></div>
    <div class="m-21"></div>
    <div class="m-22"></div>
    <div class="m-23 xzleft"></div>
    <div class="m-24" id="localtime"></div>
    </div>
</div>
	<script type="text/javascript">
function check_form_login() {
			if( isNull($("#name").val()))     {
				alert("请输入用户名！"); 
				return false;
			}
			if( isNull($("#password").val())) {
				alert("请输入密码！");
				return false;
			}
			
			/* $.ajax({
				url:'GoLogin',
				type:'post',
				data:{action:"login",name:$("#name").val(),password:$("#password").val(),savetime:$("#savetime").val()},
				dataType:"json",				
				success:function(data) {
					if(data.success==false)
					alert("用户名或密码输入错误");
					else if(data.success==true)
					window.location.href="SendRedict?id=0"; 
				},
							
			}); */
			 
		}
		//判断输入字符串是否为空或者全部都是空格
		function isNull(str) {
			if ( str == "" ) return true;
			var regu = "^[ ]+$";
			var re = new RegExp(regu);
			return re.test(str);
		}
		</script>
<script src="assets/js/common.min.js"></script>
<div style="text-align:center;">
<!-- <p>来源:<a href="http://www.mycodes.net/" target="_blank">源码之家</a></p> -->
</div>
</body>
 
</html>
