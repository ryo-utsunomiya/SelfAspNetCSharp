using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfAspNetCSharp
{
    public partial class SqlParam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sds_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            lblNum.Text = e.Command.Parameters["@recnum"].Value.ToString();
        }

        protected void list_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void sds_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}