using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.UserHomePages.NewFolder1
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");

            User user = (User)Session["User"];
            name.Text = user.fname + " " + user.lname;
            email.Text = user.email;
        }
        protected void send_Click(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            con.Open();
            new SqlCommand("insert into msgs values('" + user.usrname.Substring(0, 3) + title.Text[0] + content.Text[0] + user.fname.Substring(0, 2) + user.email.Substring(0, 4) + "',getdate(),'" + content.Text + "','" + title.Text + "','" + user.usrname + "')", con).ExecuteNonQuery();
            con.Close();
            Response.Redirect("Contact.aspx");
        }
    }
}