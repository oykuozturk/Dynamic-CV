using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicCvProject
{
    public partial class Iletisim : System.Web.UI.Page
    {
        DB_CV_EntityEntities db = new DB_CV_EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var mesajlar = db.Tbl_Iletisim.ToList();
            Repeater1.DataSource = mesajlar;
            Repeater1.DataBind();
        }
    }
}