using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.LoginAndRegisterPages.NewFolder1
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");
        }

        protected void log_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("select * from Users where userName='" + usrname.Text + "' and Pass='" + pass.Text + "'", con);
            SqlDataReader sdr = com.ExecuteReader();
            sdr.Read();
            if (sdr.HasRows)
            {
                string[] data = { sdr["Fname"].ToString(), sdr["Lname"].ToString(), sdr["Email"].ToString(), sdr["Pass"].ToString(), sdr["userName"].ToString(), sdr["Profile_Picture"].ToString(), sdr["Profile_Cover"].ToString() };
                Session["User"] = new User(data, int.Parse(sdr["Followers"].ToString()));
                Response.Redirect("../UserHomePages/Home.aspx");
            }
            else
            {
                warn.Text = "Username or Password Not Correct!";
            }
            con.Close();
        }
    }
}