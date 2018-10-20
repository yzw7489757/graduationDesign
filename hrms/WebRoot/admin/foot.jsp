<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path_foot = request.getContextPath();
String basePath_foot = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path_foot+"/";
%>
<div class="footer">
                <div class="pull-right">&copy; <a href="#" >${appName }</a>
                </div>
</div>
