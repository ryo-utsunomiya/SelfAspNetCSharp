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

        }

        protected void list_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblResult.Text = String.Join(" ", GetSelectedValues(list.Items));
        }

        private IEnumerable<string> GetSelectedValues(ListItemCollection items)
        {
            return items.Cast<ListItem>()
                .Where(i => i.Selected)
                .Select(i => i.Value);
        }
    }
}