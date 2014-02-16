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

public partial class Doctors_frmPaitentHistoryN : System.Web.UI.Page
{
    AddPatientBL paitent = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        
        string cnic=TextBox1.Text.Trim();
        if (cnic == "")
        {
            lblMsg.Text = "Please enter CNIC";
        }
        else
        {
            try
            {
                paitent.Code = "PK" + cnic;
                GridView1.DataSource = paitent.ShowPatientHistory();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Please enter valid CNIC .";
                
            }
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = paitent.ShowPatientHistory();
        GridView1.DataBind();
    }
}
