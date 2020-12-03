using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
                rpSlider.DataSource = tinMoi.getTop5LasterPost();
                rpSlider.DataBind();

                rpLasterPost.DataSource = tinMoi.getTop5LasterPost();
                rpLasterPost.DataBind();

                rpMostPop.DataSource = tinMoi.getTop5PopularPost();
                rpMostPop.DataBind();

                Repeater4.DataSource = tinMoi.getTop6LasterPost();
                Repeater4.DataBind();

                Image2.ImageUrl = tinMoi.getFisrt_4_typeNews().cover;
                HyperLink2.NavigateUrl = "/";
                HyperLink2.Text = tinMoi.getFisrt_4_typeNews().title;
                Label3.Text = tinMoi.getFisrt_4_typeNews().tomTat;

                Image3.ImageUrl = tinMoi.getFisrt_5_typeNews().cover;
                HyperLink3.NavigateUrl = "/";
                HyperLink3.Text = tinMoi.getFisrt_5_typeNews().title;
                Label4.Text = tinMoi.getFisrt_5_typeNews().tomTat;
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