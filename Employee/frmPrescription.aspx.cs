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

public partial class Employee_frmPrescription : System.Web.UI.Page
{    
    AddPatientBL patient = new AddPatientBL();
    PrescriptionMaster prescription = new PrescriptionMaster();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            ddlCode.DataSource = patient.ShowPatientCode();
            ddlCode.DataTextField = "Patient_code";
            ddlCode.DataBind();
            ddlCode.Items.Insert(0, "---Select---");
        
        }
    }

    protected void ddlCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        string test = "";
        try
        {
            if (ddlCode.SelectedItem.Text == "---Select---")
            {
                txtName.Text = "";                
            }
            patient.Code = ddlCode.SelectedItem.Text;
          DataSet  ds = new DataSet();
            ds = patient.ShowPatientInfo();
            txtName.Text = ds.Tables[0].Rows[0][0].ToString();                                 
          lblMsg.Text = "";
        }
        catch (Exception ex)
        {
         // lblMsg.Text = ex.Message.ToString();
          lblMsg.Text = "";
       }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {          
            prescription.Code = ddlCode.SelectedItem.Text.Trim();
            prescription.Prescription = txtPres.Text.Trim();
            prescription.AddPatientPrescription();             
            lblMsg.Text = "Inserted...!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
        }

    }
}
