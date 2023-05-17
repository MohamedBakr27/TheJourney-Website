using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.AdminPages.NewFolder1
{
    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");

            con.Open();
            SqlCommand com = new SqlCommand("Select top(5)U.userName [Username] , F.FlightFrom[Coming from],F.FlightTo[Going to],F.FlightDate[Reservation Date],F.Price[Earning]\r\nfrom userFlight U left outer join Flight F\r\non F.FlightNo = U.FlightNo order by FlightDate desc", con);
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
                warn.Text = "There are no flights!";
                con.Close();
            }
            con.Open();
            object cnt = new SqlCommand("select count(distinct userName) from userFlight", con).ExecuteScalar();
            if (cnt != null) hapC.Text = "<h1>" + cnt + "</h1>";
            else hapC.Text = "<h1>0</h1>";
            con.Close();

            con.Open();
            if ((int)(new SqlCommand("select count(Price) from Flight", con).ExecuteScalar()) != 0)
            {
                con.Close();
                con.Open();
                earnS.Text = "<h1>$" + new SqlCommand("select sum(A.Price) from (select F.Price from userFlight U left outer join Flight F on F.FlightNo = U.FlightNo) A\r\n", con).ExecuteScalar() + "</h1>";
                con.Close();
            }
            else
            {
                earnS.Text = "<h1>$0</h1>";
                con.Close();
            }

            con.Open();
            object dist = new SqlCommand("select count(distinct FlightTo) from Flight", con).ExecuteScalar();
            if (dist != null) distC.Text = "<h1>" + dist + "</h1>";
            else distC.Text = "<h1>0</h1>";
            con.Close();

            con.Open();
            msgCnt.Text = (new SqlCommand("select count(MsgID) from Msgs", con).ExecuteScalar()).ToString();
            con.Close();
        }
    }
}