using System;

namespace SelfAspNetCSharp
{
    public partial class ViewStateGame : System.Web.UI.Page
    {
        private int ViewStateCount
        {
            get { return (int)ViewState["count"]; }
            set { ViewState["count"] = value; }
        }

        private int ViewStateAnswer
        {
            get { return (int) ViewState["answer"]; }
            set { ViewState["answer"] = value; }
        }
         
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;

            ViewStateCount = 0;
            ViewStateAnswer = new Random().Next(100);
        }

        protected void btnSend_OnClick_Click(object sender, EventArgs e)
        {
            ViewStateCount++;

            int num;
            if (!int.TryParse(txtNum.Text, out num))
            {
                lblResult.Text = "Invalid input";
                return;
            }

            if (ViewStateAnswer == num)
            {
                lblResult.Text = $"{ViewStateCount} times";
                ViewState.Clear();
            }
            else
            {
                lblResult.Text = ViewStateAnswer > num ? "More larger" : "More smaller";
            }
        }
    }
}