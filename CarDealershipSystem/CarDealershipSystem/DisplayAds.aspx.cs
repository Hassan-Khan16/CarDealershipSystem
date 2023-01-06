using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CarDealershipSystem
{
    public partial class DisplayAds : System.Web.UI.Page
    {
        static string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(constr);

       
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{
            //    string sql = "SELECT * from images";
            //    sql += "(*) Cardetails";
            //    sql += "from images i inner join Cardetails c on c.carid=i.carid";
            //    GridView1.DataSource = sql;
            //    GridView1.DataBind();
            //}
            if (!IsPostBack)
            {
                showtable();
                conn.Close();

                ////////////FOR HIDING BUTTON//////////////////////////
                string extract = "select * from buyerCredentials";

                using (SqlCommand cmd2 = new SqlCommand(extract, conn))
                {
                    conn.Open();
                    cmd2.Connection = conn;
                    SqlDataReader reader = cmd2.ExecuteReader();
                    if (reader.Read())
                    {

                        //if (reader.GetSqlValues())
                        //{
                        //    Button4.Visible = false;
                        //}
                        //else if (A)
                        //{
                        //    Button4.Visible = true;
                        //}
                        //else
                        //{
                        //    Button4.Visible = true;
                        //}
                    }


                }
            }


        }

        string extract2 = "exec SPdisplaycar @carid= '',@make= '',@model='', @company='',@price='',@sellerid='' ";
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataReader dr = null;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                //string extract = "Select * from Cardetails";
                //string sql = "SELECT * from images";
                //sql += "(*) Cardetails";
                //sql += "from images i inner join Cardetails c on c.carid=i.carid";
                //GridView1.DataSource = sql;
                //GridView1.DataBind();
                //using (SqlCommand cmd = new SqlCommand(sql, conn))
                //{
                //    SqlDataAdapter sd = new SqlDataAdapter(cmd);
                //    DataTable dt = new DataTable();
                //    sd.Fill(dt);
                //}


                using (SqlCommand cmd = new SqlCommand(extract2, conn))

                {
                    //byte[] image =(byte[]) cmd.ExecuteScalar();
                    //dr = cmd.ExecuteReader();

                    //    string str = Convert.ToString(DateTime.Now.ToFileTime());
                    //    FileStream fs = new FileStream(str, FileMode.CreateNew, FileAccess.Write);
                    //    fs.Write(image, 0, image.Length);
                    //    fs.Flush();
                    //SqlDataAdapter sda = new SqlDataAdapter(extract2, conn);
                    //DataSet ds = new DataSet();
                    //sda.Fill(ds);
                    //fs.Close();


                    //----------------3rd mehthod--------
                    //cmd.CommandText = extract2;
                    //cmd.ExecuteNonQuery();
                    //// Get your image from database, I hope it is stored in binary format, so it would return a byte array
                    //byte[] imagem = (byte[])(dr["~/Images/"]);
                    //string PROFILE_PIC = Convert.ToBase64String(imagem);

                    //    Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", PROFILE_PIC);
                    //conn.Close();
                    conn.Open();
                    showtable();
                    cmd.CommandType = CommandType.StoredProcedure;//SP                    
                    cmd.ExecuteNonQuery();
                    conn.Close();


                }


            }

        }
        public object showtable()
        {

            SqlDataAdapter sda = new SqlDataAdapter(extract2, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }
        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Response.Redirect("LoginforSeller.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //Delete button webform direction

        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("LoginforAdmin.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}

