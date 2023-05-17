using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TravelProject.UserHomePages.NewFolder1
{
    public partial class Book : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(@"Data Source=DESKTOP-IOITRQL;Initial Catalog=Travel;Integrated Security=True");

            User user = (User)Session["User"];
            if (!IsPostBack)
            {
                List<string> data = Countries();
                select1.DataSource = data;
                select1.DataBind();
                select2.DataSource = data;
                select2.DataBind();
            }
            name.Text = user.fname + " " + user.lname;
        }
        protected void bookBut_Click(object sender, EventArgs e)
        {
            if (address.Text != "" && arrivals.Text != "" && leaving.Text != "")
            {
                Response.Redirect("Payment.aspx?from=" + select1.SelectedItem.Text + "&to=" + select2.SelectedItem.Text + "&date=" + leaving.Text);
            }
        }
        public List<string> Countries()
        {
            List<string> list = new List<string>();

            CultureInfo[] cul = CultureInfo.GetCultures(CultureTypes.SpecificCultures);
            foreach (CultureInfo cu in cul)
            {
                RegionInfo reg = new RegionInfo(cu.LCID);
                if (!(list.Contains(reg.EnglishName))) list.Add(reg.EnglishName);
            }
            list.Sort();
            return list;
        }
    }
}