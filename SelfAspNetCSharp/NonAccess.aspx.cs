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
            const string tableName = "Book";
            adapter.Fill(ds, tableName);

            for (int i = 0; i < ds.Tables[tableName].Rows.Count; i++)
            {
                Response.Write(ds.Tables[tableName].Rows[i]["title"] + "<br />");
            }
        }
    }
}