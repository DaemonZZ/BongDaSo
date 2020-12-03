using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BongDaSo
{
    public partial class Desc : System.Web.UI.Page
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        TinTucBLL tin = new TinTucBLL();
        LoaiTinBLL loai = new LoaiTinBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void FormView2_DataBound(object sender, EventArgs e)
        {
            Label lb = (Label)FormView2.FindControl("Label6");
            lb.Text = loai.getLoaiTin(int.Parse(lb.Text));
        }
    }
}