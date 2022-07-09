<%@ Page Language="C#" AutoEventWireup="true" CodeFile="perInfo_select.aspx.cs" Inherits="Teacher_perInfo_select" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="../layui/css/layui.css" rel="stylesheet" />
    <style>
        .layui-form-item {
            display:inline-block;
            padding-top:40px;
            padding-right:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="layui-form-item">
        <label class="layui-form-label">编号</label>
        <div class="layui-input-block" style="width:200px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="layui-input" placeholder="请输入您的编号"></asp:TextBox>
        </div>
     </div>
     <div class="layui-form-item">
        <asp:Button ID="Button_select" runat="server" Text="个人信息查询" CssClass="layui-btn" OnClick="Button_select_Click"/>
    </div>
       <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="num" DataSourceID="SqlDataSource1"  CssClass="layui-table">
                <Columns>
                    <asp:BoundField DataField="num" HeaderText="编号" ReadOnly="True" SortExpression="num" />
                    <asp:BoundField DataField="xm" HeaderText="姓名" SortExpression="xm" />
                    <asp:BoundField DataField="xb" HeaderText="性别" SortExpression="xb" />
                    <asp:BoundField DataField="gn" HeaderText="工龄" SortExpression="gn" />
                    <asp:BoundField DataField="phone" HeaderText="电话号码" SortExpression="phone" />
                    <asp:BoundField DataField="mz" HeaderText="民族" SortExpression="mz" />
                    <asp:BoundField DataField="zzmm" HeaderText="政治面貌" SortExpression="zzmm" />
                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>" 
             ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
           

        </asp:SqlDataSource>
    </form>
</body>
</html>
