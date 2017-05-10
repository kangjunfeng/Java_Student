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
	<script type="text/javascript"  src="<%=path %>/js/index.js"></script>
	<title>index</title>
</head>
<body>
	<div class="header">
 	   <label class="headerLabel">学生管理系统</label>
	</div>
	
	<!--<div class="content">-->
		<!-- left -->
		<div class="contentLeft">
			<div class="contentLeftHeader"><p class="leftNavTitle">功能菜单</p></div>
			<hr>
			<div class="contentNav" onclick="showOrHiddenNav('s1')">
				<p class="leftNavTitle">用户管理</p>	 	
			</div>
			<div id ="s1"  class="contentSecNav">
				<ul>
					<li class="contentSecNav"><a class="leftNavTitle" href="${pageContext.request.contextPath}/StudentServlet?select=all" target="iframe">学生列表</a></li>
					<li class="contentSecNav"><a class="leftNavTitle">添加学生</a></li>
				</ul>
			</div>
            <div class="contentNav" onclick="showOrHiddenNav('s1')">
                <p class="leftNavTitle">用户管理</p>
            </div>
            <div class="contentNav" onclick="showOrHiddenNav('s1')">
                <p class="leftNavTitle">用户管理</p>
            </div>
            <div class="contentNav" onclick="showOrHiddenNav('s1')">
                <p class="leftNavTitle">用户管理</p>
            </div>
            <div class="contentNav" onclick="showOrHiddenNav('s1')">
                <p class="leftNavTitle">用户管理</p>
            </div>
            <div class="contentNav" onclick="showOrHiddenNav('s1')">
				<p class="leftNavTitle">用户管理</p>	 	
			</div>
			<div class="contentNav" onclick="showOrHiddenNav('s1')">
				<p class="leftNavTitle">用户管理</p>	 		 	
			</div>
			
		</div>
		
		<!-- right -->
		<div class="contentRight">
			<div class="contentRightHeader"><p class="rightNavTitle">您所在的位置->用户管理->学生列表</p></div>
				<hr>
            <div><iframe class="contentIFrame" name="iframe">123</iframe></div>
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