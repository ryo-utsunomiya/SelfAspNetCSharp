using System;

namespace SelfAspNetCSharp
{
    public partial class ViewStateGame : System.Web.UI.Page
    {
        private readonly string count = "count";
        private readonly string answer = "answer";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;

            ViewState[count] = 0;
            ViewState[answer] = new Random().Next(100);
        }

        protected void btnSend_OnClick_Click(object sender, EventArgs e)
        {
            ViewState[count] = (int)ViewState[count] + 1;

            if (ViewState[answer].ToString().Equals(txtNum.Text))
            {
                lblResult.Text = $"{ViewState[count]} times";
                ViewState.Clear();
            }
            else
            {
                lblResult.Text = (int)ViewState[answer] > int.Parse(txtNum.Text) ?
                    "More larger" : "More smaller";
            }
        }
    }
}