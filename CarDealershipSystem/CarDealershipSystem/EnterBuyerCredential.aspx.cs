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
    public partial class EnterBuyerCredential : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string buyerid = TextBox1.Text;
                Application["bid"] = buyerid;
                string pass = TextBox2.Text;
                string passconfirm = TextBox3.Text;
                if (Application["buyerid"] != Application["bid"])
                {
                    //if this condition is true then proceed ahead of similar id
                    /////
                    ///

                    if (passconfirm == pass)
                    {

                        if (TextBox1.Text.Contains("buy"))
                        {

                            string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                            using (SqlConnection conn = new SqlConnection(constr))
                            {
                                string sql = "INSERT INTO buyerCredentials VALUES(@buyerid, @pass)";
                                using (SqlCommand cmd2 = new SqlCommand(sql, conn))
                                {
                                    //this connection is saving id and password in database
                                    conn.Close();
                                    conn.Open();

                                    cmd2.Parameters.AddWithValue("@buyerid", buyerid);
                                    cmd2.Parameters.AddWithValue("@pass", pass);
                                    cmd2.ExecuteNonQuery();
                                    conn.Close();
                                    Response.Redirect("LoginforBuyer.aspx");
                                }
                            }
                        }
                        else
                        {
                            Label16.Text = "please start your id with BUY ";// give label# 14 from project 
                            Label16.Visible = true;
                            Label16.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please enter similar Password');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please enter similar ID');", true);

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
    }
}