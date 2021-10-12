using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalManagementSystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            String UR = Session["UserRole"].ToString();

            if (UR == "1")
            {
                Label1.Visible = false;
                
            }
            if(UR == "0")
            {
                Label2.Visible = false;
                
            }
        }
    }
}