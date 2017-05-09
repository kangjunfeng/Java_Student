<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String path =request.getContextPath();
 	String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/"+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>"> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/index.css"/>
	<title>index</title>
</head>
<body>
	<div class="header">
 	   <label class="headerLabel">学生管理系统</label>
	</div>
	
	<div class="content">
		<!-- left -->
		<div class="contentLeft">
			<div class="contentLeftHeader">功能菜单</div>
			<div class="contentNav">用户管理</div>
			<div class="contentSecNav">学生列表</div>
			<div class="contentSecNav">添加学生</div>
		</div>
		
		<!-- right -->
		<div class="contentRight">
			<div class="contentRightHeader">您所在的位置->用户管理->学生列表、。。。。。。。。。</div>
			<hr>
			<!--<div class="contentRightBody"><iframe>1</iframe></div>-->
		</div>
	</div>

	<div class="footer">
   	 	<label>Copyright@2017 kk 版权所有</label>
	</div> 

	
	<%-- 
  	<a href="${pageContext.request.contextPath}/StudentServlet?select=all">显示所有信息</a>
  	<br/>
  	<a href="${pageContext.request.contextPath}/StudentServlet?select=add">添加学生信息</a>  --%>
</body>
</html>