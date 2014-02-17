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

public partial class Accountant_frmPayRoll : System.Web.UI.Page
{
    Payroll payroll = new Payroll();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Accountant/frmLogin.aspx");
        }
        DateTime date = new DateTime(); ;
        date = DateTime.Today;
        int month = date.Month-1;
        int year = date.Year;
        payroll.Date = month.ToString() + year.ToString();
        lblMsg.Text = payroll.Date;
        //if (!IsPostBack)
        //{
        //    ddlId.DataSource = doctor.ShowDoctor();
        //    ddlId.DataTextField = "Doctor_code";
        //    ddlId.DataValueField = "Doctor_Id";
        //    ddlId.DataBind();
        //    ddlId.Items.Insert(0, "---Select---");
        //}

    }
    protected void ddlId_SelectedIndexChanged(object sender, EventArgs e)
    {
        //try
        //{
        //    doctor.Id = int.Parse(ddlId.SelectedValue);
        //    GridView1.DataSource = doctor.ShowAllDoctor();
        //    GridView1.DataBind();
        //}
        //catch (Exception)
        //{

        //    lblMsg.Text = "Plz Select Dr. Id...!";
        //}      
    }
    protected void btnShow_Click(object sender, EventArgs e)
    {
        string a = "";
        lblMsg.Text = "Before";
        try
        {
            if (payroll.CheckInfo() == false)
            {
                lblMsg.Text = "Calc";
                payroll.CalculateAllSalaries();
            }
            lblMsg.Text = "Fini";
        }
        catch (Exception ed)
        { lblMsg.Text = ed.ToString(); }
        GridView1.DataSource = payroll.ViewAllSalaries();
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GridView1.DataSource = payroll.ViewAllSalaries();
        GridView1.DataBind();
    }
    protected void btnS_Click(object sender, EventArgs e)
    {
        payroll.SendAllSalaries();
        GridView1.DataSource = payroll.ViewAllSalaries();
        GridView1.DataBind();
    }
}
