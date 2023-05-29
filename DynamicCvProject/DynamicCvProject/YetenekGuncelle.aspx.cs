using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DynamicCvProject
{

    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        DB_CV_EntityEntities db = new DB_CV_EntityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]); //guncelle butonuna tıklanıldıgında alınan id degeri tasindi.
            if (Page.IsPostBack == false)
            {
                var deger = db.Tbl_Yetenekler.Find(x);
                TextBox1.Text = deger.Yetenek;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var deger = db.Tbl_Yetenekler.Find(x);
            deger.Yetenek = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("Yeteneklerim.aspx");
        }
    }
}