<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kq_select.aspx.cs" Inherits="Teacher_kq_select" %>

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
             margin-top:20px;
             margin-bottom:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="div1">考勤信息查询</div>
         
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="学号" DataSourceID="SqlDataSource1"  CssClass="layui-table">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="学号" HeaderText="学号" ReadOnly="True" SortExpression="学号" />
                    <asp:BoundField DataField="课程编号" HeaderText="课程编号" SortExpression="课程编号" />
                    <asp:BoundField DataField="教师编号" HeaderText="教师编号" SortExpression="教师编号" />
                    <asp:BoundField DataField="上课时间" HeaderText="上课时间" SortExpression="上课时间" />
                    <asp:BoundField DataField="考勤时间" HeaderText="考勤时间" SortExpression="考勤时间" />
                    <asp:BoundField DataField="迟到" HeaderText="迟到" SortExpression="迟到" />
                    <asp:BoundField DataField="旷课" HeaderText="旷课" SortExpression="旷课" />
                    <asp:BoundField DataField="请假" HeaderText="请假" SortExpression="请假" />
                    <asp:CommandField HeaderText="操作" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>" 
            SelectCommand="SELECT [学号], [课程编号], [教师编号], [上课时间], [考勤时间], [ID], [迟到], [旷课], [请假] FROM [考勤表]"
             DeleteCommand="DELETE FROM [考勤表] WHERE [ID] = @original_ID AND [学号] = @original_xh AND [课程编号] = @original_kcbh AND [教师编号] = @original_jsbh AND [上课时间] = @original_sksj AND [考勤时间] = @original_kqsj AND [迟到] = @original_late AND [旷课] = @original_absent AND [请假] = @original_qj"
            ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
              <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="String" />
                    <asp:Parameter Name="original_xh" Type="String" />
                    <asp:Parameter Name="original_kcbh" Type="String" />
                    <asp:Parameter Name="original_jsbh" Type="String" />
                    <asp:Parameter Name="original_sksj" Type="String" />
                    <asp:Parameter Name="original_kqsj" Type="String" />
                    <asp:Parameter Name="original_late" Type="String" />
                    <asp:Parameter Name="original_absent" Type="String" />
                    <asp:Parameter Name="original_qj" Type="String" />
                </DeleteParameters>
            

        </asp:SqlDataSource>
    </form>
</body>
</html>
