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
    public partial class Login : System.Web.UI.Page
    {
        string sqlcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cnn = new SqlConnection(sqlcon);
                cnn.Open();
                string checkUser = "Select count(*) from UserRegistration where UserName='" + TextBox1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(checkUser, cnn);
                int temp = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    string checkPassword = "select Password from UserRegistration where UserName='" + TextBox1.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(checkPassword, cnn);
                    string password = cmd2.ExecuteScalar().ToString().Replace(" ", "");
                    string username = TextBox1.Text;
                    string subUserName = username.Substring(0, 8);


                    if (password == TextBox2.Text)
                    {
                        Session["UserName"] = TextBox1.Text;

                        if (subUserName == "MIRadmin")
                        {
                            Session["UserRole"] = "1";
                            Response.Redirect("HomePageAdmin.aspx");

                        }
                        else 
                        {
                            Session["UserRole"] = "0";
                            Response.Redirect("HomePageUser.aspx");

                        }


                    }
                    else
                    {
                        Response.Write("<script>alert('Password Incorrect');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('User Name Incorrect');</script>");
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}