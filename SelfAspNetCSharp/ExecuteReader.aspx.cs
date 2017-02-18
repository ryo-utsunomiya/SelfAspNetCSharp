using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfAspNetCSharp
{
    public partial class ExecuteReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var setting = ConfigurationManager.ConnectionStrings["SelfAsp"];

            using (var db = new SqlConnection(setting.ConnectionString))
            {
                var comm = new SqlCommand("SELECT title FROM Book WHERE publish = @publish", db);
                comm.Parameters.AddWithValue("@publish", "shoeishya");

                db.Open();
                var reader = comm.ExecuteReader();

                do
                {
                    Response.Write(reader["title"] + "<br />");
                } while (reader.Read());

                db.Close();
            }
        }
    }
}