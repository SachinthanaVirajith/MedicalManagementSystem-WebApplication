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
    public partial class UserRegistration : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)    
        {

        }

       
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try {

                SqlConnection cnn1 = new SqlConnection(sqlcon);
                cnn1.Open();
                String checkuser = "select count(*) from UserRegistration where UserName='" + TextBox1.Text + "'";
                SqlCommand com1 = new SqlCommand(checkuser, cnn1);
                int temp = Convert.ToInt32(com1.ExecuteScalar().ToString());
                if (temp == 1)      
                {
                    Response.Write("<script>alert('This User Name already exists');</script>");
                }

                else
                {
                    if (TextBox2.Text == TextBox4.Text)
                    {
                        SqlConnection con2 = new SqlConnection(sqlcon);
                        con2.Open();
                        String insertquery = "insert into UserRegistration(UserName, Email, Password) values(@Uname, @email, @password)";
                        SqlCommand com2 = new SqlCommand(insertquery, con2);
                        com2.Parameters.AddWithValue("@Uname", TextBox1.Text);
                        com2.Parameters.AddWithValue("@email", TextBox3.Text);
                        com2.Parameters.AddWithValue("@password", TextBox2.Text);

                        com2.ExecuteNonQuery();
                        Response.Write("<script>alert('Registration Successful');</script>");
                        con2.Close();
                    }
                    else
                    {
                        Response.Write("<script>alert('Password must be same');</script>");
                    }
                }
          
                
            }

            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message+"');</script>");

            }
        }
    }
}