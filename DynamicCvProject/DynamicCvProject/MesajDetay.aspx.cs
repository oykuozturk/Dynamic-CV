using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicCvProject
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        DB_CV_EntityEntities db = new DB_CV_EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var mesaj = db.Tbl_Iletisim.Find(x);
            TxtAdSoyad.Text = mesaj.AdSoyad;
            TxtMail.Text = mesaj.Mail;
            TxtKonu.Text = mesaj.Konu;
            TxtMesaj.Text = mesaj.Mesaj;
        }
    }
}