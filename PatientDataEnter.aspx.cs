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
    public partial class PatientDataEnter : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();
            string storeData = "Insert into PatientPersonalData(UniversityNumber, Name, Rank, Intake, Degree) values(@UnNo, @name, @rank, @intake, @degree)";
            SqlCommand cmd = new SqlCommand(storeData, cnn);
            cmd.Parameters.AddWithValue("@UnNo", unId.Text);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@rank", selectRank.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@intake", selectIntake.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@degree", degree.Text);

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Saved');</script>");
            cnn.Close();
        }
    }
}