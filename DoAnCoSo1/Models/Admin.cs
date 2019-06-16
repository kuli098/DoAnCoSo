using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;

namespace DoAnCoSo1.Models
{
    public partial class Admin : IdentityUser<string>
    {
        public string AdminTaikhoan { get; set; }
        public string AdminPassword { get; set; }
    }
}
