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
    }
}