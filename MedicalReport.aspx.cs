    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;

namespace MedicalManagementSystem
{

    public partial class MedicalReport : System.Web.UI.Page
    {
        StringBuilder table = new StringBuilder();
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            String SerialNum = Session["SerialNum_MedicalReport"].ToString();

            SqlConnection cnn = new SqlConnection(sqlcon);
            cnn.Open();
            string getSerial = "select SerialNumber from PatientReg02 where SerialNumber='" + SerialNum + "'";
            SqlCommand com = new SqlCommand(getSerial, cnn);
            serialNum_lbl.Text = com.ExecuteScalar().ToString();
            string getPIp = "select PId from PatientReg02 where SerialNumber='" + SerialNum + "'";
            SqlCommand cmd = new SqlCommand(getPIp, cnn);
            string PId = cmd.ExecuteScalar().ToString().Replace(" ", "");

            String getName = "select Name from PersonalData where PId='" + PId + "'";
            String getIntake = "select Intake from PersonalData where PId='" + PId + "'";
            String getRank = "select Rank from PersonalData where PId='" + PId + "'";
            String getUnit = "select Unit from PersonalData where PId='" + PId + "'";
            String getUnitName = "select UnitName from PersonalData where PId='" + PId + "'";
            String getWorkPlace = "select WorkPlace from PersonalData where PId='" + PId + "'";
            String getPhoneNum = "select PhoneNumber from PersonalData where PId='" + PId + "'";

            SqlCommand cmd01 = new SqlCommand(getName, cnn);
            SqlCommand cmd02 = new SqlCommand(getIntake, cnn);
            SqlCommand cmd03 = new SqlCommand(getRank, cnn);
            SqlCommand cmd04 = new SqlCommand(getUnit, cnn);
            SqlCommand cmd05 = new SqlCommand(getUnitName, cnn);
            SqlCommand cmd06 = new SqlCommand(getWorkPlace, cnn);
            SqlCommand cmd07 = new SqlCommand(getPhoneNum, cnn);

            name_lbl.Text = cmd01.ExecuteScalar().ToString();
            intake_lbl.Text = cmd02.ExecuteScalar().ToString();
            rank_lbl.Text = cmd03.ExecuteScalar().ToString();
            unit_lbl.Text = cmd04.ExecuteScalar().ToString();
            unitName_lbl.Text = cmd05.ExecuteScalar().ToString();
            workPlace_lbl.Text = cmd06.ExecuteScalar().ToString();
            phoneNum_lbl.Text = cmd07.ExecuteScalar().ToString();

            string UR = Session["UserRole"].ToString();

            if (!Page.IsPostBack)
            {
                if (UR == "1")
                {
                    SqlCommand cmd08 = new SqlCommand();
                    cmd08.CommandText = "select DateNTime,Diagnosis,Paracetamol,Amoxicillin,Cephalexin,Vitamin_C,Piriton,Prednisolone,Omeprazole,Diclofenac,OtherMedicines from DiseaseAndMedicine where PId='" + PId + "'";
                    cmd08.Connection = cnn;

                    SqlDataReader rd = cmd08.ExecuteReader();
                    table.Append("<table border='0' width=1200px>");
                    table.Append("<tr><th>Date and Time</th> <th>Diagnosis</th> <th>Paracetamol</th> <th>Amoxicillin</th> <th>Cephalexin</th> <th>Vitamin C</th> <th>Piriton</th> <th>Prednisolone</th> <th>Omeprazole</th> <th>Diclofenac</th> <th>OtherMedicines</th>");
                    table.Append("</tr>");

                    if (rd.HasRows)
                    {
                        while (rd.Read())
                        {
                            table.Append("<tr>");
                            table.Append("<td>" + rd[0] + "</td>");
                            table.Append("<td>" + rd[1] + "</td>");
                            table.Append("<td>" + rd[2] + "</td>");
                            table.Append("<td>" + rd[3] + "</td>");
                            table.Append("<td>" + rd[4] + "</td>");
                            table.Append("<td>" + rd[5] + "</td>");
                            table.Append("<td>" + rd[6] + "</td>");
                            table.Append("<td>" + rd[7] + "</td>");
                            table.Append("<td>" + rd[8] + "</td>");
                            table.Append("<td>" + rd[9] + "</td>");
                            table.Append("<td>" + rd[10] + "</td>");
                            table.Append("</tr>");
                        }
                    }
                    table.Append("</table>");
                    PlaceHolder1.Controls.Add(new Literal { Text = table.ToString() });
                    rd.Close();
                }

                if(UR == "0")
                {
                    SqlCommand cmd08 = new SqlCommand();
                    cmd08.CommandText = "select DateNTime from DiseaseAndMedicine where PId='" + PId + "'";
                    cmd08.Connection = cnn;

                    SqlDataReader rd = cmd08.ExecuteReader();
                    table.Append("<table border='0' width=1200px>");
                    table.Append("<tr><th>Date and Time</th>");
                    table.Append("</tr>");

                    if (rd.HasRows)
                    {
                        while (rd.Read())
                        {
                            table.Append("<tr>");
                            table.Append("<td>" + rd[0] + "</td>");
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
}