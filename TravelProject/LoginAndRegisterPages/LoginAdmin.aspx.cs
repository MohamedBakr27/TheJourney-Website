using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProject.LoginAndRegisterPages
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void log_Click(object sender, EventArgs e)
        {
            if (usrname.Text.ToLower() == "mhmdbakr" && pass.Text == "12345678")
                Response.Redirect("../AdminPages/Dashboard.aspx");
            else 
                warn.Text = "Username or Password are incorrect!";
            return;
        }
    }
}