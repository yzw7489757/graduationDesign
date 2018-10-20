<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>   
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String appName ="人事管理系统";
request.getSession().setAttribute("appName",appName);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <title>登陆</title>


    <!--[if lt IE 8]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="<%=path%>/portals/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="<%=path%>/portals/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="<%=path%>/portals/css/animate.min.css" rel="stylesheet">
    <link href="<%=path%>/portals/css/style.min.css?v=4.0.0" rel="stylesheet">
    <link href="<%=path%>/portals/css/login.min.css" rel="stylesheet">
    
</head>

<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>[ Hi ]</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>${appName }</strong></h4>
                </div>
            </div>
            <div class="col-sm-5">
                <form method="post" action="<%=path %>/adminLogin.do">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md">登录到${appName }</p>
                    <input type="text" name="id" class="form-control uname"  value="1001" placeholder="用户名" />
                    <input type="password"name="mima" class="form-control pword m-b"  value="000000" placeholder="密码" />
                    <button class="btn btn-success btn-block">登录</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; ${appName }
            </div>
        </div>
    </div>
</body>

</html>
