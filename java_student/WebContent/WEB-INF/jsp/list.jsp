<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path =request.getContextPath();
	String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link type="text/css" rel="stylesheet"  href="<%=path %>/css/list.css"/>
    <title>List</title>
</head>
<body>
    <!--   <h1 style="text-align: center;">学生信息</h1> -->
    <!--  <hr> -->
    <table class="tablee">
        <tr>
            <td>
                <a href="${pageContext.request.contextPath }/add">添加</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="javascript:delmore()">删除</a>
            </td>
        </tr>
        <tr>
            <td>
                <table border="1" width="100%"> 
                    <tr style="text-align: left;">
                        <th><input type="checkbox">全选/全不选</th>
                        <th>姓名</th>
                        <th>性别</th>
                        <th>邮箱</th>
                        <th>电话</th>
                    </tr>
                    <c:choose>
                        <c:when test="${empty list}">
                            <tr>
                                <td colspan="10" align = "center">暂时没有数据</td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach items="${list}" var="c">
                                <tr style="text-align: left;">
                                    <td><input type="checkbox" name="ids" value="${c.id }"></td>
                                    <td>${c.name }</td>
                                    <td>${c.sex == "man" ? "男" : "女"}</td>
                                    <td>${c.email }</td>
                                    <td>${c.cellPhone }</td>
                                    <td><a href="${pageContext.request.contextPath}/update">更新</a></td>
                                    <td><a href="${pageContext.request.contextPath}/StudentServlet?select=delete&id=${c.id}">删除</a></td>
                                    </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>