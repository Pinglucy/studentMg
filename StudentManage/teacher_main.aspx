<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teacher_main.aspx.cs" Inherits="teacher_main" %>

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
    <div class="layui-logo">学生信息管理系统(辅导员)</div>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">学生信息</a>
          <dl class="layui-nav-child">
            <dd><a href="Teacher/stuInfo_select.aspx"  target="MainWin">学生信息查询、修改</a></dd>
              <dd><a href="Teacher/familyInfo_select.aspx"  target="MainWin">家庭信息查询</a></dd>
              <dd><a href="Teacher/kq_select.aspx"  target="MainWin">考勤信息查询</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="Teacher/perInfo_select.aspx">个人信息查询</a>
        </li>
          <li class="layui-nav-item">
          <a href="javascript:;">密码修改</a>
          <dl class="layui-nav-child">
            <dd><a href="Teacher/permima_alter.aspx"  target="MainWin" >个人密码修改</a></dd>
            <dd><a href="Teacher/stumima_alter.aspx"  target="MainWin" >学生密码修改</a></dd>
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

