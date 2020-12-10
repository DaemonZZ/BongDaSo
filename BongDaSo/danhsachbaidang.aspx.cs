using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BongDaSo
{
    public partial class danhsachbaidang : System.Web.UI.Page
    {
        int userid;
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        TinTucBLL tintuc = new TinTucBLL();
        TinhTrangBLL tinhtrang = new TinhTrangBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((int)Session["userid"] == 0)
            {
                Response.Redirect("error.aspx");
            } else
            {
                int userid = (int)Session["userid"];
                User user = dbc.Users.Where(p => p.id == userid).FirstOrDefault();
                
               
            }
           
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.DataItem != null)
            {
                int stt = int.Parse(e.Row.Cells[4].Text);
                e.Row.Cells[4].Text = dbc.TinhTrangs.Where(p => p.id == stt).FirstOrDefault().Status;
            }
        }
    }
}