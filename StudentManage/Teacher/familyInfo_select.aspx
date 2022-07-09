<%@ Page Language="C#" AutoEventWireup="true" CodeFile="familyInfo_select.aspx.cs" Inherits="Teacher_familyInfo_select" %>

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
        }
        .div1 {
            text-align:center;
            font-size:26px;
            font-weight:bold;
             margin-top:20px;
        }
    </style>
</head>
<body>
    <div class="div1">家庭信息查询</div>
    <form id="form1" runat="server">
        <div class="layui-form-item">
        <label class="layui-form-label">学号</label>
        <div class="layui-input-block" style="width:100px;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="layui-input" ></asp:TextBox>
        </div>
     </div>
     <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block" style="width:100px;">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="layui-input" ></asp:TextBox>
        </div>
     </div>
     <div class="layui-form-item">
        <asp:Button ID="Button_select" runat="server" Text="查询" CssClass="layui-btn" OnClick="Button_select_Click"/>
    </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="学号" DataSourceID="SqlDataSource1"  CssClass="layui-table" >
                <Columns>
                    <asp:BoundField DataField="学号" HeaderText="学号" />
                    <asp:BoundField DataField="姓名" HeaderText="姓名" />
                    <asp:BoundField DataField="父亲姓名" HeaderText="父亲姓名" />
                    <asp:BoundField DataField="母亲姓名" HeaderText="母亲姓名" />
                    <asp:BoundField DataField="父亲电话" HeaderText="父亲电话" />
                    <asp:BoundField DataField="母亲电话" HeaderText="母亲电话" />
                    <asp:BoundField DataField="家庭成员总数" HeaderText="家庭成员总数" />
                    <asp:BoundField DataField="家庭地址" HeaderText="家庭地址" />
                    <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </div>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>" 
             SelectCommand="SELECT [学号], [姓名], [父亲姓名], [母亲姓名], [父亲电话], [母亲电话], [家庭成员总数], [家庭地址] FROM [家庭信息表]"
             DeleteCommand="DELETE FROM [家庭信息表] WHERE [学号] = @original_xh AND [姓名] = @original_xm AND [父亲姓名] = @original_fqxm AND [母亲姓名] = @original_mqxm AND [父亲电话] = @original_fqphone AND [母亲电话] = @original_mqphone AND [家庭成员总数] = @original_all AND [家庭地址] = @original_address "
              InsertCommand="INSERT INTO [家庭信息表] ([学号], [姓名], [父亲姓名], [母亲姓名], [父亲电话], [母亲电话], [家庭成员总数], [家庭地址]) VALUES (@学号, @姓名, @父亲姓名, @母亲姓名, @父亲电话, @母亲电话, @家庭成员总数, @家庭地址)"
             UpdateCommand="UPDATE [家庭信息表] SET [学号] = @学号, [姓名] = @姓名, [父亲姓名] = @父亲姓名, [母亲姓名] = @母亲姓名, [父亲电话] = @父亲电话, [母亲电话] = @母亲电话, [家庭成员总数] = @家庭成员总数, [家庭地址] = @家庭地址 WHERE [学号] = @original_xh AND [姓名] = @original_xm AND [父亲姓名] = @original_fqxm AND [母亲姓名] = @original_mqxm AND [父亲电话] = @original_fqphone AND [母亲电话] = @original_mqphone AND [家庭成员总数] = @original_all AND [家庭地址] = @original_address" 
             ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
             <DeleteParameters>
                    <asp:Parameter Name="original_xh" Type="String" />
                    <asp:Parameter Name="original_xm" Type="String" />
                    <asp:Parameter Name="original_fqxm" Type="String" />
                    <asp:Parameter Name="original_mqxm" Type="String" />
                    <asp:Parameter Name="original_fqphone" Type="String" />
                    <asp:Parameter Name="original_mqphone" Type="String" />
                    <asp:Parameter Name="original_all" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="父亲姓名" Type="String" />
                    <asp:Parameter Name="母亲姓名" Type="String" />
                    <asp:Parameter Name="父亲电话" Type="String" />
                    <asp:Parameter Name="母亲电话" Type="String" />
                    <asp:Parameter Name="家庭成员总数" Type="String" />
                    <asp:Parameter Name="家庭地址" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="学号" Type="String" />
                    <asp:Parameter Name="姓名" Type="String" />
                    <asp:Parameter Name="父亲姓名" Type="String" />
                    <asp:Parameter Name="母亲姓名" Type="String" />
                    <asp:Parameter Name="父亲电话" Type="String" />
                    <asp:Parameter Name="母亲电话" Type="String" />
                    <asp:Parameter Name="家庭成员总数" Type="String" />
                    <asp:Parameter Name="家庭地址" Type="String" />
                    <asp:Parameter Name="original_xh" Type="String" />
                    <asp:Parameter Name="original_xm" Type="String" />
                    <asp:Parameter Name="original_fqxm" Type="String" />
                    <asp:Parameter Name="original_mqxm" Type="String" />
                    <asp:Parameter Name="original_fqphone" Type="String" />
                    <asp:Parameter Name="original_mqphone" Type="String" />
                    <asp:Parameter Name="original_all" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                </UpdateParameters>
         </asp:SqlDataSource>
    </form>

</body>
</html>
