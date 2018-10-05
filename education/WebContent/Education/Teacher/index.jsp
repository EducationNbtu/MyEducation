<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<title>老师空间</title>
<%
	// 权限验证
	if(session.getAttribute("currentUser")==null){
		System.out.println("b");
		response.sendRedirect("../../index.jsp");
		return;
	}
	else
		System.out.println("a");
%>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <link rel="stylesheet" href="css/index.css" />
    <link rel="stylesheet" href="css/jquery-ui.css" />
</head>

<body>
    <div class="topClass">
        <div class="logClass">
            <img src="image/logo.png" alt="智码科技" />
        </div>
        <span class="logSpan">智码科技</span>
        <div class="topCutDiv"></div>
        <span class="userSpan" style="position:absolute; left:15%">老师</span>
        <div class="headClass">
            <img src="image/head.png" alt="用户头像" />
        </div>
        <span class="userSpan">老师01</span>
    </div>
    <div class="leftClass">
        <div id="accordion">
        <h3>基础数据</h3>
            <div>
                <ul>
                    <li><span data-value="page/BasicData/Myteaching_plan.html">我的教学计划</span></li>
                    <li><span data-value="page/InClass/MyCourse.html">我的教学安排</span></li>
                    <li><span data-value="page/course/index.html">课程目录</span></li>
                </ul>
            </div>
            <h3>欢乐课堂</h3>
            <div>
                <ul>
                    <li><span data-value="page/InClass/MyCourse.html">我的课程</span></li>
                  
                </ul>
            </div>
            <h3>课后乐园</h3>
            <div>
                <ul>
                   <li><span data-value="page/OutClass/MyCourse.html">课后</span></li>
                    <li><span data-value="page/OutClass/ReandPre.html">监管&评分</span></li>
                    <li><span data-value="page/curse_manage.html">我的解答</span></li>
                    <li><span data-value="page/curse_manage.html">我的题目</span></li>
                    
                </ul>
            </div>
            <h3>能力评估</h3>
            <div>
                <ul>
                    <li><span data-value="page/newability/index.html">授课能力</span></li>
                    
                    
                </ul>
            </div>

        </div>
    </div>
    <div class="cutDiv"></div>
    <div class="mainClass">
        <div class="breadcrumbClass">
            <div id="menuLabel">个人主页</div>
            <div class="mainCutDiv"></div>
        </div>
        <iframe id="pageContainer" frameborder="0" width="100%" height="89%" scrolling="false" src="page/curse_manage.html"></iframe>
    </div>
    <!-- 预备模态框 -->
    <div id="modalDialog">
        <iframe id="dialogContainer" frameborder="0" width="100%" height="100%" scrolling="false"></iframe>
    </div>
</body>

</html>