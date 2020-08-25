using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Report_Bribe
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null) {
                Response.Redirect("~/index.aspx");
            }

            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select name from users where email='"+Session["email"].ToString()+"'",con);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                UserNameLabel.Text = rdr[0].ToString();
            }
            else {
                Session.Clear();
                Response.Redirect("~/index.aspx");
            }
            con.Close();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[complaints]
                       ([email]
                       ,[title]
                       ,[description]
                       ,[date])
                 VALUES
                       ('"+Session["email"].ToString()+"','"+Title.Text+"','"+Description.Text+"','"+Date.Text+"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Title.Text = "";
            Description.Text = "";
            Date.Text = "";
            SubmitLabel.Visible = true;
        }
    }
}