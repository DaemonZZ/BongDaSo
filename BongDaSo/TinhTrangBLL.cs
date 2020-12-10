using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BongDaSo
{
    
    public class TinhTrangBLL
    {
        BongDaSoDataContext dbc = new BongDaSoDataContext();
        public String getStt(int id)
        {
            return dbc.TinhTrangs.Where(p => p.id == id).FirstOrDefault().Status;
        }
    }
}