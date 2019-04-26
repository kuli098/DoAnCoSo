using System;
using System.Collections.Generic;

namespace DoAnCoSo1.Models
{
    public partial class Theloai
    {
        public Theloai()
        {
            Tintuc = new HashSet<Tintuc>();
        }

        public string MaTheloai { get; set; }
        public string TenTheloai { get; set; }

        public ICollection<Tintuc> Tintuc { get; set; }
    }
}
