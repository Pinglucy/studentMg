using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_perInfo_select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_select_Click(object sender, EventArgs e)
    {
        string num = TextBox1.Text.Trim();
        string sql = "SELECT [num], [xm], [xb], [gn], [phone],  [mz], [zzmm] FROM [Teacher] WHERE ( [num] = '" + num + "')";
        SqlDataSource1.SelectCommand = sql;

        GridView1.DataSourceID = "SqlDataSource1";

        GridView1.DataBind();
    }
}