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
    public partial class HistoryAdmin : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");

            con.Open();
            SqlCommand com = new SqlCommand("Select U.userName [Username] , F.FlightFrom[Coming from],F.FlightTo[Going to],F.FlightDate[Reservation Date],F.Price[Earning]\r\nfrom userFlight U left outer join Flight F\r\non F.FlightNo = U.FlightNo order by FlightDate desc", con);
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
            msgCnt.Text = (new SqlCommand("select count(MsgID) from Msgs", con).ExecuteScalar()).ToString();
            con.Close();
        }
    }
}