using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_frmDeleteEmployee : System.Web.UI.Page
{
    Employee emp = new Employee();

    protected void btnDelete_Click(object sender, EventArgs e)
    {

    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            emp.Empid = int.Parse(ddlId.SelectedItem.Text);
            emp.DeleteEmployeeDetail();
            lblMsg.Text = "Deleted...!";
            txtName.Text = "";
            ddlId.Focus();
        }
        catch (Exception)
        {

            lblMsg.Text = "Select Employee Name To Delete...!";
        }
            
    }
}