<%@ page language="java" import="java.util.*,java.sql.*,java.text.SimpleDateFormat,java.util.Date,model.User" pageEncoding="utf-8"%>
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
	 String id="1001";
	 ResultSet RS_result=connDbBean.executeQuery("select max(id)   as id from files   ");
	 while(RS_result.next()){
		 String ids= RS_result.getString("id");
		 if(null==ids || "".equals(ids) ||"null".equals(ids)){
			 
		 }else{
			 id= ids;
		 }
	 }
	 User u =(User)session.getAttribute("user");
	 Integer uid = Integer.parseInt(id)+1;
	 SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
	 String time = df.format(new Date());
	 String name=request.getParameter("name");
	 String urls=request.getParameter("urls");
	 String sql="insert into files(id,name,urls,savetime,user) values('"+uid+"','"+name+"','"+urls+"','"+time+"','"+u.getName()+"') ";
	  connDbBean.executeUpdate(sql);
      out.print("<script>alert('添加成功!!');window.history.go(-2);</script>");
	
%>
   
