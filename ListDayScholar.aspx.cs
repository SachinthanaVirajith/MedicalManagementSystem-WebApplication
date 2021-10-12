using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;

namespace MedicalManagementSystem
{
    public partial class ListDayScholar : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();
   
                SqlCommand cmd01 = new SqlCommand();
                cmd01.CommandText = "Select PatientName,SerialNumber,DateNTime from DisplayDetails where PState='Day Scholar'";
                cmd01.Connection = cnn;

                SqlDataReader rd = cmd01.ExecuteReader();
                table.Append("<table border='0' width='1200px'");
                table.Append("<tr><th>Patient Name</th> <th>Serial Number</th> <th>Date and Time</th>");
                table.Append("</tr>");

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + rd[0] + "</td>");
                        table.Append("<td>" + rd[1] + "</td>");
                        table.Append("<td>" + rd[2] + "</td>");
                        table.Append("</tr>");
                    }
                }
                table.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                rd.Close();
            }
        }
    }
}