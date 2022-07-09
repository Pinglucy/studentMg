<%@ Page Language="C#" AutoEventWireup="true" CodeFile="teaInfo_delete.aspx.cs" Inherits="Admin_teaInfo_delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <link href="../layui/css/layui.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="num" DataSourceID="SqlDataSource1"  CssClass="layui-table">
                <Columns>
                    <asp:BoundField DataField="num" HeaderText="编号" ReadOnly="True" SortExpression="num" />
                    <asp:BoundField DataField="xm" HeaderText="姓名" SortExpression="xm" />
                    <asp:BoundField DataField="xb" HeaderText="性别" SortExpression="xb" />
                    <asp:BoundField DataField="gn" HeaderText="工龄" SortExpression="gn" />
                    <asp:BoundField DataField="phone" HeaderText="电话号码" SortExpression="phone" />
                    <asp:BoundField DataField="mz" HeaderText="民族" SortExpression="mz" />
                    <asp:BoundField DataField="zzmm" HeaderText="政治面貌" SortExpression="zzmm" />
                    <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>" 
            SelectCommand="SELECT [num], [xm], [xb], [gn], [phone], [mz], [zzmm] FROM [Teacher]"
             DeleteCommand="DELETE FROM [Teacher] WHERE [num] = @original_num AND [xm] = @original_xm AND [xb] = @original_xb AND [gn] = @original_gn AND [phone] = @original_phone AND [mz] = @original_mz AND [zzmm] = @original_zzmm"
             UpdateCommand="UPDATE [Teacher] SET [num] = num, [xm] = @xm,[xb] = xb, [gn] = @gn, [phone] = @phone,[mz] = @mz, [zzmm] = @zzmm WHERE [num] = @original_num AND [xm] = @original_xm AND [xb] = @original_xb AND [gn] = @original_gn AND [phone] = @original_phone AND [mz] = @original_mz AND [zzmm] = @original_zzmm"
             ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                    <asp:Parameter Name="original_num" Type="String" />
                    <asp:Parameter Name="original_xm" Type="String" />
                    <asp:Parameter Name="original_xb" Type="String" />
                    <asp:Parameter Name="original_gn" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_mz" Type="String" />
                    <asp:Parameter Name="original_zzmm" Type="String" />
                </DeleteParameters>
             <UpdateParameters>
                    <asp:Parameter Name="num" Type="String" />
                    <asp:Parameter Name="xm" Type="String" />
                    <asp:Parameter Name="xb" Type="String" />
                    <asp:Parameter Name="gn" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="mz" Type="String" />
                    <asp:Parameter Name="zzmm" Type="String" />
                    <asp:Parameter Name="original_num" Type="String" />
                    <asp:Parameter Name="original_xm" Type="String" />
                    <asp:Parameter Name="original_xb" Type="String" />
                    <asp:Parameter Name="original_gn" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_mz" Type="String" />
                    <asp:Parameter Name="original_zzmm" Type="String" />
                </UpdateParameters>

        </asp:SqlDataSource>
    </form>
</body>
</html>
