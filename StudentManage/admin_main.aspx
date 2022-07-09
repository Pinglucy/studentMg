<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="layui/css/layui.css" rel="stylesheet" />
    <title>学生信息管理后台</title>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">学生信息管理系统(管理员)</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">学生信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="Admin/stuInfo_add.aspx"  target="MainWin">录入学生信息</a></dd>
            <dd><a href="Admin/stuInfo_select.aspx"  target="MainWin">查询修改删除学生信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">辅导员信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="Admin/teaInfo_add.aspx"  target="MainWin">录入辅导员信息</a></dd>
            <dd><a href="Admin/teaInfo_delete.aspx"  target="MainWin">删除辅导员信息</a></dd>
          </dl>
        </li>
          <li class="layui-nav-item">
          <a href="javascript:;">统计信息管理</a>
          <dl class="layui-nav-child">
            <dd><a href="Admin/hjtj.aspx"  target="MainWin" >获奖情况统计</a></dd>
            <dd><a href="Admin/qktj.aspx"  target="MainWin" >缺课旷课统计</a></dd>
          </dl>
        </li>
          <li class="layui-nav-item layui-this"><a href="about.aspx" target="MainWin">关于</a></li>
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
