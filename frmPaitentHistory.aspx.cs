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

public partial class frmLogin : System.Web.UI.Page
{
    AddPatientBL CNIC = new AddPatientBL();
    protected void Page_Load(object sender, EventArgs e)
    {

        txtName.Attributes.Add("class", "input-block-level");       
        btnSubmit.Attributes.Add("class", "btn btn-large btn-primary btn-block");
        if (!IsPostBack)
        {
            //Image1.Visible = false;
            lblMsg.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text.Length > 0)
        {
            CNIC.Code ="PK"+ txtName.Text.Trim();

            GridView2.DataSource = CNIC.ShowPatientHistory();
            
            GridView2.DataBind();                         
        }
        else
        {
           // Image1.Visible = true;
            lblMsg.Visible = true;
            lblMsg.Text = "Please enter valid CNIC!";
            txtName.Focus();
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        GridView2.DataSource = CNIC.ShowPatientHistory();
        GridView2.DataBind();
    }
}
