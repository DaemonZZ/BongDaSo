using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace BongDaSo
{

    public partial class NewPost1 : System.Web.UI.Page
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        int d;
        TinTuc tin;



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var lstloai = dbc.LoaiTins;
                cbLoai.DataSource = lstloai;
                cbLoai.DataBind();

                var lstGiai = dbc.GiaiDaus;
                cbDanhMuc.DataSource = lstGiai;
                cbDanhMuc.DataBind();
                if (Request["ID"]!=null)
                {
                    tin = dbc.TinTucs.Where(p => p.id == int.Parse(Request["ID"])).FirstOrDefault();
                    txtTitle.Text = tin.title;
                    cbLoai.SelectedIndex = (int)tin.idLoai-1;
                    cbDanhMuc.SelectedIndex = (int)tin.idGiaiDau-1;
                    txtTomTat.Text = tin.tomTat;
                    
                }
            }
        }

        protected void btnPreview_Click(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtTitle.Text == "")
            {
                showMessage("Tiêu đề không để trống");
            }
            else
            {
                TinTuc t = new TinTuc();
                t.id = dbc.TinTucs.OrderByDescending(p => p.id).First().id + 1;
                t.title = txtTitle.Text;
                t.tomTat = txtTomTat.Text;
                if (imgUp.HasFile)
                {
                    string filename = "Tin/images/" + t.id + imgUp.FileName;
                    string filePath = MapPath(filename);
                    imgUp.SaveAs(filePath);
                    t.cover = filename;
                }
                t.noiDung = Request["area2"];
                int userid = (int)Session["userid"];
                User us = dbc.Users.Where(u => u.id == userid).FirstOrDefault();
                t.id_User = us.id;
                t.ngayDang = DateTime.Now;
                t.luotXem = 0;
                t.doUuTien = 0;
                t.idLoai = int.Parse(cbLoai.SelectedValue);
                t.idGiaiDau = int.Parse(cbDanhMuc.SelectedValue);
                dbc.TinTuc_Insert(t.id, t.title, t.tomTat, t.cover, t.noiDung, t.id_User, t.ngayDang, t.idLoai, t.idGiaiDau,0);
                showMessage("Đăng bài thành công!");
                Response.Redirect("danhsachbaidang.aspx");
            }

        }

        protected void cbLoai_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void showMessage(string mess)
        {
            string strBuilder = "<script language='javascript'>alert('" + mess + "')</script>";
            Response.Write(strBuilder);
        }
        
    }
}