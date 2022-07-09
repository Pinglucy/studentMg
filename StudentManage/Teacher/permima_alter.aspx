<%@ Page Language="C#" AutoEventWireup="true" CodeFile="permima_alter.aspx.cs" Inherits="Teacher_permima_alter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="../layui/css/layui.css" rel="stylesheet" />
    <style>
        i {
            color:red;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server" class="layui-form" style="margin-left:50px; margin-top:40px;">
         <div class="layui-form-item">
        <label class="layui-form-label">用户名<i></i></label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="layui-input" placeholder="请输入用户名"></asp:TextBox>
        </div>
     </div>
    <div class="layui-form-item">
        <label class="layui-form-label">原密码<i>*</i></label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="layui-input" placeholder="请输入原密码" TextMode="Password"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
        <label class="layui-form-label">新密码<i>*</i></label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="layui-input" placeholder="请输入新密码" TextMode="Password"></asp:TextBox>
        </div>
     </div>

    <div class="layui-form-item">
      <label class="layui-form-label">确认密码<i>*</i></label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="layui-input" placeholder="请确认密码" TextMode="Password"></asp:TextBox>
        </div>
    </div>
     
    <div class="layui-input-block">
        <asp:Button ID="Button_alter" runat="server" Text="修改" CssClass="layui-btn" OnClick="Button_submint_Click" />
    </div>
    </form>
</body>
</html>
