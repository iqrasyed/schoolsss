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
using System.Data.SqlClient;
public partial class Admin_frmAdminLogin : System.Web.UI.Page
{
    LoginInfoBL login = new LoginInfoBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Image1.Visible = false;
            lblMsg.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtName.Text.Length > 0 && txtPassword.Text.Length > 0)
        {
            //SqlConnection cn=new SqlConnection (ConfigurationSettings .AppSettings ["Connstr"]);
            //cn.Open ();
            //string str="select *from tbl_AdminLogin where AdminLoginId='"+txtName .Text +"' and password='"+txtPassword .Text +"'";
            //SqlCommand cmd=new SqlCommand (str,cn );
            //object x =null ;
            //x=cmd.ExecuteScalar ();
            //if (x == null)
            //{
            // 
            //}
            //else
            //{
            //    
            //}
            //cn.Close ();
            login.Name = txtName.Text.Trim();
            login.Password = txtPassword.Text.Trim();
            if (login.CheckAdmininfo() == true)
            {
                Session["Name"] = txtName.Text.Trim();
                 Response.Redirect("~/Admin/frmAdminHome.aspx");
            }
            else
            {
                Image1.Visible = true;
                lblMsg.Visible = true;
                lblMsg.Text = "Invalid Username or Password...!";
                txtName.Focus();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
