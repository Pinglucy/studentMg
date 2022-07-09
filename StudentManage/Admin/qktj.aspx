<%@ Page Language="C#" AutoEventWireup="true" CodeFile="qktj.aspx.cs" Inherits="Admin_qktj" %>

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
        <div class="div1">缺课旷课统计</div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1"  CssClass="layui-table" >
                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField HeaderText="学号" DataField="学号" SortExpression="学号" />
                <asp:BoundField HeaderText="课程编号" DataField="课程编号" SortExpression="课程编号" />
                <asp:BoundField HeaderText="教师编号" DataField="教师编号" SortExpression="教师编号" />
                <asp:BoundField HeaderText="上课时间" DataField="上课时间" SortExpression="上课时间" />
                <asp:BoundField HeaderText="考勤时间" DataField="考勤时间" SortExpression="考勤时间" />
                <asp:BoundField HeaderText="迟到" DataField="迟到" SortExpression="迟到" />
                <asp:BoundField HeaderText="旷课" DataField="旷课" SortExpression="旷课" />
                <asp:BoundField DataField="请假" HeaderText="请假" SortExpression="请假" />
                </Columns>
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:学生信息管理系统ConnectionString %>" 
            SelectCommand="SELECT * FROM [考勤表]"
            DeleteCommand="DELETE FROM [考勤表] WHERE [学号] = @original_xh AND [课程编号] = @original_kcbh AND [教师编号] = @original_jsbh AND [上课时间] = @original_sksj AND [考勤时间] = @original_kqsj AND [迟到] = @original_late AND [旷课] = @original_kk AND [请假] = @original_qj "
            UpdateCommand="UPDATE [考勤表] SET [学号] = @学号, [课程编号] = @课程编号, [教师编号] = @教师编号, [上课时间] = @上课时间, [考勤时间] = @考勤时间, [迟到] = @迟到, [旷课] = @旷课, [请假] = @请假 WHERE [学号] = @original_xh AND [课程编号] = @original_kcbh AND [教师编号] = @original_jsbh AND [上课时间] = @original_sksj AND [考勤时间] = @original_kqsj AND [迟到] = @original_late AND [旷课] = @original_kk AND [请假] = @original_qj " 
             ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        </asp:SqlDataSource>

    </form>
</body>
</html>
