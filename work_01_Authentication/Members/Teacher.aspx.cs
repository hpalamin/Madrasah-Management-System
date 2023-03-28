using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace work_01_Authentication
{
    public partial class Ex_01 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            FileUpload fu = (FileUpload)FormView1.FindControl("fuPicture");
            if (fu.HasFile)
            {
                string fileName = Guid.NewGuid() + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Images/" + fileName));
                e.Values["Picture"] = fileName;
            }
        }
    }
}