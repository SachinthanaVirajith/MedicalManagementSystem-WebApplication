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
    public partial class adminLogin : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();
                string checkUser = "Select count(*) from AdminRegistration where UserName='" + TextBox1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(checkUser, cnn);
                int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    string checkPassword = "select Password from AdminRegistration where UserName='" + TextBox1.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(checkPassword, cnn);
                    string password = cmd2.ExecuteScalar().ToString().Replace(" ", "");

                    if (password == TextBox2.Text)
                    {
                        Response.Write("<script>alert('Password Correct');</script>");
                        Response.Redirect("HomePage.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Password Incorrect');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('User Name Correct');</script>");
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}