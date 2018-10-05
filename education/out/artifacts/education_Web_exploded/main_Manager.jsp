<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>智码科技 首页</title>
<link rel="stylesheet" type="text/css" href="out_css/normalize.css" />
<link rel="stylesheet" type="text/css" href="out_css/demo.css">
<link rel="stylesheet"  type="text/css" href="out_css/app.css">
<link rel="stylesheet"  type="text/css" href="out_css/All.css"/>
</head>

<body>

	<div class="navi-bg" style="z-index: 1;">
		<img src="image/logo.png" alt="logo" class="navi-logo" />
		<div class="navi-logow">智码科技</div>
		<div><a class="navi-option navi-optionselected" id="head_page" style="margin-left: 150px;" href="#" >首&nbsp;&nbsp;页</a></div>
		<div><a class="navi-option navi-optioncolor" style="margin-left: 150px;" href="#">课&nbsp;&nbsp;程</a></div>
		<div><a class="navi-option navi-optioncolor" style="margin-left: 150px;" href="Education/Manager/index.html" >我的空间</a></div>
		<img src="image/avatar.png" alt="avatar" class="navi-avatar" id="avatar" />
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

<script src="out_js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="out_js/xSlider.js"></script>

<div class="tail-bg">
	<p class="tailword" style="top: 50px;left: 60px;">联系我们：电话</p>
	<p class="tailword" style="top: 100px;left: 60px;">联系邮箱：邮箱</p>
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
	$("#page_head").click(function()
			{
		$.ajax({ 
		    type: "post", 
		    url: "skip", 
		    datatype: "json", 
		    contentType: "application/json",    
		    data:"id=1234", 
		    success: function(result){ 
		       alert(result); 
		    } 
		  }); 

			}
			);
})


</script>