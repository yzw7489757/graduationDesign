<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>   
<%
request.setCharacterEncoding("utf-8"); 
response.setCharacterEncoding("utf-8"); 
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
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
 	<!-- Data Tables -->
    <link href="<%=path%>/portals/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">    
    <script type="text/javascript">
		function checks(){
			   var name = document.getElementById("name").value; 
			  if(""==name){
					alert("请输入姓名！");
					 return false;
				  }	
		    }
	</script>
</head>

<%
						  String id=request.getParameter("id");
						  String sql="select * from emp where id='"+id+"' ";
						  	String sex="";
							 String name="";
							 String tel="";
							 String mail="";
							 String birth="";
							 String mark="";
							 String idcard="";
							 String job="";
							 String dept="";
							 
						  ResultSet RS_result=connDbBean.executeQuery(sql);
						  while(RS_result.next()){
							  name=RS_result.getString("name");
							  sex=RS_result.getString("sex");
							  tel=RS_result.getString("tel");
							  mail=RS_result.getString("mail");
							  birth=RS_result.getString("birth");
							  idcard=RS_result.getString("idcard");
							  job=RS_result.getString("job");
							  dept=RS_result.getString("dept");
							  
						  }
						  %>
<body style="text-align: center;">
   <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>位置： <small>信息列表-添加信息</small></h5>
                    </div>
                    <div class="ibox-content">
                        <div class="alert alert-info" align="center">基本信息
                        </div>
                        <form role="form" class="form-horizontal m-t" action="<%=path %>/admin/emp_updt_post.jsp?id=<%=id %>" method="post" onsubmit="return checks();" >
                             <div class="form-group draggable">
                                <label class="col-sm-3 control-label">姓名<b style="color: red;"> *</b>：</label>
                                <div class="col-sm-4">
                                    <input type="text" name="name"  value="<%=name %>"  id="name" class="form-control" placeholder="请输入姓名">
                                </div>
                            </div>
                             <div class="form-group draggable">
                               <label class="col-sm-3 control-label">性别：</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="sex">
                                    	<option><%=sex %></option>
                                        <option>男</option>
                                        <option>女</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 control-label">电话：</label>
                                <div class="col-sm-4">
                                    <input type="text" name="tel"  value="<%=tel %>" class="form-control" placeholder="请输入电话">
                                </div>
                            </div>
                             <div class="form-group draggable">
                                <label class="col-sm-3 control-label">邮件：</label>
                                <div class="col-sm-4">
                                    <input type="text" name="mail"  value="<%=mail %>"  class="form-control" placeholder="请输入邮件">
                                </div>
                            </div>
                             <div class="form-group draggable">
                                <label class="col-sm-3 control-label">生日：</label>
                                <div class="col-sm-4">
                                    <input type="text" name="birth"  value="<%=birth %>"  class="form-control" placeholder="请输入邮件">
                                </div>
                            </div>
                             <div class="form-group draggable">
                                <label class="col-sm-3 control-label">身份证：</label>
                                <div class="col-sm-4">
                                    <input type="text" name="idcard"   value="<%=idcard %>" class="form-control" placeholder="请输入邮件">
                                </div>
                            </div>
                            <div class="form-group draggable">
                               <label class="col-sm-3 control-label">职位：</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="job">
                                    	<option><%=job %></option>
                                        <%String sql_textures="select * from job  order by id desc";ResultSet RS_result_textures=connDbBean.executeQuery(sql_textures);while(RS_result_textures.next()){%><option value="<%= RS_result_textures.getString("name")%>" ><%=RS_result_textures.getString("name")%></option><%}%>
                                    </select>
                                </div>
                            </div>
                             <div class="form-group draggable">
                               <label class="col-sm-3 control-label">部门：</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="dept">
                                    	<option><%=dept %></option>
                                        <%String sql_dept="select * from dept  order by id desc";ResultSet RS_result_dept=connDbBean.executeQuery(sql_dept);while(RS_result_dept.next()){%><option value="<%= RS_result_dept.getString("name")%>" ><%=RS_result_dept.getString("name")%></option><%}connDbBean.closeConnect();%>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group draggable">
                                <label class="col-sm-3 control-label">备注：</label>
                                <div class="col-sm-4">
                               		<textarea class="form-control" name="mark"  rows="3"><%=mark %></textarea>
                                </div>
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group draggable">
                                <div class="col-sm-3 col-sm-offset-3">
                                    <button class="btn btn-primary" type="submit">保存内容</button>
                                    <button class="btn btn-white" type="button" onclick="javascript:window.history.back(-1);">返回</button>
                                </div>
                            </div>
                        </form>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            </div>
 <script src="<%=path %>/portals/js/jquery.min.js?v=2.1.4"></script>
    <script src="<%=path %>/portals/js/bootstrap.min.js?v=3.3.5"></script>
    <script src="<%=path %>/portals/js/plugins/jeditable/jquery.jeditable.js"></script>
    <script src="<%=path %>/portals/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="<%=path %>/portals/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="<%=path %>/portals/js/content.min.js?v=1.0.0"></script>
    <script>
        $(document).ready(function(){$(".dataTables-example").dataTable();var oTable=$("#editable").dataTable();oTable.$("td").editable("../example_ajax.php",{"callback":function(sValue,y){var aPos=oTable.fnGetPosition(this);oTable.fnUpdate(sValue,aPos[0],aPos[1])},"submitdata":function(value,settings){return{"row_id":this.parentNode.getAttribute("id"),"column":oTable.fnGetPosition(this)[2]}},"width":"90%","height":"100%"})});function fnClickAddRow(){$("#editable").dataTable().fnAddData(["Custom row","New row","New row","New row","New row"])};
    </script>
</html>
