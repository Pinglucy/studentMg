using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_teaInfo_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_submint_Click(object sender, EventArgs e)
    {
        string num = TextBox1.Text.Trim();
        string xm = TextBox2.Text.Trim();
        string xb = "男";
        if (RadioButton3.Checked == true) xb = "女";
        string gn = TextBox4.Text.Trim();
        string phone = TextBox5.Text.Trim();
        string mz = TextBox6.Text.Trim();
        string zzmm = TextBox7.Text.Trim();


        TeacherModel teaModel = new TeacherModel(num, xm, xb, gn, phone, mz, zzmm);
        new Class1().insertIntoTable0("Teacher", teaModel);
    }
}