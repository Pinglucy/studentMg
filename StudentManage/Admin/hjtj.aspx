<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hjtj.aspx.cs" Inherits="Admin_hjtj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="../layui/css/layui.css" rel="stylesheet" />
    <style>
       .div1 {
            text-align:center;
            font-size:26px;
            font-weight:bold;
            padding-top:20px;
            color:rgb(30,161,153);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">获奖情况统计</div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="获奖编号" DataSourceID="SqlDataSource1"  CssClass="layui-table" >
                <Columns>
                    <asp:BoundField DataField="获奖编号" HeaderText="获奖编号" ReadOnly="True" SortExpression="获奖编号" />
                    <asp:BoundField DataField="学号" HeaderText="学号" SortExpression="学号" />
                    <asp:BoundField DataField="奖励名称" HeaderText="奖励名称" SortExpression="奖励名称" />
                    <asp:BoundField DataField="奖励等级" HeaderText="奖励等级" SortExpression="奖励等级" />
                    <asp:BoundField DataField="指导教师编号" HeaderText="指导教师编号" SortExpression="指导教师编号" />
                    <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />

                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>" SelectCommand="SELECT * FROM [获奖情况表]"></asp:SqlDataSource>
    </form>
</body>
</html>
