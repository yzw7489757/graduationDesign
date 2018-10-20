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
	 String id=request.getParameter("id");
	 String sex=request.getParameter("sex");
	 String name=request.getParameter("name");
	 String tel=request.getParameter("tel");
	 String mail=request.getParameter("mail");
	 String birth=request.getParameter("birth");
	 String mark=request.getParameter("mark");
	 String idcard=request.getParameter("idcard");
	 String job=request.getParameter("job");
	 String dept=request.getParameter("dept");
	 String sql="update emp set sex='"+sex+"', name='"+name+"',  tel='"+tel+"' , mail='"+mail
	 +"', birth='"+birth+"',  mark='"+mark+"',  idcard='"+idcard+"',  job='"+job+"',  dept='"+dept+"'      where id= '"+id+"'";
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');window.history.go(-2);</script>");
%>
