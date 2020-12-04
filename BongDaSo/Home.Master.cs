using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BongDaSo
{
    public partial class Home : System.Web.UI.MasterPage
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rpNav.DataSource = dbc.GiaiDaus;
                rpNav.DataBind();
            }
        }
    }
}