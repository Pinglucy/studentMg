using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;

/// <summary>
/// Class1 的摘要说明
/// </summary>
public class Class1
{
    public Class1()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    private SqlConnection getCn()
    {
        string cdstr = "server=LAPTOP-NFLM117C; database=学生信息管理系统; uid=sa;pwd=LZ10157forever;";
        SqlConnection connection = new SqlConnection(cdstr);
        connection.Open();
        return connection;
    }
    public int getnum(string sql)
    {
        Boolean flag = false;
        return 0;
    }
    public void insertIntoTable(string sql)
    {
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sql, cn);
        cmd.ExecuteNonQuery();
        cmd.Clone();
        cn.Close();
    }
    //查询返回一个表格
    public DataTable GetDateTable(string sql)//返回一个查询结果
    {
        SqlConnection connection = getCn();
        SqlDataAdapter adapter = new SqlDataAdapter(sql, connection);

        DataSet dataSet = new DataSet();//dataset表的集合
        adapter.Fill(dataSet, "T2");
        connection.Close();
        return dataSet.Tables["T2"];
    }
    public void TableDislplay(DataTable T)
    {
        //  Response.Write("<table style='border:1px;width:90%'>");
        System.Web.HttpContext.Current.Response.Write("<table style='border:1px;width:90%'>");
        for (int i = 0; i < T.Rows.Count; i++)
        {
            System.Web.HttpContext.Current.Response.Write("<tr>");
            for (int j = 0; j < T.Columns.Count; j++)
            {
                System.Web.HttpContext.Current.Response.Write("<td>");
                System.Web.HttpContext.Current.Response.Write(T.Rows[i][j].ToString());//访问数据表
                System.Web.HttpContext.Current.Response.Write("</td>");
            }
        }
        System.Web.HttpContext.Current.Response.Write("</tr>");
        System.Web.HttpContext.Current.Response.Write("</table>");

    }
    public void insertIntoTable0(string table, object object1)
    {
        string sql1 = "";
        string sql2 = "";
        string sql3 = "";
        Type T = object1.GetType();
        PropertyInfo[] p1 = T.GetProperties();
        var memberInfos = T.GetProperties();
        foreach (PropertyInfo pi in T.GetProperties())
        {
            object value1 = pi.GetValue(object1, null);
            if (value1.GetType() == typeof(string))
                sql1 = sql1 + "'" + value1 + "',";
            if (value1.GetType() == typeof(int))
                sql1 = sql1 + value1.ToString() + ",";
            if (value1.GetType() == typeof(double))
                sql1 = sql1 + value1.ToString() + ",";
            sql2 = sql2 + pi.Name + ",";
        }
        sql1 = sql1.Substring(0, sql1.Length - 1);
        sql2 = sql2.Substring(0, sql2.Length - 1);
        sql3 = "insert into " + table + "(" + sql2 + ") values (" + sql1 + ")";
        //System.Web.HttpContext.Current.Response.Write("insert into " + table + "(" + sql2 + ") values (" + sql1 + ")");
        SqlConnection cn = getCn();
        SqlCommand cmd = new SqlCommand(sql3, cn);
        cmd.ExecuteNonQuery();
        cmd.Clone();
        cn.Close();

    }

    


}