<%@ page language="java"  pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
  
  <%

String id=request.getParameter("id");
String tablename=request.getParameter("tablename");
String sql="delete from "+tablename+" where id='"+id+"'";
  	  	
connDbBean.executeUpdate(sql);
out.print("<script>alert('删除成功!!');location.href='"+request.getHeader("Referer")+"';</script>");
  	  


 %>

