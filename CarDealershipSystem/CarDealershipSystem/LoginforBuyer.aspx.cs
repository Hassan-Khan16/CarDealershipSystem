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
    public partial class LoginforBuyer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string buyerid = TextBox1.Text.ToLower();
                Application["loginbuyerid"] = buyerid;
                string pass = TextBox2.Text.ToLower();


                string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    conn.Open();
                    string extract = "select * from buyerCredentials where buyerid ='" + buyerid + "'and pass='" + pass + "'";
                    using (SqlCommand cmd = new SqlCommand(extract, conn))
                    {
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            Response.Redirect("DisplayAds.aspx");
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Incorrect Email or Password or Register your account');", true);
                        }
                        conn.Close();

                    }


                }
            }
            catch (Exception )
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong, Try again later');", true);

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateBuyerAccount.aspx");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}