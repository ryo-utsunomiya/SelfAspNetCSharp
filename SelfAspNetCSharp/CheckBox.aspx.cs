using System;
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
            var selectedValues = list.Items.Cast<ListItem>()
                .Where(i => i.Selected)
                .Select(i => i.Value);

            lblResult.Text = String.Join(" ", selectedValues);
        }
    }
}