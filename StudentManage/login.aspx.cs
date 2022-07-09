using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class login : System.Web.UI.Page
{
    static int count = 3, i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string num = TextBox1.Text;
        string pwd = TextBox2.Text;
        string sf = DropDownList1.SelectedItem.Text;
        string sql = "select 密码 from Login where 账号='" + num + "' and 用户身份='"+sf+"'" ;
        DataTable T = new Class1().GetDateTable(sql);
        if (T.Rows.Count == 0)
        {string scriptString = "alert('此用户不存在！');";
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "waring", scriptString, true);}
        else {
            string pwd1 = T.Rows[0][0].ToString();
            if (i < count)
            {
                if (pwd1 != pwd)
                {
                    i++;
                    //string scriptString = "alert('密码或者用户名错误，还有" + (count - i) + "次机会');";
                    Response.Write("<script>alert('密码或用户名输入错误，请重新输入！');</script>");
                    TextBox2.Text = ""; TextBox2.Focus();

                }
                else
                {
                    Session["yhm"] = num;
                    if (sf == "学生")
                    {
                        Response.Redirect("student_main.aspx");
                       
                    }
                    else if (sf == "辅导员")
                    {
                        Response.Redirect("teacher_main.aspx");
                        
                    }
                    else
                    {
                        Response.Redirect("admin_main.aspx");

                    }
                }

            }
            if (i == 3)
                Response.Redirect("login.aspx");

        }   
       
    }

}