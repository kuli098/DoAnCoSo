using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using DoAnCoSo1.Models;

namespace DoAnCoSo1.Controllers
{
    public class TintucMoinhatViewComponent : ViewComponent
    {
        DACSDBContext data = new DACSDBContext();

        public async Task<IViewComponentResult> InvokeAsync() {
            var tintucTop1 = (from tt in data.Tintuc select tt).OrderByDescending(tt => tt.Ngaydang);
            return View(tintucTop1.First());
        }
    }
}
