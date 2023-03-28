using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using work_01_Authentication.Models;

namespace work_01_Authentication
{
    public partial class frmStuff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable ListView1_GetData()
        {
            workContext db = new workContext();
            return db.Stuffs.AsQueryable();
        }

        public void ListView1_InsertItem(Stuff st)
        {

            workContext db = new workContext();
            db.Stuffs.Add(st);
            db.SaveChanges();
        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_UpdateItem(int id)
        {

        }

        // The id parameter name should match the DataKeyNames value set on the control
        public void ListView1_DeleteItem(int id)
        {

        }
        //public IQueryable<department> ddl_GetData()
        //{
        //    EviDbContext db = new EviDbContext();
        //    return db.departments.AsQueryable();
        //}

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {
            FileUpload fu = (FileUpload)ListView1.InsertItem.FindControl("fuPicture");
            if (fu.HasFile)
            {
                string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Images/") + fileName);
                e.Values["picture"] = fileName;
            }
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            //FileUpload fu = (FileUpload)ListView1.InsertItem.FindControl("fuPicture");
            //if (fu.HasFile)
            //{
            //    string fileName = Guid.NewGuid() + "_" + Path.GetExtension(fu.FileName);
            //    fu.SaveAs(Server.MapPath("~/Images/" + fileName));

            //}
        }
    }
}