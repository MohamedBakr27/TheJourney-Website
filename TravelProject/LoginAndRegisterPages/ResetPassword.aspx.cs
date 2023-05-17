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
    public partial class ResetPassword : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");
        }
        protected void rst_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand com = new SqlCommand("select * from Users where userName='" + usrname.Text + "' and Email='" + email.Text + "'", con);
            SqlDataReader sdr = com.ExecuteReader();
            sdr.Read();

            if (sdr.HasRows)
            {
                con.Close();
                if (pass.Text != passConf.Text)
                {
                    warn.ForeColor = Color.Red;
                    warn.Text = "Passwords not match!";
                    return;
                }
                con.Open();
                new SqlCommand("update users set Pass = '" + pass.Text + "' where userName='" + usrname.Text + "'", con).ExecuteNonQuery();
                con.Close();
                warn.ForeColor = Color.Green;
                warn.Text = "Password changed success!";
                Response.Redirect("Login.aspx");
            }
            else
            {
                warn.ForeColor = Color.Red;
                warn.Text = "Username and Email don't Match!";
                con.Close();
            }
        }
    }
}