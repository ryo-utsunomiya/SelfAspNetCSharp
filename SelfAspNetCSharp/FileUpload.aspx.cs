using System;
using System.IO;

namespace SelfAspNetCSharp
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (upload.HasFile)
            {
                var postfile = upload.PostedFile;
                var uppath = Server.MapPath("~/App_Data/doc") + Path.GetFileName(postfile.FileName);
                postfile.SaveAs(uppath);
                lblResult.Text = postfile.FileName + " is uploaded.";
            }
        }
    }
}