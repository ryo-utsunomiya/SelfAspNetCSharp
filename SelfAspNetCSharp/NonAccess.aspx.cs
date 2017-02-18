using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SelfAspNetCSharp
{
    public partial class NonAccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var setting = ConfigurationManager.ConnectionStrings["SelfAsp"];
            var adapter = new SqlDataAdapter("SELECT * FROM Book WHERE publish = @publish", setting.ConnectionString);
            adapter.SelectCommand.Parameters.AddWithValue("@publish", "翔泳社");
            var ds = new DataSet();
            adapter.Fill(ds, "Book");

            for (int i = 0; i < ds.Tables["Book"].Rows.Count; i++)
            {
                Response.Write(ds.Tables["Book"].Rows[i]["title"] + "<br />");
            }
        }
    }
}