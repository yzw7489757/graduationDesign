<%@ page language="java" import="java.util.*,java.sql.*,java.text.SimpleDateFormat,java.util.Date,model.User"pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'create.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<%
	  String newmima1=request.getParameter("newmima1");
	 User u =(User)session.getAttribute("user");
	  String id=u.getId();
	 String sql="update users set mima='"+newmima1+"'   where id= '"+id+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');window.history.go(-1);</script>");
%>
   
  </body>
</html>
