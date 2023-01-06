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
    public partial class LoginforSeller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateSellerAccount.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string sellerid = TextBox1.Text.ToLower();
                Application["loginseller"] = sellerid;
                string pass = TextBox2.Text.ToLower();


                string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    conn.Open();
                    //   string sql = "INSERT INTO userd VALUES(@Name, @cnic, @img)";
                    string extract = " select * from SellerCredentials where sellerid ='" + sellerid + "'and pass='" + pass + "'";
                    using (SqlCommand cmd = new SqlCommand(extract, conn))
                    {
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            Response.Redirect("AdsDetail.aspx");
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Incorrect Email or Password or Register your account');", true);

                        }
                        conn.Close();

                    }


                }
            }
            catch(Exception )
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong');", true);

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string sellerid = TextBox1.Text.ToLower();
                string pass = TextBox2.Text.ToLower();


                string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    conn.Open();
                    //   string sql = "INSERT INTO userd VALUES(@Name, @cnic, @img)";
                    string extract = "select * from SellerCredentials where sellerid ='" + sellerid + "'and pass='" + pass + "'";
                    using (SqlCommand cmd = new SqlCommand(extract, conn))
                    {
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            Response.Redirect("UpdateCarDetails.aspx");
                        }
                        else
                        {


                        }
                        conn.Close();

                    }
                }
            }catch(Exception)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong');", true);

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}