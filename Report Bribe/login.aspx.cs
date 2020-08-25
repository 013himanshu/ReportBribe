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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                Response.Redirect("~/dashboard.aspx");
            }
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select COUNT(*) from users Where email='"+LoginEmailTxt.Text+"' AND password='"+LoginPswTxt.Text+"'",con);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Session["email"] = LoginEmailTxt.Text;
                Response.Redirect("~/dashboard.aspx");
            }
            else {
                ErrorLabel.Visible = true;
            }
        }
    }
}