<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>   
<%@page import="model.*"%> 
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
    <title>${appName }</title>


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
</head>
  <%
    String names = request.getParameter("names");
    %>
<body >
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>位置： <small>信息列表-信息列表</small></h5>
                    </div>
                    
					   <div class="col-md-12">
					   		<form action="<%=path %>/admin/getAllUser.do" method="post">
					     <div class="form-group">
					        <div class="col-sm-4">
					            <input type="text" name="name" class="form-control" placeholder="请输入查询内容">
					        </div>
					        <div class="col-sm-1" align="left">
					            <button class="btn btn-primary"  type="submit">查询</button>
					        </div>
					        <div class="col-sm-3" align="left">
					        </div>
					        <div class="col-sm-4" align="left">
					            <button onclick="javascript:window.location.href='<%=path%>/admin/user_add.jsp'" class="btn btn-primary"  type="button"  >新增</button>
													        
					        </div>
					      </div>
					      </form>
						</div>
                    
                    
                    
                    
                    <div class="ibox-content">

                        <table class="table table-striped table-bordered table-hover ">
                            <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>密码</th>
                                    <th>姓名</th>
                                    <th>电话</th>
                                    <th>类型</th>
                                    <th>操作</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%
								 	List list = (List)request.getAttribute("list");
                            		for(Object ob : list){
                            			User u = (User)ob;
								 %>
                                <tr class="gradeX">
                                    <td class="center"><%=u.getId() %></td>
                                    <td class="center"><%=u.getMima() %></td>
                                    <td class="center"><%=u.getName() %></td>
                                    <td class="center"><%=u.getTel() %></td>
                                    <td class="center"><%=u.getType() %></td>
                                    <td><a href="<%=path %>/admin/user_updt.jsp?id=<%=u.getId()%>">修改</a> <a href="<%=path %>/admin/del.jsp?id=<%=u.getId() %>&tablename=users" onClick="return confirm('真的要删除？')">删除</a></td>
                                </tr>
                                <%} %>
                        </table>
							一共<%=list.size() %>条数据，<a  onClick="javascript:window.print();">打印本页</a>
                    </div>
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
