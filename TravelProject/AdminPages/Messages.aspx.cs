using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.AdminPages.NewFolder1
{
    public partial class Messages : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");

            con.Open();
            msgCnt.Text = (new SqlCommand("select count(MsgID) from Msgs", con).ExecuteScalar()).ToString();
            con.Close();
        }
        protected void msgsBlock_Click(object sender, ListViewCommandEventArgs e)
        {
            con.Open();
            new SqlCommand("delete from Msgs where MsgId = '" + e.CommandArgument.ToString() + "'", con).ExecuteNonQuery();
            con.Close();
            Response.Redirect("Messages.aspx");
        }
    }
}