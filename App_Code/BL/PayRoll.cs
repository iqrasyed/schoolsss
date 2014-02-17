using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using HospitalMgmt.DAL;

/// <summary>
/// Summary description for Payroll
/// </summary>
public class Payroll:Connection
{
    string emp_id, status,date;
	public Payroll()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string Emp_id
    {
        get { return emp_id; }
        set { emp_id = value; }
    }

    public string Status
    {
        get { return status; }
        set { status = value; }
    }
    public string Date
    {
        get { return date; }
        set { date = value; }
    }
    public void CalculateAllSalaries()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@month", this.Date);
        p[0].DbType = DbType.String;                
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpCalculatePayInfo", p);
    }
    public DataSet ViewAllSalaries()
    {
        //SqlParameter[] p = new SqlParameter[1];
        //p[0] = new SqlParameter("@id", this.id);
        //p[0].DbType = DbType.Int16;
        DataSet ds = new DataSet();
        ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure, "SpShowAllPay");

        return ds;
    }
    public DataSet SendAllSalaries()
    {
        //SqlParameter[] p = new SqlParameter[1];
        //p[0] = new SqlParameter("@id", this.id);
        //p[0].DbType = DbType.Int16;
        DataSet ds = new DataSet();
        SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "SpUpdatePayInfo");
        return ds;
    }

    public bool CheckInfo()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@month", this.Date);
        p[0].DbType = DbType.String;       
        int count;
        count = int.Parse(SqlHelper.ExecuteScalar(con, CommandType.StoredProcedure, "SpCheckPayInfo", p).ToString());
        if (count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }  
}