using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Reflection;

/// <summary>
/// Tools 的摘要说明
/// </summary>
public class Tools
{
    public Tools()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    //把查询的结果填充到指定的下拉框
    public void FileList(string field1, string table1, DropDownList DP1)
    {
        string sql = "select " + field1 + " from " + table1;
        DataTable t1 = new Class1().GetDateTable(sql);
        //循环添加数据到列表
        for (int i = 0; i < t1.Rows.Count; i++)
        {
            DP1.Items.Add(t1.Rows[i][0].ToString().Trim());
        }
        //DP1.DataSource = t1;
        //DP1.DataTextField = field1;
        //DP1.DataValueField = field1;
        //DP1.DataBind();
    }
    public void UpdateDate(string table, object object1, string sql)
    {
        string sql1 = "update " + table + " set ";
        Type T = object1.GetType();
        FieldInfo[] fieldInfos = T.GetFields(BindingFlags.Instance | BindingFlags.NonPublic);
        PropertyInfo[] p1 = T.GetProperties();
        var memberInfos = T.GetProperties();
        foreach (PropertyInfo pi in T.GetProperties())
        {
            object value1 = pi.GetValue(object1, null);

            sql1 = sql1 + pi.Name + "='" + value1 + "',";

        }
        sql1 = sql1.Substring(0, sql1.Length - 1) + sql;
    }
    //任意模型插入到任意表

    //更新的模块化
}
