using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BongDaSo
{
    public class LoaiTinBLL
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        public String getLoaiTin(int id)
        {
            return dbc.LoaiTins.Where(l => l.id == id).FirstOrDefault().tenLoai;
        }
    }
}