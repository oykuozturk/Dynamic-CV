using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicCvProject
{
    public partial class YetenekSil : System.Web.UI.Page
    {
        DB_CV_EntityEntities db = new DB_CV_EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = Convert.ToInt32(Request.QueryString["ID"]);
            var ytnk = db.Tbl_Yetenekler.Find(x);
            db.Tbl_Yetenekler.Remove(ytnk);
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}