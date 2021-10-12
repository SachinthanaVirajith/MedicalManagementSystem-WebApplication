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
    public partial class AvailableMedicine : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["UserName"] = "home";

            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();

            SqlCommand cmd = new SqlCommand("select Paracetamol,Amoxicillin,Cephalexin,Vitamin_C,Piriton,Prednisolone,Omeprazole,Diclofenac from MedicineStock");
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = cnn;

            int totParacetamol = 0;
            int totAmoxillin = 0;
            int totCephalexin = 0;
            int totVitamin_c = 0;
            int totPiriton = 0;
            int totPrednisolone = 0;
            int totOmeprazole = 0;
            int totDiclofenac = 0;

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                totParacetamol += Convert.ToInt32(reader["Paracetamol"].ToString());
                totAmoxillin += Convert.ToInt32(reader["Amoxicillin"].ToString());
                totCephalexin += Convert.ToInt32(reader["Cephalexin"].ToString());
                totVitamin_c += Convert.ToInt32(reader["Vitamin_C"].ToString());
                totPiriton += Convert.ToInt32(reader["Piriton"].ToString());
                totPrednisolone += Convert.ToInt32(reader["Prednisolone"].ToString());
                totOmeprazole += Convert.ToInt32(reader["Omeprazole"].ToString());
                totDiclofenac += Convert.ToInt32(reader["Diclofenac"].ToString());
            }

            reader.Close();



            SqlCommand cmd01 = new SqlCommand("select Paracetamol,Amoxicillin,Cephalexin,Vitamin_C,Piriton,Prednisolone,Omeprazole,Diclofenac from DiseaseAndMedicine");
            cmd01.CommandType = System.Data.CommandType.Text;
            cmd01.Connection = cnn;

            int issueParacetamol = 0;
            int issueAmoxillin = 0;
            int issueCephalexin = 0;
            int issueVitamin_c = 0;
            int issuePiriton = 0;
            int issuePrednisolone = 0;
            int issueOmeprazole = 0;
            int issueDiclofenac = 0;

            SqlDataReader reader01 = cmd01.ExecuteReader();
            while (reader01.Read())
            {
                issueParacetamol += Convert.ToInt32(reader01["Paracetamol"].ToString());
                issueAmoxillin += Convert.ToInt32(reader01["Amoxicillin"].ToString());
                issueCephalexin += Convert.ToInt32(reader01["Cephalexin"].ToString());
                issueVitamin_c += Convert.ToInt32(reader01["Vitamin_C"].ToString());
                issuePiriton += Convert.ToInt32(reader01["Piriton"].ToString());
                issuePrednisolone += Convert.ToInt32(reader01["Prednisolone"].ToString());
                issueOmeprazole += Convert.ToInt32(reader01["Omeprazole"].ToString());
                issueDiclofenac += Convert.ToInt32(reader01["Diclofenac"].ToString());
            }

            reader01.Close();

            Label1.Text = totParacetamol.ToString();
            Label2.Text = (totParacetamol - issueParacetamol).ToString();

            Label3.Text = totAmoxillin.ToString();
            Label4.Text = (totAmoxillin - issueAmoxillin).ToString();

            Label5.Text = totCephalexin.ToString();
            Label6.Text = (totCephalexin - issueCephalexin).ToString();

            Label7.Text = totVitamin_c.ToString();
            Label8.Text = (totVitamin_c - issueVitamin_c).ToString();

            Label9.Text = totPiriton.ToString();
            Label10.Text = (totPiriton - issuePiriton).ToString();

            Label11.Text = totPrednisolone.ToString();
            Label12.Text = (totPrednisolone - issuePrednisolone).ToString();

            Label13.Text = totOmeprazole.ToString();
            Label14.Text = (totOmeprazole - issueOmeprazole).ToString();

            Label15.Text = totDiclofenac.ToString();
            Label16.Text = (totDiclofenac - issueDiclofenac).ToString();
        }
    }
}