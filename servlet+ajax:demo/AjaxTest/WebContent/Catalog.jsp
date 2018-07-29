<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="jquery-3.3.1.min.js"></script> 
<link type="text/css" rel="stylesheet" href="css/my.css" /> 
<script type="text/javascript" src="js/my.js"></script> 

<title>学生信息查询系统</title>
</head>
<h2>该系统支持以下操作：</h2>
<body>
<form action="">
<table border="0">

    <tr><td>查看所有学生信息:<td><input type="button" class="button" value="SeeAllStudents"/></td></tr>  
    
    <tr><td>根据班级搜索:</td><td><input type="text" name="aclass"/></td></tr>
    <tr><td></td><td><input type="button" class="button" value="SearchAboutClass"/></td></tr>
    
    <tr><td>根据年级搜索:</td><td><input type="text" name="grade"/></td></tr>
    <tr><td></td><td><input type="button" class="button" value="SearchAboutGrade"/></td></tr>
    
    <tr><td>根据学号搜索:</td><td><input type="text" name="sid"/></td></tr>
    <tr><td></td><td><input type="button" class="button" value="SearchAboutSID"/></td></tr>
    
    <tr><td>根据姓名搜索:</td><td><input type="text" name="name"/></td></tr>
    <tr><td></td><td><input type="button" class="button" value="SearchAboutName"/></td></tr>
</table>
</form>
<hr /> 
查询结果为：
<div id="show"></div> 
</body>   
</html>