<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
	 <%
	 String uid=request.getParameter("uid");
	 String mima=request.getParameter("mima");
	 String name=request.getParameter("name");
	 String tel=request.getParameter("tel");
	 String type=request.getParameter("type");
	
	 String sql="update users set mima='"+mima+"', name='"+name+"',  tel='"+tel+"' , type='"+type+"'     where id= '"+uid+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');window.history.go(-2);</script>");
%>
