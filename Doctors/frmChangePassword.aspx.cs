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

public partial class Doctors_frmChangePassword : System.Web.UI.Page
{
    LoginInfoBL login = new LoginInfoBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/Doctors/frmLogin.aspx");
        }
        if (!IsPostBack)
        {
            txtUname.Text = Session["Name"].ToString();
        }
    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtUname.Text.Trim().Length > 0 && txtPwd.Text.Trim().Length > 0)
                login.Name = txtUname.Text.Trim();
            login.Password = txtPwd.Text.Trim();
            {
                if (login.CheckDoctorInfo() == true)
                {
                    login.Name = txtUname.Text.Trim();
                    login.Password = txtNewPwd.Text;
                    login.ChangeDoctorPassword();
                    lblMsg.Text = "Updated...";
                }
                else
                {
                    lblMsg.Text = "Your Password Is Not Correct..";
                    txtPwd.Focus();
                }
            }
        }

        catch (Exception)
        {

            throw;
        }
    }
    }
