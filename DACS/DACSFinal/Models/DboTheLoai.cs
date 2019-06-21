using System;
using System.Collections.Generic;

namespace DACSFinal.Models
{
    public partial class DboTheLoai
    {
        public DboTheLoai()
        {
            DboTinTuc = new HashSet<DboTinTuc>();
        }

        public string MaTheloai { get; set; }
        public string TenTheloai { get; set; }

        public ICollection<DboTinTuc> DboTinTuc { get; set; }
    }
}
