using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace TravelProject.LoginAndRegisterPages.NewFolder1
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");
        }
        protected void reg_Click(object sender, EventArgs e)
        {
            if (pass.Text != passConfirm.Text)
            {
                warn.Text = "Passwords not match!";
                return;
            }
            else
            {
                con.Open();
                SqlCommand com1 = new SqlCommand("select * from users where userName = '" + usrname.Text + "'", con);
                SqlDataReader sdr = com1.ExecuteReader();
                sdr.Read();
                if (sdr.HasRows)
                {
                    warn.Text = "Username is not available!";
                    con.Close();
                    return;
                }
                con.Close();
            }
            con.Open();
            SqlCommand com = new SqlCommand("insert into Users values('" + usrname.Text + "','" + email.Text + "','" + pass.Text + "','" + fname.Text + "','" + lname.Text + "',0,'..\\img\\user.jpg','..\\img\\cover.jpg')", con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
    }
}