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
    public partial class DisplayPatientsNew : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "home";
            string UR = Session["UserRole"].ToString();

            if (UR == "1")
            {
                Label8.Visible = false;
            }
            if (UR == "0")
            {
                Label7.Visible = false;
            }

            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            //retriew number of dayscholar
            string checkDayScholar = "select count(*) from PatientReg02 where PatientState='Day Scholar'";
            SqlCommand cmd01 = new SqlCommand(checkDayScholar, cnn);
            int numOfDayscholar = Convert.ToInt32(cmd01.ExecuteScalar().ToString());
            Label1.Text = numOfDayscholar.ToString();

            //retriew number of officer cadet
            string checkOfficerCadet = "select count(*) from PatientReg02 where PatientState='Officer Cadet'";
            SqlCommand cmd02 = new SqlCommand(checkOfficerCadet, cnn);
            int numOfOfficerCadet = Convert.ToInt32(cmd02.ExecuteScalar().ToString());
            Label2.Text = numOfOfficerCadet.ToString();

            //retriew number of Lecturer
            string checkLecturer = "select count(*) from PatientReg02 where PatientState='Lecturer'";
            SqlCommand cmd03 = new SqlCommand(checkLecturer, cnn);
            int numOfLecturer = Convert.ToInt32(cmd03.ExecuteScalar().ToString());
            Label3.Text = numOfLecturer.ToString();

            //retriew number of Militory officer
            string checkMilitoryOfficer = "select count(*) from PatientReg02 where PatientState='Militory Officer'";
            SqlCommand cmd04 = new SqlCommand(checkMilitoryOfficer, cnn);
            int numOfMilitoryOfficer = Convert.ToInt32(cmd04.ExecuteScalar().ToString());
            Label4.Text = numOfMilitoryOfficer.ToString();

            //retriew number of Militory staff
            string checkMilitoryStaff = "select count(*) from PatientReg02 where PatientState='Militory Staff'";
            SqlCommand cmd05 = new SqlCommand(checkMilitoryStaff, cnn);
            int numOfMilitoryStaff = Convert.ToInt32(cmd05.ExecuteScalar().ToString());
            Label5.Text = numOfMilitoryStaff.ToString();

            //retirew number of civil staff
            string checkCivilStaff = "select count(*) from PatientReg02 where PatientState='Civil Staff'";
            SqlCommand cmd06 = new SqlCommand(checkCivilStaff, cnn);
            int numOfCivilStaff = Convert.ToInt32(cmd06.ExecuteScalar().ToString());
            Label6.Text = numOfCivilStaff.ToString();

            cnn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection cnn1 = new SqlConnection(sqlcon);
            cnn1.Open();
            string checkPatient = "select count(*) from PatientReg02 where SerialNumber='" + Search_Patient_txt.Text + "'";
            SqlCommand cmd = new SqlCommand(checkPatient, cnn1);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

            if (temp == 1)
            {

                Session["SerialNum_MedicalReport"] = Search_Patient_txt.Text;
                Response.Redirect("MedicalReport.aspx");
            }
            else
            {
                Response.Write("<script>alert('Patient Does not exist in the system');</script>");
            }
        }
    }
}