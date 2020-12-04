using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BongDaSo
{
    public partial class Login : System.Web.UI.Page
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        String pass = "";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var dl =dbc.Users_Search(txtLogin.Text, txtPass.Text);
            int kt = dl.Count();
            if (kt > 0)
            {
                Session["user"] = true;
                Response.Redirect("/");
            }
            else
            {
                lbThongBao.Text = "Sai tên đăng nhập hoặc mật khẩu";
                txtLogin.Text = "";
                txtPass.Text = "";
                txtLogin.Focus();
            }
        }

        
    }
}