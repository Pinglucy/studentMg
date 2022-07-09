<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personal_select.aspx.cs" Inherits="Student_personal_select" %>

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
        <div class="layui-input-block" style="width:200px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="layui-input" placeholder="请输入您的学号"></asp:TextBox>
        </div>
     </div>
    <div class="layui-form-item">
        <asp:Button ID="Button_select" runat="server" Text="个人信息查询" CssClass="layui-btn" OnClick="Button_select_Click"/>
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="xh" DataSourceID="SqlDataSource1"  CssClass="layui-table">
                <Columns>
                    <asp:BoundField DataField="xh" HeaderText="学号" ReadOnly="True" SortExpression="xh" />
                    <asp:BoundField DataField="xm" HeaderText="姓名" SortExpression="xm" />
                    <asp:BoundField DataField="xb" HeaderText="性别" SortExpression="xb" />
                    <asp:BoundField DataField="sr" HeaderText="生日" SortExpression="sr" />
                    <asp:BoundField DataField="grade" HeaderText="年级" SortExpression="grade" />
                    <asp:BoundField DataField="mz" HeaderText="民族" SortExpression="mz" />
                    <asp:BoundField DataField="jg" HeaderText="籍贯" SortExpression="jg" />
                    <asp:BoundField DataField="zy" HeaderText="专业" SortExpression="zy" />
                    <asp:BoundField DataField="phone" HeaderText="电话号码" SortExpression="phone" />
                    <asp:CommandField HeaderText="操作" ShowDeleteButton="false" ShowEditButton="True" />
                </Columns>
            </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>"
             DeleteCommand="DELETE FROM [student] WHERE [xh] = @original_xh AND [xm] = @original_xm AND [xb] = @original_xb AND [sr] = @original_sr AND [grade] = @original_grade AND [mz] = @original_mz AND [jg] = @original_jg AND [zy] = @original_zy AND [phone] = @original_phone"
              InsertCommand="INSERT INTO [student] ([xh], [xm], [xb], [sr], [grade], [mz], [jg], [zy], [phone]) VALUES (@xh, @xm, @xb, @sr, @grade, @mz, @jg, @zy, @phone)"  
                UpdateCommand="UPDATE [student] SET [xm] = xm, [xb] = xb, [sr] = @sr, [grade] = @grade, [mz] = @mz, [jg] = @jg, [zy] = @zy, [phone] = @phone WHERE [xh] = @original_xh AND [xm] = @original_xm AND [xb] = @original_xb AND [sr] = @original_sr AND [grade] = @original_grade AND [mz] = @original_mz AND [jg] = @original_jg AND [zy] = @original_zy AND [phone] = @original_phone" 
                 ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
             <DeleteParameters>
                    <asp:Parameter Name="original_xh" Type="String" />
                    <asp:Parameter Name="original_xm" Type="String" />
                    <asp:Parameter Name="original_xb" Type="String" />
                    <asp:Parameter Name="original_sr" Type="String" />
                    <asp:Parameter Name="original_grade" Type="String" />
                    <asp:Parameter Name="original_mz" Type="String" />
                    <asp:Parameter Name="original_jg" Type="String" />
                    <asp:Parameter Name="original_zy" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="xh" Type="String" />
                    <asp:Parameter Name="xm" Type="String" />
                    <asp:Parameter Name="xb" Type="String" />
                    <asp:Parameter Name="sr" Type="String" />
                    <asp:Parameter Name="grade" Type="String" />
                    <asp:Parameter Name="mz" Type="String" />
                    <asp:Parameter Name="jg" Type="String" />
                    <asp:Parameter Name="zy" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="xh" Type="String" />
                    <asp:Parameter Name="xm" Type="String" />
                    <asp:Parameter Name="xb" Type="String" />
                    <asp:Parameter Name="sr" Type="String" />
                    <asp:Parameter Name="grade" Type="String" />
                    <asp:Parameter Name="mz" Type="String" />
                    <asp:Parameter Name="jg" Type="String" />
                    <asp:Parameter Name="zy" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="original_xh" Type="String" />
                    <asp:Parameter Name="original_xm" Type="String" />
                    <asp:Parameter Name="original_xb" Type="String" />
                    <asp:Parameter Name="original_sr" Type="String" />
                    <asp:Parameter Name="original_grade" Type="String" />
                    <asp:Parameter Name="original_mz" Type="String" />
                    <asp:Parameter Name="original_jg" Type="String" />
                    <asp:Parameter Name="original_zy" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                </UpdateParameters>

         </asp:SqlDataSource>
    </form>
</body>
</html>
