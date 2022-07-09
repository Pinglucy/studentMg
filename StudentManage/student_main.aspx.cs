using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string yhm = Session["yhm"].ToString();
        //if (yhm.Equals(""))
        //{
        //    Response.Write("<alert('请从登录页进来哈！')");
        //}
        Label1.Text = yhm;
    }
}