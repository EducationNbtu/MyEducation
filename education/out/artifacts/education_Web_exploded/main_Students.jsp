<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>智码科技 首页</title>

<%
	// 权限验证
	if(session.getAttribute("currentUser")==null){
		System.out.println("滚去主页面");
		response.sendRedirect("index.jsp");
		return;
	}
    //身份判定

%>

<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css">
<link rel="stylesheet"  type="text/css" href="css/app.css">
<link rel="stylesheet"  type="text/css" href="css/All.css"/>
</head>
<style type="text/css">

   .head
{
	width: 80px;
	height: 80px;
	border-radius: 50%;
	overflow: hidden;
	margin: auto;
	position: absolute;
	top: 10px;
	left: 1800px;
	cursor: pointer;
	

}
.options
{
	width: 150px;
	height: 180px;
	
	position: absolute;
	left: 1700px;
	background-color: #F6F6F6;
	z-index: 2;
	border-radius: 8px;
	display: none;
}
.options ur li
{
	list-style: none;
	font-family: "幼圆";
	font-size: 20px;
	color:black; 
	text-align: center;
	margin-top: 15px;
	height: 35px;
	line-height: 35px;
	
}
.options ur li a
{
  text-decoration: none;
  color: black;
  display: block;
}
.options li:hover
{
  background-color:#4c86ff;
}
.options li a:hover
{
	color: white;
}
</style>
<body>

	<div class="navi-bg" style="z-index: 1;">
		<img src="image/logo.png" alt="logo" class="navi-logo" />
		<div class="navi-logow">智码科技</div>
		<div><a class="navi-option navi-optionselected" style="margin-left: 150px;" href="#" >首&nbsp;&nbsp;页</a></div>
		<div><a class="navi-option navi-optioncolor" style="margin-left: 150px;" href="#">课&nbsp;&nbsp;程</a></div>
		<div><a class="navi-option navi-optioncolor" style="margin-left: 150px;" href="Education/Students/index.html">我的空间</a></div>
		<div class="head" id="head"><img src="image/img14.png" width="80" height="80"></div>
		
	</div>	
     <div class="options" id="options">
       <ur>
       	<li><a href="#">个人资料</a></li>
       	<li><a href="#">我的课程</a></li>
       	<li><a href="#">退出登录</a></li>
       </ur>
        
     </div>
	<div class="slider" >
		<div class="slider-img">
			<ul class="slider-img-ul">
				<li><img src="image/C.jpg"></li>
				<li><img src="image/Scratch.png"></li>
				<li><img src="image/cdesign.jpg"></li>
				<li><img src="image/C.jpg"></li>
				<li><img src="image/Scratch.png"></li>
				<li><img src="image/cdesign.jpg"></li>
			</ul>
		</div>

</div>

<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/xSlider.js"></script>

<div class="tail-bg">
	<p class="tailword" style="top: 50px;left: 60px;">联系我们：老刘电话</p>
	<p class="tailword" style="top: 100px;left: 60px;">联系邮箱：老刘邮箱</p>
	<p class="tailword" style="top: 150px;left: 60px;">总部地址：某个地方</p>
	<img  src="image/logo.png" class="tail-img" style="top: 50px;left: 650px;"/>
	<p class="tail-title" style="top: 60px;left: 850px;">智码科技</p>
	<img style="top: 130px;left: 850px;width: 347px;height: 47px;position: absolute;" src="image/word.png"/>
	<p class="tail-last"style="right: 100px;bottom: 30px;" >版权归属：智码科技</p>
</div>
</body>
</html>
<script type="text/javascript">
$(function(){
	//导航切换
	$(".navi-option").click(function(){
		$(".navi-option.navi-optionselected").removeClass("navi-optionselected").addClass("navi-optioncolor");
		$(this).removeClass("navi-optioncolor");
		$(this).addClass("navi-optionselected");
	});
})
$(document).ready(function(){
  $("#head").click(function(){
    $("#options").slideToggle(500);
  });
  $("#stop").click(function(){
    $("#panel").stop();
  });
});
var list=document.getElementById('options').getElementsByTagName('li');

</script>