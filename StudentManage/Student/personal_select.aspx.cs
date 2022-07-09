using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_personal_select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_select_Click(object sender, EventArgs e)
    {
        string xh = TextBox1.Text.Trim();
        string sql = "SELECT [xh], [xm], [xb], [sr], [grade], [mz], [jg] , [zy], [phone]FROM [student] where [xh]='" + xh + "'";
        SqlDataSource1.SelectCommand = sql;

        GridView1.DataSourceID = "SqlDataSource1";

        GridView1.DataBind();
    }
}