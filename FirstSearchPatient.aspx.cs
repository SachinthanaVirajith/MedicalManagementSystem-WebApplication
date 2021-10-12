            using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace MedicalManagementSystem
{
    public partial class FirstSearchPatient : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Visible = false;
            Session["UserName"] = "home";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lblName.Text = "";
            lblSerialNum.Text = "";
            lblId.Text = "";
            lblPState.Text = "";
            Label1.Text = "";
            Label2.Text = "";
            Label3.Text = "";
            Label4.Text = "";


            SqlConnection cnn1 = new SqlConnection(sqlcon);
            cnn1.Open();
            String checkPatient = "select count(*) from PatientReg02 where SerialNumber='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(checkPatient,cnn1);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp > 0)
            {
                String getId = "select PId from PatientReg02 where SerialNumber='" + TextBox1.Text + "'";
                String getPState = "select PatientState from PatientReg02 where SerialNumber='" + TextBox1.Text + "'";
                SqlCommand cmd01 = new SqlCommand(getId, cnn1);
                SqlCommand cmd02 = new SqlCommand(getPState, cnn1);

                string Id = cmd01.ExecuteScalar().ToString();

                string getName = "select Name from PersonalData where PId='" + Id + "'";
                SqlCommand cmd03 = new SqlCommand(getName, cnn1);
                string name = cmd03.ExecuteScalar().ToString();

                lblName.Text = name;
                lblSerialNum.Text = TextBox1.Text;
                lblId.Text = cmd01.ExecuteScalar().ToString();
                lblPState.Text = cmd02.ExecuteScalar().ToString();
                Label1.Text = "Serial Number";
                Label2.Text = "Patient Id";
                Label3.Text = "Patient State";
                Label4.Text = "Patient Name";

                Button1.Visible = true;

                Session["SerialNum_ses02"] = TextBox1.Text;
                
            }
            else
            {
                Response.Write("<script>alert('Patient Does not exist in the system');</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DiseaseMedicine.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientRegistration.aspx");
        }
    }
}