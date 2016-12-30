using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace SelfAspNetCSharp
{
    public partial class CheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (list.Items.Count > 0)
            {
                lblResult.Text = string.Join(" ", GetSelectedValues(list.Items.Cast<ListItem>()));
            }
        }

        protected void list_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Nothing to do
        }

        private string[] GetSelectedValues(IEnumerable<ListItem> items)
        {
            return (from i in items
                    where i.Selected
                    select i.Value)
                    .ToArray<string>();
        }
    }
}
