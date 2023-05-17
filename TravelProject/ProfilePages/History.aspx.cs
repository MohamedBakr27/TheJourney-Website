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
    public partial class History : System.Web.UI.Page
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

            con.Open();
            SqlCommand com = new SqlCommand("Select F.FlightFrom[Coming from],F.FlightTo[Going to],F.FlightDate[Date]\r\nfrom (select FlightNo from userFlight where username = '"+user.usrname+"') U left outer join Flight F\r\non F.FlightNo = U.FlightNo order by FlightDate desc", con);
            SqlDataReader sdr = com.ExecuteReader();
            if (sdr.HasRows)
            {
                hist.DataSource = sdr;
                hist.DataBind(); 
                con.Close();
                hist.GridLines = GridLines.None;
                hist.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            else
            {
                warn.Text = "You don't have any flights!";
                con.Close();
            }
        }
        protected void mode_Click(object sender, EventArgs e)
        {
            if (Session["d"] != null)
            {
                if (Session["d"].ToString() == "T")
                {
                    Session["d"] = "F";
                    Response.Redirect("History.aspx?d=F");
                }
                else
                {
                    Session["d"] = "T";
                    Response.Redirect("History.aspx?d=T");
                }
            }
            else
            {
                Session["d"] = "T";
                Response.Redirect("History.aspx?d=T");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("../LoginAndRegisterPages/Login.aspx");
        }
    }
}