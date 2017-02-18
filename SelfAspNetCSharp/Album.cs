using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SelfAspNetCSharp
{
    public class Album
    {
        private const string ConnectionName = "SelfAsp";

        [DataObjectMethod(DataObjectMethodType.Select, true)]
        public DataSet GetAlbumData(string category)
        {
            var command = new SqlCommand()
            {
                Connection = CreateSqlConnection(ConnectionName)
            };

            const string sql = "SELECT aid, comment, updated, favorite, category FROM Album";

            if (category == "無選択")
            {
                command.CommandText = sql;
            }
            else
            {
                command.CommandText = sql + " WHERE category = @category";
                command.Parameters.AddWithValue("@category", category);
            }

            var ds = new DataSet();
            new SqlDataAdapter(command).Fill(ds, "Album");

            return ds;
        }

        [DataObjectMethod(DataObjectMethodType.Delete, true)]
        public int DeleteAlbumData(string aid)
        {
            var connection = CreateSqlConnection(ConnectionName);
            var command = new SqlCommand("DELETE FROM Album WHERE aid = @aid", connection);
            command.Parameters.AddWithValue("@aid", aid);

            return ExecuteNonQuery(connection, command);
        }

        private static string GetConnectionString(string connectionName)
        {
            return ConfigurationManager.ConnectionStrings[connectionName].ConnectionString;
        }

        private static SqlConnection CreateSqlConnection(string connectionName)
        {
            return new SqlConnection(GetConnectionString(connectionName));
        }

        private static int ExecuteNonQuery(IDbConnection connection, IDbCommand command)
        {
            connection.Open();
            int rows = command.ExecuteNonQuery();
            connection.Close();

            return rows;
        }
    }
}