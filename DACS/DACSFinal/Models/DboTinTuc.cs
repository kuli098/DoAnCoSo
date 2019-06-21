using System;
using System.Collections.Generic;

namespace DACSFinal.Models
{
    public partial class DboTinTuc
    {
        public int MaTintuc { get; set; }
        public string TieuDe { get; set; }
        public string AnhBia { get; set; }
        public string NoiDung { get; set; }
        public string LoiMoDau { get; set; }
        public DateTime? NgayDang { get; set; }
        public string MaTheloai { get; set; }
        public bool? Duyet { get; set; }
        public string UserId { get; set; }

        public DboTheLoai MaTheloaiNavigation { get; set; }
        public AspNetUsers User { get; set; }
    }
}
