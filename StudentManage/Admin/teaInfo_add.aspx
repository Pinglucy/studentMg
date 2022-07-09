<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teaInfo_add.aspx.cs" Inherits="Admin_teaInfo_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="layui-form" style="margin-left:50px; margin-top:40px;">
         <div class="layui-form-item">
        <label class="layui-form-label">编号</label>
        <div class="layui-input-block" style="width:200px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="layui-input" placeholder="请输入辅导员编号"></asp:TextBox>
        </div>
     </div>
         <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="layui-input" placeholder="请输入辅导员姓名"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
      <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <asp:RadioButton ID="RadioButton_male" runat="server"  Checked="True" GroupName="gender" Text="男"  />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="gender" Text="女" />
        </div>
    </div>

    <div class="layui-form-item">
      <label class="layui-form-label">工龄</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="layui-input" placeholder="请输入辅导员工龄"></asp:TextBox>
        </div>
    </div>
     <div class="layui-form-item">
        <label class="layui-form-label">手机号</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="layui-input" placeholder="请输入辅导员手机号"></asp:TextBox>
        </div>
     </div>

      <div class="layui-form-item">
        <label class="layui-form-label">民族</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="layui-input" placeholder="请输入所属民族"></asp:TextBox>
        </div>
     </div>
     <div class="layui-form-item">
        <label class="layui-form-label">政治面貌</label>
        <div class="layui-input-block" style="width:300px;">
            <asp:TextBox ID="TextBox7" runat="server" CssClass="layui-input" placeholder="请输入辅导员政治面貌"></asp:TextBox>
        </div>
     </div>
        <div class="layui-form-item">
    <div class="layui-input-block">
        <asp:Button ID="Button_submint" runat="server" Text="提交" CssClass="layui-btn" OnClick="Button_submint_Click"/>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
    </form>
</body>
<script src="../layui/layui.js"></script>
    <script>
//Demo
layui.use('form', function(){
  var form = layui.form;
  
  //监听提交
  form.on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
    </script>
</html>

