<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="description" content="">
    <meta name="author" content="">
    <title>登录_智码科技</title>
    <meta charset="utf-8">
    <!-- 支持IE -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="http://member.tongyi.com/static/member/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://member.tongyi.com/static/member/css/base.css" rel="stylesheet">
    <script src="http://member.tongyi.com/static/js/jquery_1.7.1.js"></script>
    <link href="http://member.tongyi.com/static/member/css/login20161202.css" rel="stylesheet">
    <style>
    .login-box{height:auto}
    </style>
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="100325051" data-redirecturi="http://member.tongyi.com/qc_callback.html" charset="utf-8"></script>
    <script type="text/javascript">
    document.domain='tongyi.com';
	function toQzoneLogin()
	{      
		var A=window.open("http://www.tongyi.com/index.php/qqlogin/gologin","TencentLogin","width=450,height=320,menubar=0,scrollbars=1, resizable=1,status=1,titlebar=0,toolbar=0,location=1");
	}
	
	function lvalidate()
	{
		if(!$("#member_id").val()){ 
			//alert('请输入用户名/手机号码');
			$("#msghtml1").html('请输入用户名/手机号码');
			return false;
		}
		if(!$("#password").val()){ 
			$("#msghtml2").html('请输入密码');
			//alert('请输入密码');
			return false;
		}
		
		/*$.post("http://member.tongyi.com/index.php/login/checkuser",{member_id:$.trim($("#member_id").val()),password:$.trim($("#password").val())},function(data){
			
			if(data.err)
			{
				$("#msghtml2").html(data.msg);
				return false;
			}
			
		},'json');
		*/		
		return true;
	}
	</script>
	<style type="text/css">
       .head
       {
       	width: 200px;
       	height: 100px;
       	position: absolute;
       	left: 470px;
       	top:7px;
       }
       #a
       {
       	float: left;
       margin-top: 20px;
       margin-right: 50px;
       }
       .dailyjob
       {
       	width: 300px;
    height: 150px;
    border-radius: 5px;
   
    position: absolute;
    top: 750px;
    left: 1100px;
       }
       .job_content
       {
       	width: 250px;
	    height: 100px;
	    border-radius: 5px;
	    border: 1px solid red;
	    margin: 0 auto;
	    display: none;
       }
	</style>
</head>
<body>
    <section class="login-header">
        <div class="container p_0">
          <!--<div class="head">
             <img src="image/newlogo.png">

          </div> <span style="color: #044490;font-size:30px;font-weight: bold;font-family: 华文行楷;display: block;position: absolute;top: 45px;left: 550px; ">智码科技</span>-->
            <a href="#"><img src="image/forth.png" id="a"></a>
            <img src="http://member.tongyi.com/static/member/images/2016/logo-bas.gif">
        </div>
    </section>
    <div class="login-bg">
        <div class="container p_0">
            <div class="login-box">
            
            
               <!--登录框-->
                <div class="login_tcnk" >
                	
                  <h1><!--<a href="http://member.tongyi.com/index.php/register">注册</a>-->用户登录</h1>
              
                     <form action="login" method="post" id="lg_ty"    >
                     <div class="login_srwk">
                         <input type="text" placeholder="请输入帐号" value="${userName }" class="whdjd" name="u_username" id="u_username" tabindex="1" >
                         <i class="ln_yht">&nbsp;</i>
                         <em class="ln_cwts" id="err1" style="display:none"><img src="http://member.tongyi.com/static/member/images/2016/logo_cwt.png" alt="" width="20" height="20"></em>
                         <a href="javascript:closeuser()" class="ln_qcxx" style="display:none" id="msgimg1"><img src="http://member.tongyi.com/static/member/images/2016/logo_gbt.png" width="20" height="20" alt=""/></a>
                         <span id="msghtml1">&nbsp;</span>
                     </div>
                     
                     <div class="login_srwk">
                         <input type="password" placeholder="密码" class="whdjd" id="u_password" name="u_password" tabindex="2" value="${password }">
                         <i class="ln_stt">&nbsp;</i>
                         <em class="ln_cwts" id="err2" style="display:none"><img src="http://member.tongyi.com/static/member/images/2016/logo_cwt.png" alt="" width="20" height="20"></em>
                         <a href="#" class="ln_wjmm">忘记密码？</a>
                         <span id="msghtml2">&nbsp;</span>
                     </div>
		     <div class="login_srwk" style="display: none" id="imgcode">
		       <input type="text" placeholder="图片验证码" class="whdjd" style=" width:182px;" name="valicode" id="valicode"  maxlength="4" >
			 <div class="login_yzmk">
			      <a href="javascript:void (0)" onclick="change_valicode();return false;" class="hqyzmanew"><img src="http://member.tongyi.com/index.php/valicode/get_valicode/" width="86" height="40" alt="" id="valpic"/></a>
				</div>
			 <i class="ln_yzmtpk">&nbsp;</i>
			 <span id="msghtml4">&nbsp;</span>
		     </div>
                     <input type="hidden" name="from" id="from" value=""/>
                     <input type="hidden" name="wxbind" id="wxbind" value=""/>
                     <button class="login_an" type="submit"  >登录</button>
                     </form>
               
                     
                     <div class="login_dsfdl">
                       <span><a href="DailyJob/index.html" style="display: block;float: right;">工作日志</a></span> 
                     <!--
                         <a  onClick="window.open ('http://member.tongyi.com/index.php/login/wlogin' , '_blank' ,
            'height=540,width=400,scrollbars=no,location=no' );">
                            <span class="dsftpk"><img src="http://member.tongyi.com/static/member/images/2016/logo_wx.png" width="26" height="23" alt=""/></span>微信
                         </a>
                         <a href="javascript:toQzoneLogin();">
                            <span class="dsftpk"><img src="http://member.tongyi.com/static/member/images/2016/logo_qq.png" width="26" height="23" alt=""/></span>QQ
                         </a>
                         -->
                     </div>
                 </div>
            </div>
        </div>
    </div>
    <div class="login-footer">
        <div class="container p_0 footer-link">
             <span style="color: gray;font-size: 16px;">692448(我爱编程)</span>
               <br>
               <span style="color: gray;font-size: 14px;">Canute@2018&nbsp;智码科技版权所有</span>
            <p>ZMKJ © 2018 - 2118  zhima.com Inc. All Rights Reserved.</p>
        </div>
        <!--
        <div class="dailyjob">
            <input type="button" name="" value="工作日志" style="    background-color: #4ba0f7;
    border: 0;
    outline: none;
    border-radius: 5px;
    width: 70px;
    height: 27px;
    color: white;" id="find">
            <div class="job_content" id="job"></div>

        </div>
        -->
    </div>
    <script type="text/javascript">
        var a=document.getElementById('find');
        var b=document.getElementById('job');
        a.onclick=function show()
        {
             b.style.display="block";
        }
    </script>
<script>

var vcode='0';
function accountLogin()
{
	$("#loginTitle").html("用户登录");
	$("#ac_page1").show();
	$("#ac_page2").hide();
}

$(function(){
		$('#member_id').focus(function(){
			$("#member_id").removeClass().addClass('whdjd on');
			$("#msgimg1").show();
			$("#msghtml1").html('');
			$("#err1").hide();
		});
		
		//密码
		$('#password').focus(function(){
			$("#password").removeClass().addClass('whdjd on');
			$("#msgimg2").show();
			$("#msghtml2").html('');
			$("#member_id").removeClass().addClass('whdjd');
			$("#msgimg1").hide();
		});
		/*.blur(function(){
			
			$("#password").removeClass().addClass('whdjd');
			$("#msgimg2").hide();
			
			if($.trim($("#password").val())=='')
			{
				$("#msghtml2").html('密码不能为空');
				$("#password").removeClass().addClass('whdjd err');
				$("#msgimg2").hide();
				$("#err2").hide();
			}	
			
		});*/
		if(Number(vcode)==1)
		{
			$(".login-box").css("margin-top",16);
			$("#imgcode").show();
		}
});    
function closeuser()
{

	$("#member_id").removeClass().addClass('whdjd');
	$("#msgimg1").hide();
	$("#member_id").val('');
}
function change_valicode(){
	$("#msghtml4").html('');
	d = new Date();
	$("#valpic").attr("src","http://member.tongyi.com/index.php/valicode/get_valicode/?"+d.getTime());
}
</script>
<iframe src="" style="width: 0px; height: 0px; display: none; overflow: hidden;"></iframe></body></html>