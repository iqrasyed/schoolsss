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
    LoginInfoBL login = new LoginInfoBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtName.Attributes.Add("class", "input-block-level");
        txtPassword.Attributes.Add("class", "input-block-level");
        btnSubmit.Attributes.Add("class", "btn btn-large btn-primary btn-block");
        Button1.Attributes.Add("class", "btn btn-large btn-primary btn-block");
        if (!IsPostBack)
        {
            //Image1.Visible = false;
            lblMsg.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text.Length > 0 && txtPassword.Text.Length > 0)
        {
            login.Name = txtName.Text.Trim();
            login.Password = txtPassword.Text.Trim();
            if (login.CheckAccountantInfo() == true)
            {
                Session["Name"] = txtName.Text.Trim();
                Session["Password"] = txtPassword.Text.Trim();
                Response.Redirect("~/Accountant/Default.aspx");
            }
            else
            {
               // Image1.Visible = true;
                lblMsg.Attributes.Add("class", "muted text-center");
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Username or Password...!";
                txtName.Focus();
            }
        }
        else
        {
           // Image1.Visible = true;
            lblMsg.Attributes.Add("class", "muted text-center");
            lblMsg.Visible = true;
            lblMsg.Text = "Invalid Username or Password...!";
            txtName.Focus();
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
