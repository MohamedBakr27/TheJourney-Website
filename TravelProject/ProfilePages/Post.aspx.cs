using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace TravelProject.ProfilePages
{
    public partial class Post : System.Web.UI.Page
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
                    Response.Redirect("Post.aspx?d=F");
                }
                else
                {
                    Session["d"] = "T";
                    Response.Redirect("Post.aspx?d=T");
                }
            }
            else
            {
                Session["d"] = "T";
                Response.Redirect("Post.aspx?d=T");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("../LoginAndRegisterPages/Login.aspx");
        }

        protected void post_Click(object sender, EventArgs e)
        {
            User user = (User)Session["User"];
            if (file.PostedFile != null && file.PostedFile.ContentLength > 0)
            {
                if (caption.Text != "")
                {
                    con.Open();
                    string phName = System.IO.Path.GetFileName(file.PostedFile.FileName);
                    file.PostedFile.SaveAs(Server.MapPath("..\\img\\user\\post") + "\\" + phName);
                    new SqlCommand("insert into posts values('..\\img\\user\\post\\" + phName + "',getdate(),'" + caption.Text + "','0','" + user.usrname + "')", con).ExecuteNonQuery();
                    con.Close();
                }
                else
                {
                    warn.ForeColor = Color.Red;
                    warn.Text = "You Should Enter Caption!";
                    return;
                }
            }
            else
            {
                warn.ForeColor = Color.Red;
                warn.Text = "You Should Choose Photo!";
                return;
            }
            warn.ForeColor = Color.Green;
            warn.Text = "You have post successful!";
            return;
        }
    }
}