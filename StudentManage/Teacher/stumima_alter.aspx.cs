using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Teacher_stumima_alter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_submint_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text.Trim();
        string new_mima = TextBox2.Text.Trim();
        string confirm_mima = TextBox3.Text.Trim();
        if (VerifyData())
        {
            string sql = "update Login set 密码='" + new_mima + "' where 账号='" + id + "'";
            new Class1().insertIntoTable(sql);
            Response.Write("<script>alert('修改密码成功！');</script>");
        }
    }
    private bool VerifyData()
    {
        
        
        if (TextBox2.Text.Trim() == "")
        {
            Response.Write("<script>alert('新密码不能为空！');</script>");
            return false;
        }
        if (TextBox3.Text.Trim() == "")
        {
            Response.Write("<script>alert('确认密码 不能为空！');</script>");
            return false;
        }
        if (TextBox2.Text.Trim() != TextBox3.Text.Trim())
        {
            Response.Write("<script>alert('新密码与确认密码不一致，请重新输入！');</script>");
            return false;
        }
        
        return true;
    }
}