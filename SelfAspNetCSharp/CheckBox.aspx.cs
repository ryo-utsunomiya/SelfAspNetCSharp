using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfAspNetCSharp
{
    public partial class CheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void list_SelectedIndexChanged(object sender, EventArgs e)
        {
            var values = new List<string>();

            foreach(ListItem item in list.Items)
            {
                if (item.Selected)
                {
                    values.Add(item.Value);
                }
            }

            lblResult.Text = String.Join(" ", values);
        }
    }
}