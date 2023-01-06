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
    public partial class EnterCredential : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                string sellerid = TextBox4.Text.ToLower();
                Application["id"] = sellerid;
                string pass = TextBox5.Text.ToLower();
                string passconfirm = TextBox6.Text.ToLower();
                Response.Write(Application["sellerid"]);
                Response.Write(Application["id"]);
                CreateSellerAccount csa = new CreateSellerAccount();

                if (Application["sellerid"] != Application["id"])
                {
                    //if this condition is true then proceed ahead of similar id
                    if (passconfirm == pass)
                    {

                        if (TextBox4.Text.Contains("sell"))
                        {
                            Label17.Visible = true;
                            Label17.Text = "ID Registered";
                            Label17.ForeColor = System.Drawing.Color.Red;
                            string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                            using (SqlConnection conn = new SqlConnection(constr))
                            {
                                string sql = "INSERT INTO SellerCredentials VALUES(@sellerid, @pass)";
                                using (SqlCommand cmd2 = new SqlCommand(sql, conn))
                                {
                                    //this connection is saving id and password in database
                                    conn.Close();
                                    conn.Open();

                                    cmd2.Parameters.AddWithValue("@sellerid", sellerid);
                                    cmd2.Parameters.AddWithValue("@pass", pass);
                                    cmd2.ExecuteNonQuery();
                                    conn.Close();
                                    Response.Redirect("LoginforSeller.aspx");
                                }
                            }
                        }
                        else
                        {
                            Label16.Text = "please start your id with SELL ";// give label# 14 from project 
                            Label16.Visible = true;
                            Label16.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        Label17.Text = "Please Enter same password";
                        Label17.Visible = true;
                        Label17.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {

                    Label16.Text = "Please Enter same Seller ID";
                    Label16.Visible = true;
                    Label16.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong, Try again later');", true);

            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
    }
}