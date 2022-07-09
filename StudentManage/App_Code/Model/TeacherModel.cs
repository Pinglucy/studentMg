using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// TeacherModel 的摘要说明
/// </summary>
public class TeacherModel
{

    private string num;
    private string xm;
    private string xb;
    private string gn;
    private string phone;
    private string mz;
    private string zzmm;
    public TeacherModel()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public string Num { get => num; set => num = value; }
    public string Xm { get => xm; set => xm = value; }
    public string Xb { get => xb; set => xb = value; }
    public string Gn { get => gn; set => gn = value; }
    public string Phone { get => phone; set => phone = value; }
    public string Mz { get => mz; set => mz = value; }
    public string Zzmm { get => zzmm; set => zzmm = value; }

    public TeacherModel(string num, string xm, string xb, string gn, string phone, string mz, string zzmm)
    {
        this.num = num;
        this.xm = xm;
        this.xb = xb;
        this.gn = gn;
        this.phone = phone;
        this.mz = mz;
        this.zzmm = zzmm;
    }
}