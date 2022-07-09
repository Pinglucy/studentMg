using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_permima_alter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button_submint_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text.Trim();
        string old_mima = TextBox2.Text.Trim();
        string new_mima = TextBox3.Text.Trim();
        string confirm_mima = TextBox4.Text.Trim();
        if (VerifyData())
        {
            string sql = "update Login set 密码='" + new_mima + "' where 账号='" + id + "'";
            new Class1().insertIntoTable(sql);
            Response.Write("<script>alert('修改密码成功！');</script>");
        }
            
        //string cdstr = "server=LAPTOP-NFLM117C; database=学生信息管理系统; uid=sa;pwd=LZ10157forever;";
        //SqlConnection connection = new SqlConnection(cdstr);
        //connection.Open();
        //SqlCommand cmd = new SqlCommand(sql, connection);
        //cmd.ExecuteNonQuery();
        //cmd.Clone();
        //connection.Close();
        

    }

    private bool VerifyData()
    {
        string sql = "select 密码 from Login where 账号='" + TextBox2.Text.Trim() + "'";
        if (TextBox2.Text.Trim() == "")
        {
            Response.Write("<script>alert('原密码不能为空！');</script>");
            return false;
        }
        if (TextBox3.Text.Trim() == "")
        {
            Response.Write("<script>alert('新密码不能为空！');</script>");
            return false;
        }
        if (TextBox4.Text.Trim() == "")
        {
            Response.Write("<script>alert('确认密码 不能为空！');</script>");
            return false;
        }
        if (TextBox3.Text.Trim() != TextBox4.Text.Trim())
        {
            Response.Write("<script>alert('新密码与确认密码不一致，请重新输入！');</script>");
            return false;
        }
        if (TextBox2.Text.Trim() !=sql)
        {
            Response.Write("<script>alert('原密码输入错误，请重新输入！');</script>");
            return false;
        }
        return true;
    }
}