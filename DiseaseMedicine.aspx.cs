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
    public partial class DiseaseMedicine : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        string Id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "home";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string serialNum = Session["SerialNum_ses02"].ToString();

            DateTime t = DateTime.Now;
            String DateNTime = t.ToString();
            String td = t.Day.ToString();
            String tm = t.Month.ToString();


            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();
            
            string checkId = "select PId from PatientReg02 where SerialNumber='" + serialNum + "'";
            SqlCommand cmd01 = new SqlCommand(checkId, cnn);
            Id = cmd01.ExecuteScalar().ToString().Replace(" ", "");


            string InputData = "insert into DiseaseAndMedicine (PId,Diagnosis,Paracetamol,Amoxicillin,Cephalexin,Vitamin_C,Piriton,Prednisolone,Omeprazole,Diclofenac,OtherMedicines,DateNTime,td,tm) values(@x_PID,@x_diagnosis,@x_paracetamol,@x_amoxicillin,@x_cephalexin,@x_vitamin_C,@x_piriton,@x_prednisolone,@x_omeprazole,@x_diclofenac,@x_OtherMedicines,@x_DateNTime,@x_td,@x_tm)";
            SqlCommand cmd02 = new SqlCommand(InputData, cnn);
            cmd02.Parameters.AddWithValue("@x_PID", Id);
            cmd02.Parameters.AddWithValue("@x_diagnosis", diagnosis_txt.Text);
            cmd02.Parameters.AddWithValue("@x_paracetamol", paracetamol_txt.Text);
            cmd02.Parameters.AddWithValue("@x_amoxicillin", amoxicillin_txt.Text);
            cmd02.Parameters.AddWithValue("@x_cephalexin", cephalexin_txt.Text);
            cmd02.Parameters.AddWithValue("@x_vitamin_C", vitaminC_txt.Text);
            cmd02.Parameters.AddWithValue("@x_piriton", piriton_txt.Text);
            cmd02.Parameters.AddWithValue("@x_prednisolone", prednisolone_txt.Text);
            cmd02.Parameters.AddWithValue("@x_omeprazole", omeprazole_txt.Text);
            cmd02.Parameters.AddWithValue("@x_diclofenac", diclofenac_txt.Text);
            cmd02.Parameters.AddWithValue("@x_OtherMedicines", otherMedicines_txt.Text);
            cmd02.Parameters.AddWithValue("@x_DateNTime", DateNTime);
            cmd02.Parameters.AddWithValue("@x_td", td);
            cmd02.Parameters.AddWithValue("@x_tm", tm);

            cmd01.ExecuteNonQuery();
            cmd02.ExecuteNonQuery();


            string getSerialNum = "select SerialNumber from PatientReg02 where PId='" + Id + "'";
            SqlCommand cmd03 = new SqlCommand(getSerialNum, cnn);
            string sn = cmd03.ExecuteScalar().ToString();
            

            string getPState = "select PatientState from PatientReg02 where PId='" + Id + "'";
            SqlCommand cmd04 = new SqlCommand(getPState, cnn);
            string pstate = cmd04.ExecuteScalar().ToString();
            

            string getName = "select Name from PersonalData where PId='" + Id + "'";
            SqlCommand cmd05 = new SqlCommand(getName, cnn);
            string name = cmd05.ExecuteScalar().ToString();
            


            string insertData = "insert into DisplayDetails (PatientName,SerialNumber,DateNTime,PState,tm,td) values(@x_pn,@x_sn,@x_dnt,@x_ps,@x_tm,@x_td)";
            SqlCommand cmm = new SqlCommand(insertData, cnn);

            cmm.Parameters.AddWithValue("@x_pn", name);
            cmm.Parameters.AddWithValue("@x_sn", sn);
            cmm.Parameters.AddWithValue("@x_dnt", DateNTime);
            cmm.Parameters.AddWithValue("@x_ps", pstate);
            cmm.Parameters.AddWithValue("@x_tm", tm);
            cmm.Parameters.AddWithValue("@x_td", td);

            cmm.ExecuteNonQuery();
            cnn.Close();


            diagnosis_txt.Text = "";
            paracetamol_txt.Text = "";
            amoxicillin_txt.Text = "";
            cephalexin_txt.Text = "";
            vitaminC_txt.Text = "";
            piriton_txt.Text = "";
            prednisolone_txt.Text = "";
            omeprazole_txt.Text = "";
            diclofenac_txt.Text = "";
            otherMedicines_txt.Text = "";
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         
        }
    }
}