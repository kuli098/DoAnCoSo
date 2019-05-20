using System;
using System.Collections.Generic;

namespace DoAnCoSo1.Models
{
    public partial class Tintuc
    {
        public int MaTintuc { get; set; }
        public string Tieude { get; set; }
        public string Noidung { get; set; }
        public string MaTheloai { get; set; }
        public DateTime? Ngaydang { get; set; }
        public string Anhbia { get; set; }

        public Theloai MaTheloaiNavigation { get; set; }
    }
}
