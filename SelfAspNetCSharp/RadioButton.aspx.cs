﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SelfAspNetCSharp
{
    public partial class RadioButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void list_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblResult.Text = "「" + list.SelectedValue + "」が選択されました。";
        }
    }
}