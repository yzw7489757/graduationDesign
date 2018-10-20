<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path_left = request.getContextPath();
String basePath_left = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path_left+"/";
%>
<nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img alt="image" class="img-circle" src="<%=path_left%>/portals/img/profile_small.jpg" /></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">${user.name }，您好</strong></span>
                                
                                </span>
                            </a>
                           
                        </div>
                        <div class="logo-element">菜单
                        </div>
                    </li>
                    
                    <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">用户信息</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=path_left %>/admin/getAllUser.do">用户信息</a>
                            </li>
                        </ul>
                    </li>
                    
                     <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">部门信息</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=path_left %>/admin/getAllDept.do">部门信息</a>
                            </li>
                        </ul>
                    </li>
                    
                     <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">职位信息</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=path_left %>/admin/getAllJob.do">职位信息</a>
                            </li>
                        </ul>
                    </li>
                   
                      <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">员工信息</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=path_left %>/admin/getAllEmp.do">员工信息</a>
                            </li>
                        </ul>
                    </li>
                   
                    
                     <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">公告信息</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=path_left %>/admin/getAllNotice.do">公告信息</a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    
                     <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">文件下载</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=path_left %>/admin/getAllFiles.do">文件下载</a>
                            </li>
                        </ul>
                    </li>
                    
                    <li>
                        <a href="#"><i class="fa fa-cutlery"></i> <span class="nav-label">修改密码 </span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="<%=path_left %>/admin/pwd.jsp">修改密码</a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
        </nav>
