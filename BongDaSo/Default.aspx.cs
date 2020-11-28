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
                rpSlider.DataSource = dbc.TinTucs;
                rpSlider.DataBind();

                rpLasterPost.DataSource = dbc.TinTucs;
                rpLasterPost.DataBind();

               
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