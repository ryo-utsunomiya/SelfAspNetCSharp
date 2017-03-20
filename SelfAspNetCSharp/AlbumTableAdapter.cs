using System.ComponentModel;
using System.Data.SqlClient;

namespace SelfAspNetCSharp
{
    public partial class AlbumTableAdapter
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public int GetAlbumPaging(int startRowIndex, int maximumRows)
        {
            var command = new SqlCommand();

            return 0;
        }
    }
}