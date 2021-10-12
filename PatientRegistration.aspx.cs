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
    public partial class PatientRegistration_2 : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "home";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            string checkUser = "select count(*) from PatientReg02 where SerialNumber='" + serialNum_txt.Text + "'";
            SqlCommand com = new SqlCommand(checkUser, cnn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Write("<script>alert('User already exist in the System');</script>");
            }

            else
            {
                string storeData = "Insert into PatientReg02(SerialNumber, PatientState) values(@SNum, @PState)";
                SqlCommand cmd = new SqlCommand(storeData, cnn);
                cmd.Parameters.AddWithValue("@SNum", serialNum_txt.Text);
                cmd.Parameters.AddWithValue("@PState", PatientState_txt.SelectedItem.Value);


                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Saved');</script>");
                cnn.Close();

                Session["SerialNum_ses"] = serialNum_txt.Text;
                Session["PState_ses"] = PatientState_txt.SelectedItem.Value;
                Response.Redirect("Data_patient.aspx");
            }
        }
    }
}