using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SelfAspNetCSharp
{
    public partial class ExecuteReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var setting = ConfigurationManager.ConnectionStrings["SelfAsp"];

            using (var connection = new SqlConnection(setting.ConnectionString))
            {
                var command = new SqlCommand("SELECT title FROM Book WHERE publish = @publish", connection);
                command.Parameters.AddWithValue("@publish", "翔泳社");

                connection.Open();
                var reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Response.Write(reader["title"] + "<br />");
                }

                connection.Close();
            }
        }
    }
}