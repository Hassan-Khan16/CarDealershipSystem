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
    public partial class CreateSellerAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox4.Text.Contains("sell"))
                {
                    string sellerid = TextBox4.Text.ToLower();
                    Application["sellerid"] = sellerid;
                    string sellername = TextBox1.Text.ToLower();
                    string city = TextBox2.Text.ToLower();
                    string phonenumber = TextBox3.Text;


                    // string password = TextBox2.Text.ToLower(); THERE IS NO PASSWORD HERE


                    string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(constr))
                    {
                        string extract = "select * from Sellerdetails where sellerid =@sellerid";
                        using (SqlCommand cmd = new SqlCommand(extract, conn))
                        {
                            //This connection is checking id is registered or not
                            conn.Open();
                            cmd.Parameters.AddWithValue("@sellerid", sellerid);
                            cmd.Connection = conn;
                            SqlDataReader reader = cmd.ExecuteReader();
                            if (reader.HasRows)
                            {
                                Label4.Visible = true;
                                Label4.ForeColor = System.Drawing.Color.Red;
                                Label4.Text = "Id already registered"; // give label# 4 from project
                                conn.Close();
                            }

                            else
                            {
                                Label15.Visible = true;
                                Label15.ForeColor = System.Drawing.Color.Azure;
                                Label15.Text = "Id registered";
                                string sp = "SPSeller";//SP
                                using (SqlCommand cmd2 = new SqlCommand(sp, conn))
                                {
                                    //this connection is saving id and password in database
                                    conn.Close();
                                    conn.Open();
                                    cmd2.CommandType = System.Data.CommandType.StoredProcedure;//SP
                                    cmd2.Parameters.AddWithValue("@sellerid", sellerid);
                                    cmd2.Parameters.AddWithValue("@sellername", sellername);
                                    cmd2.Parameters.AddWithValue("@city", city);
                                    cmd2.Parameters.AddWithValue("@phonenumber", phonenumber);
                                    cmd2.ExecuteNonQuery();
                                    conn.Close();
                                }
                                Response.Redirect("EnterCredential.aspx");
                            }
                        }

                    }
                }
                else
                {
                    Label14.Visible = true; // give label# 14 from project 
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong');", true);

            }

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginforSeller.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}