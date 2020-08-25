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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null) {
                Response.Redirect("~/dashboard.aspx");
            }
        }

        protected void RegBtn_Click(object sender, EventArgs e)
        {            
            string cs=ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con=new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[users]
                       ([name]
                       ,[email]
                       ,[mbl]
                       ,[password])
                 VALUES
                       ('"+RegNameTxt.Text+"','"+RegEmailTxt.Text+"','"+RegMblTxt.Text+"','"+RegPswTxt.Text+"')",con);
            con.Open();
            cmd.ExecuteNonQuery();            
            con.Close();
            Session["email"] = RegEmailTxt.Text;
            Response.Redirect("~/dashboard.aspx");
        }
    }
}