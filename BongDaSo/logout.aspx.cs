﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BongDaSo
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["admin"] = false;
            Session["partner"] = false;
            Session["viewer"] = false;
            Session["user"] = false;
            Session["username"] = null;
            Response.Redirect("/");
        }
    }
}