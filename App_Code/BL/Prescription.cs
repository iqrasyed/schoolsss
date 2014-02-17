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
/// Summary description for Prescription
/// </summary>
public class Prescription : Connection             
{
    string code, prescription_detail;
    public Prescription()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public string Code
    {
        get { return code; }
        set { code = value; }
    }
    public string Prescription_Detail
    {
        get { return prescription_detail; }
        set { prescription_detail = value; }
    }
	

    public void AddPatientPrescription()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@code", this.code);
        p[0].DbType = DbType.String;
        p[1] = new SqlParameter("@prescription", this.prescription_detail);
        p[1].DbType = DbType.String;
        SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SpAddPatientPrescription", p);
    }
}