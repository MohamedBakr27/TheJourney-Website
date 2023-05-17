using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Drawing;

namespace TravelProject.ProfilePages
{
    public partial class settings : System.Web.UI.Page
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
            username.Text = "<h2>" + user.fname + " " + user.lname + "</h2>";
            imagePreview1.ImageUrl = user.profile_path;
            imagePreview2.ImageUrl = user.cover_path;
        }
        protected void mode_Click(object sender, EventArgs e)
        {
            if (Session["d"] != null)
            {
                if (Session["d"].ToString() == "T")
                {
                    Session["d"] = "F";
                    Response.Redirect("settings.aspx?d=F");
                }
                else
                {
                    Session["d"] = "T";
                    Response.Redirect("settings.aspx?d=T");
                }
            }
            else
            {
                Session["d"] = "T";
                Response.Redirect("settings.aspx?d=T");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("../LoginAndRegisterPages/Login.aspx");
        }

        protected void conf_Click(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            if (user.pass == confPass.Text)
            {
                if (profilePath.PostedFile != null && profilePath.PostedFile.ContentLength > 0)
                {
                    con.Open();
                    string phName = System.IO.Path.GetFileName(profilePath.PostedFile.FileName);
                    profilePath.PostedFile.SaveAs(Server.MapPath("..\\img\\user\\profile") + "\\" + phName);
                    new SqlCommand("update users set Profile_Picture = '..\\img\\user\\profile\\" + phName + "' where userName='" + user.usrname + "'", con).ExecuteNonQuery();
                    con.Close();
                    user.profile_path = "..\\img\\user\\profile\\" + phName;
                }
                if (first.Text != "")
                {
                    con.Open();
                    new SqlCommand("update users set Fname = '" + first.Text + "' where userName='" + user.usrname + "'", con).ExecuteNonQuery();
                    con.Close();
                    user.fname = first.Text;
                }
                if (last.Text != "")
                {
                    con.Open();
                    new SqlCommand("update users set Lname = '" + last.Text + "' where userName='" + user.usrname + "'", con).ExecuteNonQuery();
                    con.Close();
                    user.lname = last.Text;
                }
                if (email.Text != "")
                {
                    con.Open();
                    new SqlCommand("update users set Email = '" + email.Text + "' where userName='" + user.usrname + "'", con).ExecuteNonQuery();
                    con.Close();
                    user.email = email.Text;
                }
                Session["User"] = user;
                if (pass1.Text != "" && pass2.Text != "")
                {
                    if (pass1.Text == pass2.Text)
                    {
                        con.Open();
                        new SqlCommand("update users set Pass = '" + pass1.Text + "' where userName='" + user.usrname + "'", con).ExecuteNonQuery();
                        con.Close();
                        user.pass = pass1.Text;
                    }
                    else
                    {
                        warn.Text = "Passwords don't match!";
                        return;
                    }
                }
                Session["User"] = user;
                warn1.ForeColor = Color.Green;
                warn1.Text = "Changes Applied Successfully!";
                return;
            }
            else 
            {
                warn1.Text = "Password invalid!";
                return;
            }
        }
    }
}