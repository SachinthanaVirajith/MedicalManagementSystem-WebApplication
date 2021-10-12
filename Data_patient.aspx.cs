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
    public partial class Data_patient : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["UserName"] = "home";
            show_serial_num.Text = Session["SerialNum_ses"].ToString();
            string serialNum = Session["SerialNum_ses"].ToString();
            Session["SerialNum_ses02"] = serialNum;

            if (Session["PState_ses"].ToString() == "Day Scholar")
            {
                ShowPatientState_lbl.Text = Session["PState_ses"].ToString();

                Rank_txt.Visible = false;
                Label3.Visible = false;

                unit_txt.Visible = false;
                Label4.Visible = false;

                unitName_txt.Visible = false;
                Label5.Visible = false;

                WorkPlace_txt.Visible = false;
                Label6.Visible = false;


            }

            if (Session["PState_ses"].ToString() == "Officer Cadet")
            {
                ShowPatientState_lbl.Text = Session["PState_ses"].ToString();

                WorkPlace_txt.Visible = false;
                Label6.Visible = false;

                PhoneNum_txt.Visible = false;
                Label7.Visible = false;
            }

            if (Session["PState_ses"].ToString() == "Lecturer")
            {
                ShowPatientState_lbl.Text = Session["PState_ses"].ToString();

                Rank_txt.Visible = false;
                Label3.Visible = false;

                unit_txt.Visible = false;
                Label4.Visible = false;

                intake_txt.Visible = false;
                Label2.Visible = false;

                WorkPlace_txt.Visible = false;
                Label6.Visible = false;

                unitName_txt.Visible = false;
                Label5.Visible = false;
            }

            if(Session["PState_ses"].ToString() == "Militory Officer")
            {
                ShowPatientState_lbl.Text = Session["PState_ses"].ToString();

                intake_txt.Visible = false;
                Label2.Visible = false;

                WorkPlace_txt.Visible = false;
                Label6.Visible = false;
            }

            if(Session["PState_ses"].ToString() == "Militory Staff")
            {
                ShowPatientState_lbl.Text = Session["PState_ses"].ToString();

                intake_txt.Visible = false;
                Label2.Visible = false;

                WorkPlace_txt.Visible = false;
                Label6.Visible = false;
            }

            if (Session["PState_ses"].ToString() == "Civil Staff")
            {
                ShowPatientState_lbl.Text = Session["PState_ses"].ToString();

                Rank_txt.Visible = false;
                Label3.Visible = false;

                unit_txt.Visible = false;
                Label4.Visible = false;

                unitName_txt.Visible = false;
                Label5.Visible = false;

                intake_txt.Visible = false;
                Label2.Visible = false;

            }


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();
            string serNum = Session["SerialNum_ses"].ToString();
            string checkId = "select PId from PatientReg02 where SerialNumber='" + serNum + "'";
            SqlCommand cmd01 = new SqlCommand(checkId, cnn);    
            string Id = cmd01.ExecuteScalar().ToString().Replace(" ", "");

            string InputData = "insert into PersonalData (PId,Name,Intake,Rank,Unit,UnitName,WorkPlace,PhoneNumber) values(@PId,@name,@intake,@rank,@unit,@unitName,@workPlace,@phoneNumber)";
            SqlCommand cmd02 = new SqlCommand(InputData, cnn);
            cmd02.Parameters.AddWithValue("@PID", Id);
            cmd02.Parameters.AddWithValue("@name", name_txt.Text);
            cmd02.Parameters.AddWithValue("@intake", intake_txt.SelectedItem.Value);
            cmd02.Parameters.AddWithValue("@rank", Rank_txt.Text);
            cmd02.Parameters.AddWithValue("@unit", unit_txt.SelectedItem.Value);
            cmd02.Parameters.AddWithValue("@unitName", unitName_txt.Text);
            cmd02.Parameters.AddWithValue("@workPlace", WorkPlace_txt.Text);
            cmd02.Parameters.AddWithValue("@phoneNumber", PhoneNum_txt.Text);

            name_txt.Text = "";
            Rank_txt.Text = "";
            unitName_txt.Text = "";
            WorkPlace_txt.Text = "";
            PhoneNum_txt.Text = "";

            cmd01.ExecuteNonQuery();
            cmd02.ExecuteNonQuery();
            cnn.Close();


            
            
            Response.Redirect("DiseaseMedicine.aspx");
        }
    }

}