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
	 String name=request.getParameter("name");
	 String mark=request.getParameter("mark");
	 String id=request.getParameter("id");
		
	 String sql="update dept set mark='"+mark+"', name='"+name+"'   where id= '"+id+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');window.history.go(-2);</script>");
%>
