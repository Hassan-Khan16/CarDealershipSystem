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
    public partial class PostAdd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Random generation for car id
                //Starts
                int length = 4;
                Random random = new Random();
                const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                string carid = new string(Enumerable.Repeat(chars, length).Select(s => s[random.Next(s.Length)]).ToArray());
                Application["idGenerator"] = carid;//Car id, //TO USE IT NEXT FORM
                                                   //Random generation for car id
                                                   //ENDS

                ////////working for ads
                ///

                //car id generated abpove///
                string model = TextBox1.Text.ToLower(); // CAR NAME
                string company = TextBox4.Text.ToLower(); //Manufacturer
                int make = int.Parse(TextBox5.Text); //year
                int price = Convert.ToInt32(TextBox2.Text);

                string sellerid = Application["loginseller"].ToString();
                // string password = TextBox2.Text.ToLower(); THERE IS NO PASSWORD HERE


                string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    string sp = "SPcarsdetails";
                    using (SqlCommand cmd2 = new SqlCommand(sp, conn))
                    {
                        conn.Close();
                        conn.Open();
                        cmd2.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd2.Parameters.AddWithValue("@sellerid", sellerid);
                        cmd2.Parameters.AddWithValue("@carid", carid);
                        cmd2.Parameters.AddWithValue("@make", make);
                        cmd2.Parameters.AddWithValue("@model", model);
                        cmd2.Parameters.AddWithValue("@company", company);
                        cmd2.Parameters.AddWithValue("@price", price);
                        cmd2.ExecuteNonQuery();
                        conn.Close();
                    }

                    Label15.Text = "Id registered";
                    Label15.Visible = true;
                    Label15.ForeColor = System.Drawing.Color.Azure;
                    Response.Redirect("AddImg.aspx");



                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong, Try again later');", true);

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateCarDetails.aspx");
        }
    }
}