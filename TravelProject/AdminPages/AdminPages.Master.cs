using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.AdminPages
{
    public partial class AdminPages : System.Web.UI.MasterPage
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

            con.Open();
            SqlDataReader sdr = new SqlCommand("select top(5) A.Fname,A.Lname,C.FlightDate,A.Profile_Picture\r\nfrom Users A right outer join (select U.userName [Username] , F.FlightDate\r\nfrom userFlight U left outer join (select top(5) FlightNo,FlightDate from Flight order by FlightDate desc) F\r\non F.FlightNo = U.FlightNo) C on C.Username = A.userName order by C.FlightDate desc", con).ExecuteReader();
            while (sdr.Read())
            {
                Label nw = new Label();
                nw.Text = "<div class=\"update\"><div class=\"profile-photo\"><img src=\"" + sdr["Profile_Picture"] + "\" alt=\"userImg\"/></div><div class=\"message\"><p><b>" + sdr["Fname"] + " " + sdr["Lname"] + " </b>Has made a Reservation.</p><small class=\"text-muted\">" + sdr["FlightDate"] + "</small></div></div>";
                updts.Controls.Add(nw);
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
                    string[] cur = Request.RawUrl.Split('?');
                    if (cur.Length > 1) Response.Redirect(cur[0] + "?d=F");
                    else Response.Redirect(Request.RawUrl + "?d=F");
                }
                else
                {
                    Session["d"] = "T";
                    string[] cur = Request.RawUrl.Split('?');
                    if (cur.Length > 1) Response.Redirect(cur[0] + "?d=T");
                    else Response.Redirect(Request.RawUrl + "?d=T");
                }
            }
            else
            {
                Session["d"] = "T";
                string[] cur = Request.RawUrl.Split('?');
                if (cur.Length > 1) Response.Redirect(cur[0] + "?d=T");
                else Response.Redirect(Request.RawUrl + "?d=T");
            }
        }
    }
}