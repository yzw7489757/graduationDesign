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
       <script type="text/javascript" src="<%=path %>/portals/js/popup.js"></script>
    
     <script type="text/javascript">
	    function up(tt)
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:300,height:50});
            pop.setContent("contentUrl","<%=path%>/admin/upload.jsp?Result="+tt);
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
	</script> 
    <script type="text/javascript">
		function checks(){
			   var name = document.getElementById("name").value; 
			   if(""==name){
					alert("请输入名称！");
					 return false;
				  }	
		    }
	</script>
</head>
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
                        <form role="form" class="form-horizontal m-t" action="<%=path %>/admin/files_add_post.jsp" method="post" onsubmit="return checks();" >
                            <div class="form-group draggable">
                                <label class="col-sm-3 control-label">标题<b style="color: red;"> *</b>：</label>
                                <div class="col-sm-4">
                                    <input type="text" name="name"  id="name" class="form-control" placeholder="请输入标题">
                                </div>
                            </div>
                             <div class="form-group draggable">
                                <label class="col-sm-3 control-label">文件<b style="color: red;"> *</b>：</label>
                                <div class="col-sm-4">
                                    <input type="text" name="urls" id="urls" value="" class="form-control" placeholder="请输入文件">
                                    &nbsp;<input type='button' value='上传' onClick="up('urls')"/>
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
