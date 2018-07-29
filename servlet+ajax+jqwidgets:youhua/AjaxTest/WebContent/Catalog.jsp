<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 导入包 -->
<link rel="stylesheet" href="resourse/jqwidgets/styles/jqx.base.css" type="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1 minimum-scale=1" />	
<script type="text/javascript" src="resourse/scripts/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resourse/scripts/demos.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxscrollbar.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxpanel.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxdragdrop.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxtree.js"></script>

<script type="text/javascript" src="resourse/jqwidgets/jqxlistbox.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxdropdownlist.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxcombobox.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxinput.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxwindow.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxtoolbar.js"></script>
<script type="text/javascript" src="resourse/jqwidgets/jqxdropdownbutton.js"></script>

<!-- js,css -->
<link type="text/css" rel="stylesheet" href="css/my.css" /> 
<script type="text/javascript" src="js/my.js"></script> 

<title>学生信息查询系统</title>
</head>

<body class='default'>
    <div id='jqxWidget'>
        <div style='float: left;'>
            <div id='treeA' style='visibility: hidden; float: left; margin-left: 0px;'>
                <ul>
                    <li>年级/班级</li>
                    <li id="1">2013级
                        <ul>
                            <li id="11">1班</li>
                            <li id="12">2班</li>
                            <li id="13">3班</li>
                        </ul>
                    </li>
                    <li id="2">2014级
                        <ul>
                            <li id="21">1班</li>
                            <li id="22">2班</li>
                            <li id="23">3班</li>
                        </ul>
                    </li>
                    <li id="3">2015级
                        <ul>
                            <li id="31">1班</li>
                            <li id="32">2班</li>
                            <li id="33">3班</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <div style="padding:5px 25px; border:1px solid D0D0D0; background:#F8F8F8; display:inline-block;">
        <!-- sex -->
        <div style="float:left;margin-left: 2px;display: inline-block;">性别：</div>
        <div style="float:left;margin-left: 2px;display: inline-block;" id='jqxComboBox'></div>
        
        <!-- id -->  
        <div style="float:left;margin-left: 15px;display: inline-block;">学号：</div>
        
        <div style="float:left;margin-left: 2px;display: inline-block;">
        <input type="text" id="userID" class="text-input"/>
        </div>
        
        <!-- name -->  
        <div style="float:left;margin-left: 15px;display: inline-block;">姓名：</div>
        
        <div style="float:left;margin-left: 2px;display: inline-block;">
        <input type="text" id="userName" class="text-input"/>
        </div>
        
        <!-- search -->
        <div style="float:left;margin-left: 15px;display: inline-block;">
        <input type="button" class="button" value="搜索" id="sendButton"/>
        </div>
    </div>
    <div style="padding:30px 120px;" id="show"></div> 
</body> 
</html>