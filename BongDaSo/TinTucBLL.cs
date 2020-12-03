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

        public TinTuc getFisrt_5_typeNews()
        {
            return dbc.TinTucs.Where(t => t.idLoai == 5).OrderByDescending(t=>t.ngayDang).FirstOrDefault();
        }
        public List<TinTuc> getTop6LasterPost()
        {
            List<TinTuc> rs = new List<TinTuc>();
            List<TinTuc> list = new List<TinTuc>();
            list= dbc.TinTucs.OrderByDescending(t => t.ngayDang).OrderByDescending(t => t.gioDang).ToList();
            
            for(int i = 0; i <= 5; i++)
            {
                rs.Add(list.ElementAt(i));
            }
            return rs;
        }
        public List<TinTuc> getTop5LasterPost()
        {
            List<TinTuc> rs = new List<TinTuc>();
            List<TinTuc> list = new List<TinTuc>();
            list = dbc.TinTucs.OrderByDescending(t => t.ngayDang).OrderByDescending(t => t.gioDang).ToList();

            for (int i = 0; i <= 4; i++)
            {
                rs.Add(list.ElementAt(i));
            }
            return rs;
        }
        public List<TinTuc> getTop5PopularPost()
        {
            List<TinTuc> rs = new List<TinTuc>();
            List<TinTuc> list = new List<TinTuc>();
            list = dbc.TinTucs.OrderByDescending(t => t.luotXem).ToList();

            for (int i = 0; i <= 4; i++)
            {
                rs.Add(list.ElementAt(i));
            }
            return rs;
        }
    }
}