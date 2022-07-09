

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_stuInfo_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_submint_Click(object sender, EventArgs e)
    {
        string xh = TextBox_stuid.Text.Trim();
        string xm = TextBox_stuname.Text.Trim();
        string xb = "男";
        if (RadioButton_female.Checked == true) xb = "女";
        string sr = TextBox_stusr.Text.Trim();
        string grade = TextBox1.Text.Trim();
        string mz = TextBox2.Text.Trim();
        string jg = TextBox_stuclass.Text.Trim();
        string mgr = TextBox3.Text.Trim();
        string phone = TextBox_stuphonenum.Text.Trim();
        
        XsModel xsModel = new XsModel(xh,xm,xb,sr,grade,mz,jg,mgr,phone);
        new Class1().insertIntoTable0("student", xsModel);


    }
}