<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
	<style type="text/css">
   html,body{
    height: 100%;
    width: 100%;
    margin: 0px;
    
          }
    #a:hover
    {
    	opacity: 0.8;
    }
     #b:hover
    {
    	opacity: 0.8;
    }
	</style>
	<script type="text/javascript">
function resetValue()
{
	document.getElementById('aa').value="";
    document.getElementById('bb').value="";
}
   
</script>
</head>
<body>
	 <div class="top">
         <span style="color: #044490;font-size:30px;font-weight: bold;font-family: 华文行楷;display: block;position: absolute;top: 30px;left: 200px; ">智码科技</span>
	 </div>
	 <div class="mid">
        <div class="login">
             <span style="color: black;font-size: 22px;font-family: 幼圆;font-weight: bold;display: block;position: absolute;top: 20px;left: 110px;">欢迎登录</span>
             <div class="detail">
             <form action="login" method="post" >
             <img src="image/name.png" id="aa" style="display: block;position: absolute;top: 65px;">
                 <input type="text" name="u_username" placeholder="用户名" style="height: 33px;width: 90%;border-radius: 6px;border: 0;outline: none;line-height: 33px;padding-left: 30px;font-family: 幼圆;">
                 <br><br><br>
             <img src="image/password.png" id="bb" style="display: block;position: absolute;top: 136px;">
                <input type="password" name="u_password" placeholder="密码" style="height: 30px;width: 90%;border-radius: 6px;border: 0;outline: none;line-height: 30px;font-family: 幼圆;padding-left: 30px;">
                <br><br><br><br>&nbsp;&nbsp;
                <input type="submit" id="a" name="" style="height: 30px;border-radius: 5px;outline: none;border: 0;font-size: 16px;font-family: 幼圆;width: 60px;background-color: #039BE5;color: white;cursor:pointer; " value="登录" >
                &nbsp;&nbsp;
                <input type="button" name="" id="b" style="height: 30px;border-radius: 5px;outline: none;border: 0;font-size: 16px;font-family: 幼圆;width: 60px;background-color: #039BE5;color: white;cursor: pointer;" value="重置" >
                </form>
             </div>

        </div>

	 </div>
	 <div class="buttom">
          <div class="span">
              <br><br>
               <span style="color: gray;font-size: 16px;">692448(我爱编程)</span>
               <br>
               <span style="color: gray;font-size: 14px;">Canute@2018&nbsp;智码科技版权所有</span>
          </div>
	 </div>
</body>
</html>