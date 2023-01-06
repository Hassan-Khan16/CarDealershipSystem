using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarDealershipSystem
{
    public partial class UpdateCarDetails : System.Web.UI.Page
    {
        static string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showtable();
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayAds.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                string carid = TextBox1.Text.ToUpper();
                int make = int.Parse(TextBox2.Text);
                string model = TextBox3.Text;
                string company = TextBox4.Text;
                int price = int.Parse(TextBox5.Text);
                conn.Open();
                //  string check = "select * from Cardetails where carid= '" + carid + "'and make='" + make + "'and model='" + model + "'and company='" + company + "'and price='" + price + "'and sellerid='" + Application["loginseller"].ToString() + "'";
                //string check = "select * from Cardetails where carid=@carid ,make= @make,  model=@model,  company=@company, price=@price, sellerid=@sellerid";

                string updatesp = ("exec Updatecardetails '" + carid + "','" + make + "','" + model + "','" + company + "','" + price + "'  ,'" + Application["loginseller"].ToString() + "'   "); ;
                SqlCommand cmd = new SqlCommand(updatesp, conn);

                //SqlCommand cmd2 = new SqlCommand(check, conn);
                //cmd2.ExecuteNonQuery();
                //cmd2.Parameters.AddWithValue("@carid", carid);
                //cmd2.Parameters.AddWithValue("@make", make);
                //cmd2.Parameters.AddWithValue("@model", model);
                //cmd2.Parameters.AddWithValue("@company", company);
                //cmd2.Parameters.AddWithValue("@sellerid", Application["loginseller"].ToString());
                //SqlDataReader reader = cmd2.ExecuteReader();
                //if (reader.HasRows)
                //{

                showtable();
                cmd.ExecuteNonQuery();
                conn.Close();

                // }
                //else
                //{
                //    Response.Write("NOPE");
                //}

            }
            catch (Exception )
            {
               // Response.Write(ex.Message);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong, Try again later');", true);

            }
        }
        public object showtable()
        {

            SqlDataAdapter sda = new SqlDataAdapter("exec Updatecardetails  @carid= carid ,@make= 0 ,@model='',@company='',@price=0, @sellerid='' ", conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string carid = TextBox1.Text.ToUpper();

                conn.Open();

                string dltimg = ("exec dltfromImg '" + carid + "'   ");

                using (SqlCommand cmd2 = new SqlCommand(dltimg, conn))

                {
                    // SqlDataReader sqldr = cmd.ExecuteReader();
                    // if (sqldr.Read())
                    {
                        SqlDataAdapter sda = new SqlDataAdapter("exec dltfromImg  @carid='' ", conn);
                        cmd2.ExecuteNonQuery();

                    }
                    //else
                    //{
                    //    ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('You cannot delete any other car ad');",true);
                    //}

                }
                string carid2 = carid;
                string dltcar = ("exec Deletecardetails '" + carid2 + "'   ");
                using (SqlCommand cmd = new SqlCommand(dltcar, conn))

                {

                    // SqlDataReader sqldr = cmd.ExecuteReader();
                    // if (sqldr.Read())
                    {
                        SqlDataAdapter sda = new SqlDataAdapter("exec Deletecardetails  @carid='' ", conn);
                        DataSet ds = new DataSet();
                        sda.Fill(ds);
                        cmd.ExecuteNonQuery();
                        Label6.Visible = true;
                        Label6.Text = "The record '" + carid + "' has been deleted";

                    }
                    //else
                    //{
                    //    ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('You cannot delete any other car ad');",true);
                    //}

                    conn.Close();
                }
            }
            catch (Exception)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Something went wrong, Try again later');", true);

            }

        }
    }
}
