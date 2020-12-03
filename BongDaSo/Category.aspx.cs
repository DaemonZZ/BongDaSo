using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BongDaSo
{
    public partial class Category : System.Web.UI.Page
    {
        int pageSize = 3;
        int page = 1;
        int totalPage = 0;
        int idCat = 1;
        int total = 0;
        BongDaSoDataContext dbc = new BongDaSoDataContext();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDataList();
                doPaging();
            }
        }
       
        private void loadDataList()
        {
            int.TryParse("" + Request["page"], out page);
            int.TryParse("" + Request["GiaiDau"], out idCat);
            if (page > 0)
            {
                page = page - 1;
            }
            int startIndex = page * pageSize;
            var totallist = dbc.TinTucs.Where(p => p.idGiaiDau == idCat).OrderByDescending(p => p.ngayDang).OrderByDescending(p => p.gioDang);
            total = totallist.Count();
            var listTin = dbc.TinTucs.Where(p=>p.idGiaiDau==idCat).OrderByDescending(p => p.ngayDang).OrderByDescending(p => p.gioDang).Skip(startIndex).Take(pageSize);
            DataList1.DataSource = listTin;
            DataList1.DataBind();
        }

        private void doPaging()
        {
            System.Diagnostics.Debug.WriteLine(total);
            if(total%pageSize == 0)
            {
                totalPage = (total / pageSize);
            }
            else
            {
                totalPage = (total / pageSize) + 1;
            }
            System.Diagnostics.Debug.WriteLine(totalPage);
            List<int> listPage = new List<int>();
            for(int i = 1; i <= totalPage; i++)
            {
                if (i > 0 && i <= totalPage)
                {
                    listPage.Add(i);
                }
            }
            rpPaging.DataSource = listPage;
            rpPaging.DataBind();
        }

        protected void rpPaging_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

            if (e.Item.ItemIndex < 0) return;
            LinkButton btn = (LinkButton)e.Item.FindControl("btnPage");
            if (btn != null)
            {
               
                btn.Text = (e.Item.ItemIndex + 1).ToString();
                int.TryParse("" + Request["page"], out page);
                if((e.Item.ItemIndex +1) == page)
                {
                    btn.BackColor = Color.Orange;
                }
                btn.PostBackUrl = "Category.aspx?GiaiDau="+idCat+"&page=" + (e.Item.ItemIndex + 1);
            }
        }

    }
   
}