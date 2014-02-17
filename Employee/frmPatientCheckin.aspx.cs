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

public partial class Employee_frmAddInPatient : System.Web.UI.Page
{
    //int time, time1, time2;
    //string time3;
    DataSet ds;
    CountryBusinessLayer country = new CountryBusinessLayer();
    State state = new State();
    City city = new City();
    Doctor doctor = new Doctor();
    Test test = new Test();
    Room room = new Room();
    Patient patient = new Patient();
    Disease dis = new Disease();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Redirect("~/frmLogin.aspx");
        }
        if (!IsPostBack)
        {           
            /////            
            pplCode.DataSource = patient.ShowPatientCodeForCheckin();
            pplCode.DataTextField = "Patient_code";
            pplCode.DataBind();
            pplCode.Items.Insert(0, "---Select---");
           
            
          
        }

    }
      
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try
        {
            patient.Code = pplCode.SelectedItem.Text;
            patient.Name = txtPname.Text.Trim();
            patient.Hname = txtHname.Text.Trim();
            patient.Complaint = txtComplain.Text.Trim();
            patient.Sex = txtSex.Text;
            patient.Address = txtAddress.Text.Trim();
            patient.Country = "Pakistan";//ddlCountry.SelectedItem.Text.Trim();
            patient.State = "Punjab";// ddlState.SelectedItem.Text.Trim();
            patient.City = ddlCity.SelectedItem.Text.Trim();
            patient.Age = int.Parse(txtAge.Text.Trim());
            patient.Iopatient = ddlInOut.SelectedItem.Text.Trim();
            patient.Doctorcode = "";// ddlDrCode.SelectedItem.Text.Trim();
            patient.Admitdate=GMDatePicker1.Date.Date;
            patient.Admittime = txtTime.Text.Trim()+ ddlTime.SelectedItem.Text.Trim();
            patient.Testcode = "";// ddlTestCode.SelectedItem.Text.Trim();
            patient.Roomcode = "";// ddlRoomCode.SelectedItem.Text.Trim();
            patient.Advance = int.Parse(txtAdvance.Text.Trim());
            patient.Condition = txtCondition.Text.Trim();
            patient.AddPatient();
 
           // dis.Name = txtComplain.Text.Trim();
           // dis.Doccode = ""; ddlDrCode.SelectedItem.Text.Trim();
          //  dis.InsertDisease();
            lblMsg.Text = "Inserted...!";

        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message.ToString();
        }
    }
    protected void pplCode_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            if (pplCode.SelectedItem.Text == "---Select---")
            {
                txtPname.Text = "";
                txtHname.Text = "";
                txtComplain.Text = "";
               // txtSex.Text = "";
                txtAddress.Text = "";                
//                txtCountry.Text = "";
  //              txtState.Text = "";
                //txtCity.Text = "";
                txtAge.Text = "";
                txtSex.Text = "";
                txtAdvance.Text = "";
                txtCondition.Text = "";

            }
            patient.Code = pplCode.SelectedItem.Text;

            //Patient Info

            ds = new DataSet();
            ds = patient.ShowPatientInfoForCheckin();
            city.StateId = 2;
            ddlCity.DataSource = city.GetCityByState();
            ddlCity.DataTextField = "City_Name";
            ddlCity.DataValueField = "City_Id";
            ddlCity.DataBind();                        
            txtPname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtHname.Text = ds.Tables[0].Rows[0][2].ToString();            
            txtSex.Text = ds.Tables[0].Rows[0][3].ToString();
            txtAddress.Text = ds.Tables[0].Rows[0][4].ToString();          
           ddlCity.SelectedIndex =ddlCity.Items.IndexOf(ddlCity.Items.FindByText(ds.Tables[0].Rows[0][5].ToString()));            
           txtAge.Text = ds.Tables[0].Rows[0][6].ToString();
          
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.ToString(); ;
        }
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
