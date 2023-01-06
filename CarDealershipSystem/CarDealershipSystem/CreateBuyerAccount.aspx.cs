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
    public partial class CreateBuyerAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label14.Visible = true; // give label# 14 from project 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                if (TextBox2.Text.Contains("buy"))
                {
                    string buyerid = TextBox2.Text;
                    Application["buyerid"] = buyerid;
                    string buyername = TextBox1.Text.ToLower();
                    string city = TextBox3.Text.ToLower();

                    //Name= box1   ID =box2  city= box3
                    string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(constr))
                    {
                        string extract = "select * from Buyerdetails where buyerid =@buyerid";
                        using (SqlCommand cmd = new SqlCommand(extract, conn))
                        {
                            //This connection is checking id is registered or not
                            conn.Open();
                            cmd.Parameters.AddWithValue("@buyerid", buyerid);
                            cmd.Connection = conn;
                            SqlDataReader reader = cmd.ExecuteReader();
                            if (reader.HasRows)
                            {
                                Label4.Visible = true;
                                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Id already registered');", true);

                                conn.Close();
                            }

                            else
                            {
                                //Change sp
                                string spB = "SPBuyerdetails";//SP
                                using (SqlCommand cmd2 = new SqlCommand(spB, conn))
                                {
                                    //this connection is saving id and password in database
                                    conn.Close();
                                    conn.Open();
                                    cmd2.CommandType = System.Data.CommandType.StoredProcedure;//SP
                                    cmd2.Parameters.AddWithValue("@buyerid", buyerid);
                                    cmd2.Parameters.AddWithValue("@buyername", buyername);
                                    cmd2.Parameters.AddWithValue("@city", city);
                                    cmd2.ExecuteNonQuery();
                                    conn.Close();
                                }
                                Response.Redirect("EnterBuyerCredential.aspx");
                            }
                        }

                    }
                    //////////////////////////////////////////////////////////

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please start you ID with buy');", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong, Try again later');", true);

            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}