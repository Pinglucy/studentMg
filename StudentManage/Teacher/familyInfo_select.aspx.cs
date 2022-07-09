using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_familyInfo_select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_select_Click(object sender, EventArgs e)
    {
        string sql = "SELECT [学号], [姓名], [父亲姓名], [母亲姓名], [父亲电话], [母亲电话], [家庭成员总数], [家庭地址]FROM [家庭信息表] WHERE ( [学号] = '" + TextBox1.Text.ToString() + "') or [姓名]='" + TextBox2.Text.ToString() + "'";

        SqlDataSource1.SelectCommand = sql;

        GridView1.DataSourceID = "SqlDataSource1";

        GridView1.DataBind();
    }
}