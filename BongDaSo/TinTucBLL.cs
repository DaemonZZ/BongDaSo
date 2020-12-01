using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BongDaSo
{
    public class TinTucBLL
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();

        public TinTuc getfist()
        {
            return dbc.TinTucs.FirstOrDefault();

        }
        public TinTuc getFisrt_4_typeNews()
        {
            return dbc.TinTucs.Where(t => t.idLoai == 4).FirstOrDefault();
        }
    }
}