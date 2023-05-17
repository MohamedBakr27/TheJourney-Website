using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.ProfilePages
{
    public partial class profileUser : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");
            if (Request.QueryString["d"] == "T")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "mode", "colorMode();", true);
            }
            else if (Session["d"] != null)
            {
                if (Session["d"].ToString() == "T")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "mode", "colorMode();", true);
                }
            }
            User user = (User)Session["User"];
            userpic1.ImageUrl = user.profile_path;
            userpic2.ImageUrl = user.profile_path;
            userpic3.ImageUrl = user.profile_path;
            username.Text = "<h2>" + user.fname + " " + user.lname + "</h2>";
            profileName.Text = "<h2>"+user.fname+" "+user.lname+"</h2>";

            con.Open();
            placesCnt.Text = (new SqlCommand("select count(distinct FlightTo) from\r\n( select FlightTo from (select FlightNo from userFlight where userName = '"+user.usrname+"') \r\nU left outer join Flight F on F.FlightNo = U.FlightNo) T", con).ExecuteScalar()).ToString();
            con.Close();

            con.Open();
            followersCnt.Text = (new SqlCommand("select followers from users where userName='"+user.usrname+"'", con).ExecuteScalar()).ToString();
            con.Close();

            con.Open();
            shotsCnt.Text = (new SqlCommand("select count(imgPath) from posts where userName='" + user.usrname + "'", con).ExecuteScalar()).ToString();
            con.Close();

            con.Open();
            SqlDataReader sdr = new SqlCommand("select imgPath,PostDate from posts where username='"+user.usrname+"' order by PostDate desc\r\n", con).ExecuteReader();
            while (sdr.Read())
            {
                Label nw = new Label();
                nw.Text = "<img src=\"" + sdr["imgPath"] +"\" alt=\"Photo\" />";
                photos.Controls.Add(nw);
            }
            con.Close();
        }
        protected void mode_Click(object sender, EventArgs e)
        {
            if (Session["d"] != null)
            {
                if (Session["d"].ToString() == "T")
                {
                    Session["d"] = "F";
                    Response.Redirect("profileUser.aspx?d=F");
                }
                else
                {
                    Session["d"] = "T";
                    Response.Redirect("profileUser.aspx?d=T");
                }
            }
            else
            {
                Session["d"] = "T";
                Response.Redirect("profileUser.aspx?d=T");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("../LoginAndRegisterPages/Login.aspx");
        }
    }
}