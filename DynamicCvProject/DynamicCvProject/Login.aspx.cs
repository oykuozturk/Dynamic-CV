using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DynamicCvProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DB_CV_EntityEntities db = new DB_CV_EntityEntities();
        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.Tbl_Admin where x.KullaniciAd == TextBox1.Text && x.Sifre == TextBox2.Text select x;
            if (sorgu.Any())
            {
                Response.Redirect("Iletisim.aspx");
            }
            else
            {
                Response.Write("Hatalı kullanıcı adı veya şifre!");
            }
        }
    }
}