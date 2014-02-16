using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Employee_frmAddMedicineOnPatient : System.Web.UI.Page
{
    AddPatientBL patient = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            lblMsg.Text = "here";
            ddlPatientCode.DataSource = patient.ShowPatientCode();
            ddlPatientCode.DataTextField = "Patient_code";
            ddlPatientCode.DataBind();
            ddlPatientCode.Items.Insert(0, "---Select---");
            
            DropDownList1.DataSource = patient.ShowPatientCode();
            DropDownList1.DataTextField = "Patient_code";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "---Select---");   
         
        }

    }
    
    protected void ddlPatientCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "here1";
            //patient.Code = ddlPatientCode.SelectedItem.Text.Trim();
            //DataSet ds = new DataSet();
            //ds = patient.ShowPatientInfo();
            //txtName.Text = ds.Tables[0].Rows[0][1].ToString();
            
            

        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblMsg.Text = "here2";

    }
}
