using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalManagementSystem
{
    public partial class HomePageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            if (Session["UserName"] == null)
            {
                Response.Redirect("Logout.aspx");

            }
            else
            {
                Session["UserName"] = null;
            }
            

        }
    }
}