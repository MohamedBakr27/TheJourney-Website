using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Profile;

namespace TravelProject.ProfilePages
{
    public partial class profileGuest : System.Web.UI.Page
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
            string cur = Request.QueryString["id"];
            userpic1.ImageUrl = user.profile_path;
            userpic2.ImageUrl = user.profile_path;
            username.Text = "<h2>" + user.fname + " " + user.lname + "</h2>";

            con.Open();
            userpic3.ImageUrl = (new SqlCommand("select Profile_Picture from users where userName = '"+cur+"'", con).ExecuteScalar()).ToString();
            con.Close();
            con.Open();
            profileName.Text = (new SqlCommand("select Fname+' '+Lname from users where userName = '" + cur + "'", con).ExecuteScalar()).ToString();
            con.Close();

            con.Open();
            placesCnt.Text = (new SqlCommand("select count(distinct FlightTo) from\r\n( select FlightTo from (select FlightNo from userFlight where userName = '" + cur + "') \r\nU left outer join Flight F on F.FlightNo = U.FlightNo) T", con).ExecuteScalar()).ToString();
            con.Close();

            con.Open();
            followersCnt.Text = (new SqlCommand("select followers from users where userName='" + cur + "'", con).ExecuteScalar()).ToString();
            con.Close();

            con.Open();
            shotsCnt.Text = (new SqlCommand("select count(imgPath) from posts where userName='" + cur + "'", con).ExecuteScalar()).ToString();
            con.Close();

            con.Open();
            SqlDataReader sdr = new SqlCommand("select imgPath,PostDate from posts where username='" + cur + "' order by PostDate desc\r\n", con).ExecuteReader();
            while (sdr.Read())
            {
                Label nw = new Label();
                nw.Text = "<img src=\"" + sdr["imgPath"] + "\" alt=\"Photo\" />";
                photos.Controls.Add(nw);
            }
            con.Close();

            con.Open();
            sdr = new SqlCommand("select * from Follow where userNameFrom = '" + user.usrname + "' and userNameTo = '" + cur + "'", con).ExecuteReader();
            sdr.Read();
            if(sdr.HasRows)
            {
                follow.Text = "Followed";
            }
            con.Close();
        }
        protected void mode_Click(object sender, EventArgs e)
        {
            string curU= Request.QueryString["id"];
            if (Session["d"] != null)
            {
                if (Session["d"].ToString() == "T")
                {
                    Session["d"] = "F";
                    string[] cur = Request.RawUrl.Split('?');
                    if (cur.Length > 1) Response.Redirect(cur[0] +"?id="+curU+ "&d=F");
                    else Response.Redirect(Request.RawUrl + "?id=" + curU + "&d=F");
                }
                else
                {
                    Session["d"] = "T";
                    string[] cur = Request.RawUrl.Split('?');
                    if (cur.Length > 1) Response.Redirect(cur[0] + "?id=" + curU + "&d=T");
                    else Response.Redirect(Request.RawUrl + "?id=" + curU + "&d=T");
                }
            }
            else
            {
                Session["d"] = "T";
                string[] cur = Request.RawUrl.Split('?');
                if (cur.Length > 1) Response.Redirect(cur[0] + "?id=" + curU + "&d=T");
                else Response.Redirect(Request.RawUrl + "?id=" + curU + "&d=T");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("../LoginAndRegisterPages/Login.aspx");
        }

        protected void follow_Click(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            string cur = Request.QueryString["id"];
            if (follow.Text == "Follow")
            {
                con.Open();
                new SqlCommand("insert into Follow values('" + user.usrname + "','" + cur + "')", con).ExecuteNonQuery();
                con.Close();
                con.Open();
                new SqlCommand("update users set followers = (select followers from users where userName= '"+cur+"' )+1 where userName = '"+cur+"'", con).ExecuteNonQuery();
                con.Close();
            }
            else
            {
                con.Open();
                new SqlCommand("delete from Follow where userNameFrom = '" + user.usrname + "' and userNameTo = '" + cur + "'", con).ExecuteNonQuery();
                con.Close();
                con.Open();
                new SqlCommand("update users set followers = (select followers from users where userName= '" + cur + "' )-1 where userName = '" + cur + "'", con).ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("ProfileGuest.aspx?id="+cur);
        }
    }
}