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

public partial class Admin_frmAddAccountant : System.Web.UI.Page
{

    Accountant accountant = new Accountant();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Admin/frmAdminLogin.aspx");
        }
        
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtCode.Text.Trim().Length > 0)
            {
                accountant.Code = txtCode.Text.Trim();
            }
            else
            {
                lblMsg.Text = "Enter Code..";
            }

            if (txtName.Text.Trim().Length > 0)
            {
                accountant.Name = txtName.Text.Trim();
            }
            else
            {
                lblMsg.Text = "Enter Name..";
            }

           
           
           accountant.Contactno = txtContact.Text.Trim();

            

            accountant.Username = txtUName.Text.Trim();
            accountant.Password = txtPassword.Text.Trim();
            accountant.Salary = txtSalary.Text.Trim();
            accountant.Roleid = 4;
            accountant.InsertAccountant();
            lblMsg.Text = "Inserted...!";
            txtCode.Text = "";
            txtContact.Text = "";
            
            txtName.Text = "";
            txtSalary.Text = "";
            txtPassword.Text = "";

            txtUName.Text = "";
            
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message.ToString();
            // lblMsg.Text = "Already Present...!";
        }


    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
         //foreach (Control i in this.Form.Controls)
        //{
        //    if (i is TextBox)
        //    {
        //        ((TextBox)i).Text = "";
        //    }
            txtCode.Text = string.Empty;
            txtName.Text = string.Empty;
           
            lblMsg.Text = string.Empty;
            txtPassword.Text = "";
            txtName.Text = "";
            txtContact.Text = "";
           
        
       // }
    }
}
