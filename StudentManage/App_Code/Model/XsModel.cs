using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// XsModel 的摘要说明
/// </summary>
public class XsModel
{
    private string xh;
    private string xm;
    private string xb;
    private string sr;
    private string grade;
    private string mz;
    private string jg;
    private string zy;
    private string phone;

    public XsModel()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
        Xh = ""; Xm = "";  Xb = "男"; Sr = "";
        Grade = ""; Mz = ""; Jg = ""; Zy = ""; Phone = "";
    }

    public string Xh { get => xh; set => xh = value; }
    public string Xm { get => xm; set => xm = value; }
    public string Xb { get => xb; set => xb = value; }
    public string Sr { get => sr; set => sr = value; }
    public string Grade { get => grade; set => grade = value; }
    public string Mz { get => mz; set => mz = value; }
    public string Jg { get => jg; set => jg = value; }
    public string Zy { get => zy; set => zy = value; }
    public string Phone { get => phone; set => phone = value; }

    public XsModel(string xh, string xm, string xb, string sr, string grade, string mz, string jg, string zy, string phone)
    {
        this.xh = xh;
        this.xm = xm;
        this.xb = xb;
        this.sr = sr;
        this.grade = grade;
        this.mz = mz;
        this.jg = jg;
        this.zy = zy;
        this.phone = phone;
    }

    public XsModel(string xh, string xm, string xb, string sr, string grade, string mz, string jg, string zy)
    {
        this.xh = xh;
        this.xm = xm;
        this.xb = xb;
        this.sr = sr;
        this.grade = grade;
        this.mz = mz;
        this.jg = jg;
        this.zy = zy;
    }
}