using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.ProfilePages
{
    public partial class Feed : System.Web.UI.Page
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
            
        }
        protected void mode_Click(object sender, EventArgs e)
        {
            if (Session["d"] != null)
            {
                if (Session["d"].ToString() == "T")
                {
                    Session["d"] = "F";
                    Response.Redirect("Feed.aspx?d=F");
                }
                else
                {
                    Session["d"] = "T";
                    Response.Redirect("Feed.aspx?d=T");
                }
            }
            else
            {
                Session["d"] = "T";
                Response.Redirect("Feed.aspx?d=T");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("../LoginAndRegisterPages/Login.aspx");
        }

        protected void post_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            string pth = e.CommandArgument.ToString().Split(',')[0];
            string ttl = e.CommandArgument.ToString().Split(',')[1];
            con.Open();
            new SqlCommand("update posts set Likes = (select Likes from posts where imgPath='"+pth+"' and Title='"+ttl+"')+1 where imgPath='"+pth+"' and Title='"+ttl+"'\r\n", con).ExecuteNonQuery();
            con.Close();
            Response.Redirect("Feed.aspx");
        }
    }
}