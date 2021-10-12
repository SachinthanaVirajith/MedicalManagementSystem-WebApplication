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
    public partial class AddMedicine : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "home";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            string insertValues = "insert into MedicineStock (Paracetamol,Amoxicillin,Cephalexin,Vitamin_C,Piriton,Prednisolone,Omeprazole,Diclofenac) values(@x_Paracetamol,@x_Amoxicillin,@x_Cephalexin,@x_Vitamin_C,@x_Piriton,@x_Prednisolone,@x_Omeprazole,@x_Diclofenac)";
            SqlCommand cmd = new SqlCommand(insertValues, cnn);
            cmd.Parameters.AddWithValue("@x_Paracetamol", paracetamol_txt.Text);
            cmd.Parameters.AddWithValue("@x_Amoxicillin", amoxicillin_txt.Text);
            cmd.Parameters.AddWithValue("@x_Cephalexin", cephalexin_txt.Text);
            cmd.Parameters.AddWithValue("@x_Vitamin_C", vitaminC_txt.Text);
            cmd.Parameters.AddWithValue("@x_Piriton", piriton_txt.Text);
            cmd.Parameters.AddWithValue("@x_Prednisolone", prednisolone_txt.Text);
            cmd.Parameters.AddWithValue("@x_Omeprazole", omeprazole_txt.Text);
            cmd.Parameters.AddWithValue("@x_Diclofenac", diclofenac_txt.Text);

            cmd.ExecuteNonQuery();
            cnn.Close();

            paracetamol_txt.Text = "";
            amoxicillin_txt.Text = "";
            cephalexin_txt.Text = "";
            vitaminC_txt.Text = "";
            piriton_txt.Text = "";
            prednisolone_txt.Text = "";
            omeprazole_txt.Text = "";
            diclofenac_txt.Text = "";
        }
    }
}