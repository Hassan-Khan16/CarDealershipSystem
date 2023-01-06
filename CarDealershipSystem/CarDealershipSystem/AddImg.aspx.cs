using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarDealershipSystem
{
    public partial class AddImg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string carid = Application["idGenerator"].ToString();
            try
            {
                if (FileUpload1.HasFile)
                {
                    ////2nd method --WORKING METHOD
                    ///
                    /// 
                    /////SAVING DATA IN SQL
                    ///
                    byte[] bytes;
                    using (BinaryReader br = new BinaryReader(FileUpload1.PostedFile.InputStream))
                    {
                        bytes = br.ReadBytes(FileUpload1.PostedFile.ContentLength);
                    }

                    // string savepath = "~/Images/" + Filename;
                    //string FileName = "";
                    //FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    //Save files to disk

                    //string savepath = "~/Images/" + FileName;

                    //Secondmethod to save images
                    // +System.Guid.NewGuid() + FileUpload1.FileName
                    string filePath = Server.MapPath("~/carpics/" + Path.GetFileName(FileUpload1.FileName));
                    FileUpload1.SaveAs(filePath);

                    string link = "carpics/" + Path.GetFileName(FileUpload1.FileName);
                    //int getPos = filePath.LastIndexOf("\\");
                    //int len = filePath.Length;
                    //string getPath = filePath.Substring(getPos, len - getPos);
                    //string pathToStore = getPath.Remove(0, 1);
                    ///ENDS HERE
                    string constr = ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(constr))
                    {
                        string sql = "INSERT INTO Images VALUES( @img,@Name, @carid)";
                        using (SqlCommand cmd = new SqlCommand(sql, conn))
                        {
                            cmd.Parameters.AddWithValue("@img", link);
                            cmd.Parameters.AddWithValue("@name", name);
                            cmd.Parameters.AddWithValue("@carid", carid);
                            conn.Open();
                            cmd.ExecuteNonQuery();
                            conn.Close();

                        }
                    }
                    Label4.Visible = true;
                    Response.Redirect("DisplayAds.aspx");
                }
                //else
                //{
                //    Label17.Visible = true;
                //}
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
           
        }
    }
}