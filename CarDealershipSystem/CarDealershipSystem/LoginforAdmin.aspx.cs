using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarDealershipSystem
{
    public partial class LoginforAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string adminid = TextBox1.Text.ToLower();
            string pass = TextBox2.Text.ToLower();
            string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                conn.Open();
                ///
                string extract = "select * from adminsCredentials where adminid ='" + adminid + "'and adminpass='" + pass + "'";
                using (SqlCommand cmd = new SqlCommand(extract, conn))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                       
                        Response.Redirect("Triggers.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('You have not access to admin resources');", true);

                    }
                    conn.Close();

                }
            }
        }
    }
}