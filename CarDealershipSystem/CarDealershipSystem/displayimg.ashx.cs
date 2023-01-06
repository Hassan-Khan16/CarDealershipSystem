using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CarDealershipSystem
{
    /// <summary>
    /// Summary description for displayimg
    /// </summary>
    public class displayimg : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string constr = System.Configuration.ConfigurationManager.ConnectionStrings["projectDBfinalConnectionString"].ToString();
            SqlConnection  conn= new SqlConnection(constr);
            conn.Open();
            string sTSQL = "select * from Images";
            SqlCommand objCmd = new SqlCommand(sTSQL, conn);
            objCmd.CommandType = CommandType.Text;
            object data = objCmd.ExecuteScalar();
            conn.Close();
            objCmd.Dispose();
            context.Response.BinaryWrite((byte[])data);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}