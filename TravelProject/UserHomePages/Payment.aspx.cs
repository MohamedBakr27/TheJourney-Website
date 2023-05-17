using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.UserHomePages
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");
            string f = Request.QueryString["from"];
            string t = Request.QueryString["to"];
            string ff = "", tt = "";
            foreach(char c in f)
            {
                if (c != ' ') ff+=c;
            }
            foreach (char c in t)
            {
                if (c != ' ') tt += c;
            }
            int diff = 0;
            for(int i =0;i<Math.Min(ff.Length,tt.Length);i++)
            {
                diff += Math.Abs((int)tt[i] - ff[i]);
            }
            cost.Text = "Flight Cost: "+diff.ToString()+"$";
        }

        protected void bookBut_Click(object sender, EventArgs e)
        {
            if(yy.SelectedItem.Text!="year"&&month.SelectedItem.Text!="month"&&number.Text!=""&&cvv.Text!="")
            {
                con.Open();
                SqlDataReader sdr = new SqlCommand("select * from creditCards where creditNum='"+number.Text+"' and creditCVV='"+cvv.Text+"' and creditExp='"+yy.Text+"-"+month.Text+"'", con).ExecuteReader();
                sdr.Read();
                if (sdr.HasRows)
                {
                    long balance = (long)sdr["balance"];
                    string n = cost.Text.Split(' ')[2];
                    long need = long.Parse(n.Substring(0,n.Length-1));
                    if(balance>=need)
                    {
                        con.Close();
                        con.Open();
                        new SqlCommand("update creditCards set balance = '" + (balance - need) + "' where creditNum = '"+number.Text+"'", con).ExecuteNonQuery();
                        con.Close();

                        User user = (User)Session["User"];
                        string f = Request.QueryString["from"];
                        string t = Request.QueryString["to"];
                        string d = Request.QueryString["date"];
                        string fID = user.usrname.Substring(0, 3) + f.Substring(0, 2) + t.Substring(0, 2) + user.email.Substring(0, 3);
                        con.Open();
                        new SqlCommand("insert into Flight values('"+ fID + "','"+need+"','"+f+"','"+t+"','"+d+"')", con).ExecuteNonQuery();
                        con.Close();

                        con.Open();
                        new SqlCommand("insert into userFlight values('"+ fID + "','"+user.usrname+"')", con).ExecuteNonQuery();
                        con.Close();

                        Response.Redirect("Home.aspx");
                        return;
                    }
                    else
                    {
                        warn.Text = "Insufficient balance!";
                    }
                }
                else
                {
                    warn.Text = "Credit Card Data is invalid!";
                }
                con.Close();
            }
        }
    }
}