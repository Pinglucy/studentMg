<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student_main.aspx.cs" Inherits="student_main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="layui/css/layui.css" rel="stylesheet" />
    <title>学生信息管理后台</title>
    <style>
        .div1 {
            position:absolute;
            width:200px;
            height:50px;
            margin-top:100px;
            margin-left:240px;
        }
    </style>
</head>
<body class="layui-layout-body">

    <div class="div1">欢迎<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>的到来！</div>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">学生信息管理系统(学生)</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="Student/personal_select.aspx">个人信息查询</a>
         
        </li>
        <li class="layui-nav-item">
          <a href="Student/prize_select.aspx">获奖信息查询</a>
        </li>
          <li class="layui-nav-item">
          <a href="javascript:;">家庭信息</a>
          <dl class="layui-nav-child">
            <dd><a href="Student/familyInfo_select.aspx"  target="MainWin" >家庭信息查询 更改</a></dd>
<%--            <dd><a href="Student/familyInfo_alter.aspx"  target="MainWin" >家庭信息更改</a></dd>--%>
          </dl>
        </li>
      </ul>
    </div>
  </div>
  
    <div class="layui-body">
    <!-- 内容主体区域 -->
       <iframe id="frame1" src="about.aspx" name="MainWin" width="100%" height="100%" scrolling="yes" marginwidth=0 marginheight=0 frameborder=0 vspace=0 hspace=0 >
	 </iframe>
  </div>
  
</div>
    <script src="layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>
</body>
</html>

