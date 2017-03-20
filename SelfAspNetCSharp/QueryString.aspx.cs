using System;

namespace SelfAspNetCSharp
{
    public partial class QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                lblResult.Text = Request.QueryString["id"];
            }
        }
    }
}