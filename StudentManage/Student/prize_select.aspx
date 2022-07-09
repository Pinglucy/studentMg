<%@ Page Language="C#" AutoEventWireup="true" CodeFile="prize_select.aspx.cs" Inherits="Student_prize_select" %>

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
         .div1 {
            text-align:center;
            font-size:26px;
            font-weight:bold;
           padding-top:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">个人获奖信息查询</div>
        <div class="layui-form-item">
        <div class="layui-input-block" style="width:200px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="layui-input" placeholder="请输入您的学号"></asp:TextBox>
        </div>
     </div>
    <div class="layui-form-item">
        <asp:Button ID="Button_select" runat="server" Text="获奖信息查询" CssClass="layui-btn" OnClick="Button_select_Click"/>
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="学号" DataSourceID="SqlDataSource1"  CssClass="layui-table" >
                <Columns>
                    <asp:BoundField DataField="获奖编号" HeaderText="获奖编号" />
                    <asp:BoundField DataField="学号" HeaderText="学号" />
                    <asp:BoundField DataField="奖励名称" HeaderText="奖励名称" />
                    <asp:BoundField DataField="奖励等级" HeaderText="奖励等级" />
                    <asp:BoundField DataField="指导教师编号" HeaderText="指导教师编号" />
                    <asp:BoundField DataField="备注" HeaderText="备注" />

                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>"
            ></asp:SqlDataSource>
    </form>
</body>
</html>
