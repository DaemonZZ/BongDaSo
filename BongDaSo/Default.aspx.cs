using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BongDaSo
{
    public partial class _Default : Page
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        TinTucBLL tinMoi = new TinTucBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                        
                Image2.ImageUrl = tinMoi.getFisrt_4_typeNews().cover;
                HyperLink2.NavigateUrl = "/";
                HyperLink2.Text = tinMoi.getFisrt_4_typeNews().title;
                Label3.Text = tinMoi.getFisrt_4_typeNews().tomTat;

            }
        }

        protected void FormView1_DataBound(object sender, EventArgs e)
        {

        }

        protected void FormView1_DataBound1(object sender, EventArgs e)
        {
            Image img = (Image)FormView1.FindControl("imgCover");
            img.ImageUrl = tinMoi.getfist().cover;

            HyperLink lnk = (HyperLink)FormView1.FindControl("linkLastPost");
            lnk.Text = tinMoi.getfist().title;
        }
    }
}