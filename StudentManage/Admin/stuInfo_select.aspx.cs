using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_stuInfo_select : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //首次进入才刷新
        if (!IsPostBack)
        {
            Tools Tool1 = new Tools();
            Tool1.FileList("xh", "student", DropDownList1);
            Tool1.FileList("xm", "student", DropDownList2);
        }
    }

    protected void Button_select_Click(object sender, EventArgs e)
    {
        //string sql = "SELECT [xh], [xm], [xb], [sr], [sr], [grade], [mz], [jg], [zy] , [phone]FROM [student] WHERE ( [xh] = '"+ TextBox1.Text.ToString() + "') or [xm]='"+ TextBox2.Text.ToString() + "'";

        //SqlDataSource1.SelectCommand = sql;

        //GridView1.DataSourceID = "SqlDataSource1";

        //GridView1.DataBind();

        string xh0 = DropDownList1.SelectedValue.ToString().Trim();
        string xm0 = DropDownList2.SelectedValue.ToString().Trim();
        string sql0 = "SELECT [xh], [xm], [xb], [sr], [sr], [grade], [mz], [jg], [zy] , [phone]FROM [student] WHERE ( [xh] = '" + xh0 + "') or [xm]='" + xm0 + "'";

        SqlDataSource1.SelectCommand = sql0;

        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.DataBind();
        //XsModel xs1=new XsModel()
    }



    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string xh= GridView1.Rows[0].Cells[0].Text.Trim();
        string xm= GridView1.Rows[0].Cells[1].Text.Trim();
        string xb = GridView1.Rows[0].Cells[2].Text.Trim();
        string sr = GridView1.Rows[0].Cells[3].Text.Trim();
        string grade = GridView1.Rows[0].Cells[4].Text.Trim();
        string mz = GridView1.Rows[0].Cells[5].Text.Trim();
        string jg = GridView1.Rows[0].Cells[6].Text.Trim();
        string zy = GridView1.Rows[0].Cells[7].Text.Trim();
        string phone = GridView1.Rows[0].Cells[8].Text.Trim();
        XsModel xsmodel = new XsModel(xh, xm, xb, sr, grade, mz, jg, zy,phone);
        new Tools().UpdateDate("student", xsmodel, "where 学号=" + "'" + xh + "'");
    }
}