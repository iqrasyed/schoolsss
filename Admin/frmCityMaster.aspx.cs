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

public partial class Admin_frmCityMaster : System.Web.UI.Page
{
    //StateBL state = new StateBL();
    CityBL city = new CityBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }       
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        city.CityName = txtName.Text.Trim();
        city.CityDesc = txtDesc.Text.Trim();
        city.StateId = 2;
        city.InsertCity();
        lblMsg.Text = "City Inserted Successfully...!";
        txtName.Focus();
    }
    protected void BtnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtDesc.Text = "";
        lblMsg.Text = "";
        txtName.Focus();
    }
    
}
